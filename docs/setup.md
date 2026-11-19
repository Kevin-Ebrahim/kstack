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

## Uninstall skills

Preview removal with `./scripts/uninstall.sh --dry-run`, then run `./scripts/uninstall.sh`. If you installed to a custom skills directory, pass that directory to both commands.

The uninstaller removes only skill symlinks that point into this checkout. To remove the global instructions, check that the destination `AGENTS.md` points to this checkout before removing the link. If you have an `AGENTS.md.kstack-backup`, move it back to `AGENTS.md`.

## Set up optional MCP servers

Install Codex, `uv`, and Node.js 22.13 or newer with `npx`. [uv installation guide](https://docs.astral.sh/uv/)

Run `./scripts/setup-mcp.sh` in a terminal. The script installs Serena if needed, starts the Context7 login, and asks whether to register Playwright. It reuses existing Serena and Playwright registrations.

Restart Codex and run `/mcp` to check the registrations. Serena language servers and Playwright browsers may need extra setup.

If you registered all three servers, run `./scripts/remove-mcp.sh` to remove them. To remove one registration, pass `serena`, `context7`, or `playwright`. Restart Codex after removal.
