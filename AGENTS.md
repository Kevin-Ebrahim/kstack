# Global AGENTS.md

## General

- Follow applicable project-level `AGENTS.md` instructions and established repository conventions.

## Git and repository hosting

- Name branches `<type>/<issue-or-task>` using lowercase, hyphen-separated descriptions; include an issue number when available.
- Identify the hosting provider from the configured Git remotes.
- For GitHub operations, use `gh`; if missing, attempt a local, non-privileged installation. Ask me to log in if needed, and explain installation or authentication blockers.
- Commit coherent, reviewable milestones, following any task-specific timing instructions.
- Before committing, inspect staged and unstaged changes, preserve unrelated work, and review the selectively staged diff for secrets and accidental artifacts.
- Never push unless requested. Creating a PR authorizes pushing its branch, not merging.
- Ask permission before destructive Git operations, rewriting shared history, or discarding changes.

## Pull requests

- Reuse existing PRs for the same branch rather than creating duplicates.
- Check for relevant open issues. Use `Closes #123` when resolved or `Refs #123` when related.
- Before creating or updating a PR, sync with the latest target branch, resolve conflicts, and rerun relevant checks.
- Keep PR descriptions concise and proportional to the change.
- Use draft PRs for incomplete work.

## Commit messages

Use `[type] concise imperative description`. Choose the most appropriate prefix.

```text
[feat]      new functionality
[fix]       bug fixes
[hotfix]    urgent production fixes
[ui]        visual interface changes
[ux]        interaction improvements
[refactor]  structural changes without behavior changes
[perf]      performance improvements
[style]     formatting-only changes
[test]      tests and coverage
[ci]        CI/CD workflows
[security]  security improvements
[build]     build system and tooling
[config]    configuration changes
[db]        database changes
[infra]     infrastructure changes
[docs]      documentation
[chore]     routine maintenance
[cleanup]   removal of obsolete code or files
[release]   version releases
[revert]    reverted changes
```

Keep subjects specific and concise. Add a commit body when the reasoning, tradeoffs, or implications need explanation.

## File and folder naming

- Personal directories directly under `~`: capitalized words separated by hyphens (`Personal-Projects`).
- Personal subdirectories and files: lowercase, hyphen-separated names (`computer-graphics`).
- Preserve names required by operating systems, apps, projects, and existing integrations.
- Follow repository-specific conventions for project contents. Before renaming existing items, check and maintain dependent paths and avoid overwriting files.

## Serena project workflow

- Use Serena only for large or complex codebases (approximately 50,000+ source lines). Consider architectural complexity, not just size.
- Estimate size with `tokei .` when available, excluding dependencies and generated code. Do not install tools solely for this check.
- For qualifying projects, call `initial_instructions`, activate the repository root, and check `get_current_config`.
- If setup is needed, use `serena project create`. Preserve existing settings and configure relevant languages and language servers.
- Prefer Serena for symbol navigation, references, and refactoring where useful; supplement with standard search, shell tools, and tests.
- Onboard established projects when beneficial. Keep memories concise, accurate, and updated after significant changes when authorized.

## Context7
Use Context7 for current library, framework, SDK, API, CLI, and cloud service documentation, including setup, configuration, migrations, and API-specific debugging. Prefer it to web search, even for familiar tools. Skip it for general programming concepts and code work unrelated to library or platform APIs.

1. Call `resolve-library-id` with the library and query unless given an exact `/org/project` ID. Choose the best match by relevance, reputation, snippets, and benchmark score; prefer the requested version.
2. Call `query-docs` with a focused query per concept; combine concepts only when asking how they interact. Answer using the results.
3. If docs lack an exact answer and `query-code` is available, use a source-enabled ID. Start with `grep` or `definition`, then read the indicated range. Pass a git tag for a version and stop after six calls. If indexing is pending, retry every 30 seconds for up to three minutes, then fall back to docs; retries do not count toward the limit. Cite source file and line.
