# Setup

Run the commands from the kstack checkout.

## Install and update

Preview both install destinations with `./scripts/install.sh --dry-run`.
The installer links skills into `~/.agents/skills` and links `AGENTS.md` into `~/.codex/AGENTS.md`. If you set `CODEX_HOME`, it uses `$CODEX_HOME/AGENTS.md`.

Pass a skills directory to change the first destination. Pass a second path to change where the installer links `AGENTS.md`.

```bash
./scripts/install.sh /path/to/skills /path/to/AGENTS.md
```

If the destination contains another `AGENTS.md`, the installer moves it to `AGENTS.md.kstack-backup` before creating the link. If it would overwrite a backup, it stops before creating any links.

Changes to linked skills take effect from the checkout. Rerun your install command after adding skills. The installer reuses matching links, skips conflicting skill entries, and exits with an error if it finds any conflicts.

After updating the checkout that supplies your installed links, preview retired links with `./scripts/uninstall.sh --stale-only --dry-run`, then remove them with `./scripts/uninstall.sh --stale-only`. If you installed to a custom skills directory, pass it to both commands.

## Matt Pocock

Install the published plugin once for your Codex user account.

```bash
codex plugin marketplace add mattpocock/skills
codex plugin add mattpocock-skills@mattpocock
```

Open a new Codex session and try `$mattpocock-skills:ask-matt` to choose a workflow. In a project where you want to use Matt’s engineering workflow, run `$mattpocock-skills:setup-matt-pocock-skills` to configure its issue tracker, triage labels, and documentation paths. [Upstream guide](https://github.com/mattpocock/skills#installation-30-second-setup)

Use `$grill` for kstack’s focused interview and `$code-review` for its two-reviewer workflow. Matt’s versions are available as `$mattpocock-skills:grill-me` and `$mattpocock-skills:code-review`.

## Impeccable

Install the upstream design skill globally for Codex:

```bash
npx impeccable install --providers=codex --scope=global
```

Open a new Codex session and use `$impeccable` to see its commands. Use `$impeccable critique` for a UX review or `$impeccable polish` for a final design pass. [Impeccable documentation](https://impeccable.style/docs)

## Emil Kowalski

Run this from the root of a UI project to install the full library at project scope.

```bash
npx skills@latest add emilkowalski/skills --agent codex --skill '*' --yes
```

Open a new Codex session and use `$ask-emil` to choose a motion or UI workflow. Use `$prototype` for Emil’s UI variants and `$mattpocock-skills:prototype` for Matt’s engineering prototypes. [Emil’s skill guide](https://aiforui.dev/skills)

## Uninstall skills

Preview removal with `./scripts/uninstall.sh --dry-run`, then run `./scripts/uninstall.sh`. If you installed to a custom skills directory, pass that directory to both commands.

The uninstaller removes only skill symlinks that point into this checkout. To remove the global instructions, check that the destination `AGENTS.md` points to this checkout before removing the link. If you have an `AGENTS.md.kstack-backup`, move it back to `AGENTS.md`.

## Set up optional MCP servers

Install Codex, `uv`, and Node.js 22.13 or newer with `npx`. [uv installation guide](https://docs.astral.sh/uv/)

Run `./scripts/setup-mcp.sh` in a terminal. The script installs Serena if needed, starts the Context7 login, and asks whether to register Playwright. It reuses existing Serena and Playwright registrations.

Restart Codex and run `/mcp` to check the registrations. Serena language servers and Playwright browsers may need extra setup.

If you registered all three servers, run `./scripts/remove-mcp.sh` to remove them. To remove one registration, pass `serena`, `context7`, or `playwright`. Restart Codex after removal.
