#!/usr/bin/env bash
set -euo pipefail

usage() {
  printf 'Usage: %s [--dry-run] [skills-directory]\n' "${0##*/}"
  printf 'Symlink kstack skills into ~/.agents/skills (or skills-directory).\n'
  printf 'Existing files, directories, and conflicting symlinks are preserved.\n'
}

dry_run=false
case "${1:-}" in
  --help|-h) usage; exit 0 ;;
  --dry-run) dry_run=true; shift ;;
esac
if (( $# > 1 )) || [[ ${1:-} == -* ]]; then
  usage >&2
  exit 2
fi

script_path=$(realpath -- "${BASH_SOURCE[0]}")
repo_dir=$(dirname -- "$script_path")
destination=${1:-"$HOME/.agents/skills"}
shopt -s nullglob
skill_files=("$repo_dir"/skills/*/SKILL.md)
if (( ${#skill_files[@]} == 0 )); then
  printf 'No skills found in %s/skills\n' "$repo_dir" >&2
  exit 1
fi

if [[ -e $destination || -L $destination ]] && [[ ! -d $destination ]]; then
  printf 'Destination is not a directory: %s\n' "$destination" >&2
  exit 1
fi
if ! "$dry_run"; then
  mkdir -p -- "$destination"
fi

linked=0
unchanged=0
conflicts=0
for skill_file in "${skill_files[@]}"; do
  source_dir=${skill_file%/SKILL.md}
  name=${source_dir##*/}
  target=$destination/$name

  if [[ -L $target && $target -ef $source_dir ]]; then
    unchanged=$((unchanged + 1))
  elif [[ -e $target || -L $target ]]; then
    printf 'Skipped conflict: %s\n' "$target" >&2
    conflicts=$((conflicts + 1))
  else
    if "$dry_run"; then
      printf 'Would link: %s -> %s\n' "$target" "$source_dir"
    else
      ln -sT -- "$source_dir" "$target"
      printf 'Linked: %s\n' "$target"
    fi
    linked=$((linked + 1))
  fi
done

if "$dry_run"; then
  printf 'Dry run: %d to link, %d already linked, %d conflicts.\n' "$linked" "$unchanged" "$conflicts"
else
  printf 'Installed: %d linked, %d already linked, %d conflicts.\n' "$linked" "$unchanged" "$conflicts"
fi
(( conflicts == 0 ))
