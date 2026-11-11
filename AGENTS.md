# Global AGENTS.md

<!--toc:start-->

- [Global AGENTS.md](#global-agentsmd)
  - [Git and repository hosting](#git-and-repository-hosting)
  - [Working with changes](#working-with-changes)
  - [Commit subjects](#commit-subjects)
  - [Personal file and folder naming](#personal-file-and-folder-naming)
  - [Serena project workflow](#serena-project-workflow)

<!--toc:end-->

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

## Personal file and folder naming

- For personal folders directly under the home directory, capitalise each word and separate words with hyphens, for example `Personal-Projects`.
- For personal subfolders, use lowercase names with hyphens between words, for example `computer-graphics` and `screenshots`. Prefer clear lowercase, hyphen-separated names for personal files too.
- Preserve names required by operating systems, apps, projects, and existing integrations. Follow repository-specific conventions for project contents. Before renaming existing items, check and maintain dependent paths and avoid overwriting files.

## Serena project workflow

- Set up and use Serena only for large codebases. Do not set it up or use it for small or medium-sized codebases.
- Treat a codebase as large at roughly 50,000 or more lines of source code. This is a practical guideline, not an official Serena benchmark; consider complexity when judging borderline cases.
- Check the repository from its root with `tokei .` when available, excluding generated, vendored and dependency code from the estimate. `git ls-files | wc -l` gives a quick tracked-file count, but is not a source line count. Do not install tools solely to make this check.
- For coding tasks in large codebases, call `initial_instructions`, activate the repository root and check `get_current_config` when Serena is available.
- If needed, inspect existing settings and create the project with `serena project create`. Configure relevant languages and language servers, preserving existing settings and using local overrides for machine-specific ones. Indexing is optional.
- Use Serena's symbol, reference and refactoring tools where useful, alongside ordinary search, shell commands and tests.
- Onboard established projects when useful. Keep project memories concise and grounded; update them when requested or otherwise authorized, including after significant architecture or workflow changes.
