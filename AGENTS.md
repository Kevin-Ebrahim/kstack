# Git and repository hosting

## Repository hosting

- Check the configured Git remotes to identify the hosting provider; do not infer it from a directory name.
- For GitHub, use `gh` for hosting operations when available. If it is missing, attempt a local, non-privileged installation. If authentication is required, prompt me to log in; If installation or authentication is blocked, explain the blocker.

## Working with changes

- Inspect the working tree and both staged and unstaged changes before committing. Preserve pre-existing and unrelated work, including changes already staged.
- Commit after each meaningful progression point: a coherent, reviewable unit of the requested work. Use judgment to avoid commits for every minor edit, and follow any task-specific instruction about when to commit. Selectively stage the relevant, reviewed changes, and inspect the final staged diff for unrelated changes, secrets, and accidental artifacts. Do not include secrets in commits.
- Make coherent commits: group changes by purpose and split independent work when useful. Run checks appropriate to the changes and report their results.
- Do not push unless asked. A request to create a pull request authorizes pushing the branch needed for it, but does not authorize merging it.
- Avoid destructive Git operations or rewriting shared history without explicit permission. Ask before discarding anyone's changes.

## Commit subjects

Use a bracketed prefix followed by a concise, imperative description. Approved prefixes and examples:

```text
[feat] add event eligibility display
[fix] handle denied geolocation permission
[test] cover stale location response state
[docs] document Sprint 1 player journey
[perf] reduce Battles landing requests
[ci] enforce API-first Battles releases
[refactor] isolate event status presentation
[chore] configure front-end quality checks
[perf] strengthen api
```

# Global AGENTS.md

## Personal file and folder naming

- For personal folders directly under the home directory, capitalise each word and separate words with hyphens, for example `Personal-Projects`.
- For personal subfolders, use lowercase names with hyphens between words, for example `computer-graphics` and `screenshots`. Prefer clear lowercase, hyphen-separated names for personal files too.
- Preserve names required by operating systems, apps, projects, and existing integrations. Follow repository-specific conventions for project contents. Before renaming existing items, check and maintain dependent paths and avoid overwriting files.

## Serena project workflow

- At the start of a coding task, call Serena's `initial_instructions` tool if available, then activate the repository root with `activate_project` and inspect `get_current_config`. Do not assume the active project is the correct one.
- If the project needs configuration, inspect the repository and existing Serena settings first. Create the project with `serena project create` from its root if necessary; preserve existing configuration, select relevant languages, and use local overrides for machine-specific settings. Do not install dependencies or run full indexing automatically when they are unnecessary.
- Verify the setup with an actual `find_symbol` or `get_symbols_overview` lookup on a representative source file. If the lookup fails, investigate the language server and report any remaining blocker; a `ready` status alone is not verification.
- For code exploration, use symbol overviews and lookups to find relevant definitions, then reference or implementation lookups to trace their use. Use Serena's symbol-aware editing and refactoring tools where appropriate, and review changes and run relevant tests.
- Onboard established projects when useful, keeping project memories concise and grounded in the repository. Update memories when explicitly requested or when otherwise authorized, and keep them current after significant architecture or workflow changes. Avoid recording transient task details.
- Use ordinary search, shell commands, and tests as appropriate. Full indexing is optional, particularly useful for larger projects. If Serena is unavailable, continue with available tools and report any setup, dependency, permission, or restart blocker.
