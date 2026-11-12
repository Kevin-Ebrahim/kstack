# Global AGENTS.md

## Git and repository hosting

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
# Features and functionality
[feat] add event eligibility display
[fix] handle denied geolocation permission
[hotfix] restore broken authentication redirect

# Interface and experience
[ui] redesign battle results screen
[ux] simplify player onboarding flow

# Code quality and architecture
[refactor] isolate event status presentation
[perf] reduce unnecessary battle API requests
[style] normalize component formatting

# Testing and reliability
[test] cover stale location response state
[ci] enforce API-first battle releases

# Security
[security] validate session token expiration

# Dependencies and build
[build] optimize production bundle splitting
[config] configure API request timeouts

# Database and infrastructure
[db] index event eligibility lookups
[infra] configure staging environment

# Documentation and maintenance
[docs] document player journey
[chore] remove unused development scripts
[cleanup] remove obsolete battle components

# Releases and history
[release] prepare version 1.2.0
[revert] revert location caching changes
```

When a change needs explanation, add a commit body describing why it was necessary and any important details

## Personal file and folder naming

- For personal folders directly under the home directory, capitalise each word and separate words with hyphens, for example `Personal-Projects`.
- For personal subfolders, use lowercase names with hyphens between words, for example `computer-graphics` and `screenshots`. Prefer clear lowercase, hyphen-separated names for personal files too.
- Preserve names required by operating systems, apps, projects, and existing integrations. Follow repository-specific conventions for project contents. Before renaming existing items, check and maintain dependent paths and avoid overwriting files.

## Serena project workflow

- Use Serena only for large or complex codebases (approximately 50,000+ source lines). Consider architectural complexity, not just size.
- Estimate size with `tokei .` when available, excluding dependencies and generated code. Do not install tools solely for this check.
- For qualifying projects, call `initial_instructions`, activate the repository root, and check `get_current_config`.
- If setup is needed, use `serena project create`. Preserve existing settings and configure relevant languages and language servers.
- Prefer Serena for symbol navigation, references, and refactoring where useful; supplement with standard search, shell tools, and tests.
- Onboard established projects when beneficial. Keep memories concise, accurate, and updated after significant changes when authorized.
