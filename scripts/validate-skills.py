#!/usr/bin/env python3
"""Validate imported skill packages and their pinned upstream provenance."""

import hashlib
import json
import re
import sys
from pathlib import Path
from urllib.parse import unquote, urlsplit

try:
    import yaml
except ImportError:
    raise SystemExit('PyYAML is required to validate skill frontmatter.')

ROOT = Path(__file__).resolve().parent.parent
LINK = re.compile(r'(?<=\]\()([^\s)]+)(?=\))')
NAME = re.compile(r'[a-z0-9]+(?:-[a-z0-9]+)*')


def sha256(data):
    return hashlib.sha256(data).hexdigest()


def git_blob(data):
    return hashlib.sha1(b'blob ' + str(len(data)).encode() + b'\0' + data).hexdigest()


def validate():
    manifest = json.loads((ROOT / 'upstream.json').read_text())
    errors = []
    if manifest.get('schema_version') != 1:
        errors.append('Unsupported manifest schema version')
    expected_files = set()
    expected_entrypoints = set()
    seen_names = set()

    for skill in manifest['skills']:
        directory = ROOT / skill['directory']
        entrypoint = directory / 'SKILL.md'
        expected_entrypoints.add(entrypoint)
        name = skill['name']
        if name in seen_names:
            errors.append(f'Duplicate skill: {name}')
        seen_names.add(name)
        if directory.name != name or not NAME.fullmatch(name) or len(name) > 64:
            errors.append(f'Invalid skill name or folder: {name}')
        source = manifest['sources'][skill['source']]
        if not re.fullmatch(r'[0-9a-f]{40}', source['commit']):
            errors.append(f'Unpinned source: {skill["source"]}')

        if entrypoint.is_file():
            match = re.match(r'^---\n(.*?)\n---(?:\n|$)', entrypoint.read_text(), re.S)
            if not match:
                errors.append(f'{name}: missing frontmatter')
            else:
                try:
                    header = yaml.safe_load(match.group(1))
                    if not isinstance(header, dict) or header.get('name') != name:
                        errors.append(f'{name}: frontmatter name mismatch')
                    elif not isinstance(header.get('description'), str) or not header['description'].strip():
                        errors.append(f'{name}: missing description')
                    elif 'disable-model-invocation' in header and not isinstance(header['disable-model-invocation'], bool):
                        errors.append(f'{name}: invalid upstream invocation setting')
                except yaml.YAMLError as exc:
                    errors.append(f'{name}: invalid YAML: {exc}')

        for record in skill['files']:
            path = directory / record['path']
            expected_files.add(path)
            if not path.is_file():
                errors.append(f'Missing file: {path.relative_to(ROOT)}')
                continue
            raw = path.read_bytes()
            text = raw.decode('utf-8')
            if record.get('mode') == '100755' and not path.stat().st_mode & 0o111:
                errors.append(f'Missing executable permission: {path.relative_to(ROOT)}')
            if sha256(raw) != record['sha256']:
                errors.append(f'Imported checksum mismatch: {path.relative_to(ROOT)}')
            reverse = {change['to']: change['from'] for change in record['link_rewrites']}
            restored = LINK.sub(lambda m: reverse.get(m.group(1), m.group(1)), text)
            for edit in reversed(record.get('text_edits', [])):
                if edit['to'] == '':
                    offset = edit['offset']
                    restored = restored[:offset] + edit['from'] + restored[offset:]
                    continue
                if edit['to'] not in restored:
                    errors.append(f'Missing recorded adaptation: {path.relative_to(ROOT)}')
                restored = restored.replace(edit['to'], edit['from'])
            original = restored.encode()
            if sha256(original) != record['upstream_sha256'] or git_blob(original) != record['upstream_git_blob']:
                errors.append(f'Upstream reconstruction mismatch: {path.relative_to(ROOT)}')

    noticed_sources = set()
    for notice in manifest['notices']:
        path = ROOT / notice['path']
        marker = '## ' + notice['section'] + '\n\n'
        if not path.is_file() or marker not in path.read_text():
            errors.append(f'Missing upstream notice: {notice["source"]}')
            continue
        noticed_sources.add(notice['source'])
        content = path.read_text().split(marker, 1)[1].split('\n## ', 1)[0].rstrip() + '\n'
        raw = content.encode()
        if sha256(raw) != notice['upstream_sha256'] or git_blob(raw) != notice['upstream_git_blob']:
            errors.append(f'Upstream notice mismatch: {notice["source"]}')
    if noticed_sources != set(manifest['sources']):
        errors.append('Upstream notices do not cover all sources')

    actual_entrypoints = set((ROOT / 'skills').rglob('SKILL.md'))
    if actual_entrypoints != expected_entrypoints:
        errors.append('Skill entry points do not match the manifest')
    actual_files = {p for p in (ROOT / 'skills').rglob('*') if p.is_file()}
    for path in sorted(actual_files - expected_files):
        errors.append(f'File missing from manifest: {path.relative_to(ROOT)}')

    # Only explicit Markdown links are checked; prose mentions are documented in README.
    catalog_links = set()
    for path in [*sorted(ROOT.glob('*.md')), *sorted((ROOT / 'skills').rglob('*.md'))]:
        for match in LINK.finditer(path.read_text()):
            target = urlsplit(match.group(1))
            if target.scheme or target.netloc or not target.path:
                continue
            resolved = (path.parent / unquote(target.path)).resolve()
            if path == ROOT / 'README.md':
                catalog_links.add(resolved)
            if not resolved.is_relative_to(ROOT) or not resolved.exists():
                errors.append(f'{path.relative_to(ROOT)}: broken local link {match.group(1)}')
    for entrypoint in sorted(expected_entrypoints - catalog_links):
        errors.append(f'Skill missing from README catalog: {entrypoint.relative_to(ROOT)}')

    if errors:
        print('\n'.join(errors), file=sys.stderr)
        return 1
    print(f'Validated {len(seen_names)} skills, {len(expected_files)} imported files, and {len(noticed_sources)} source notices: metadata, local links, checksums, and upstream Git blobs.')
    return 0


if __name__ == '__main__':
    sys.exit(validate())
