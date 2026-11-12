# Global AGENTS.md

## General

- Follow applicable project-level `AGENTS.md` instructions and established repository conventions.

## Git and repository hosting

- Check the configured Git remotes to identify the hosting provider; do not infer it from a directory name.
- For GitHub, use `gh` for hosting operations when available. If it is missing, attempt a local, non-privileged installation.
  - If authentication is required, prompt me to log in; If installation or authentication is blocked, explain the blocker.
- Inspect the working tree, including staged and unstaged changes, before committing. Preserve unrelated and pre-existing work.
- Commit at meaningful milestones: coherent, reviewable units of work.
  - Use judgment to avoid commits for every minor edit, and follow any task-specific instruction about when to commit.
- Stage changes selectively and review the staged diff for unrelated files, secrets, and accidental artifacts.
- Never push unless requested. Creating a PR authorizes pushing its branch, not merging.
- Avoid destructive Git operations or rewriting shared history without explicit permission. Ask before discarding anyone's changes.

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
