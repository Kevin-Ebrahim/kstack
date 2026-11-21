# Setup

## Install kstack

Run `./scripts/install.sh --dry-run` from the kstack checkout to preview the install. Run `./scripts/install.sh` to apply it.

The installer links skills into `~/.agents/skills` and links `AGENTS.md` into `~/.codex/AGENTS.md`. If you set `CODEX_HOME`, it uses `$CODEX_HOME/AGENTS.md`. To override either default, pass the skills directory first and the instructions file second.

```bash
./scripts/install.sh /path/to/skills /path/to/AGENTS.md
```

The installer reuses matching symlinks. A conflicting skill name or backup stops the install before it writes any links. The installer moves any prior instructions file to `AGENTS.md.kstack-backup` before linking kstack's copy.

You can also ask Codex to read a skill's `SKILL.md` directly from the checkout.

## Upgrade an existing install

Update the kstack checkout your symlinks point to. From that checkout, preview which links the upgrade will retire.

```bash
./scripts/uninstall.sh --stale-only --dry-run
```

After checking the list, remove the retired links and run the installer to link any new skills.

```bash
./scripts/uninstall.sh --stale-only
./scripts/install.sh
```

If you used custom install paths, pass the same paths as before. The uninstall commands take just the skills directory.

## Optional upstream libraries

Add the flags for the libraries you want. This example previews all three. Replace the sample path with the root of your UI project.

```bash
./scripts/install.sh --dry-run --with-matt-pocock --with-impeccable \
  --with-emil /path/to/ui-project
```

Review the commands and destinations, then drop `--dry-run` to install. Impeccable and Matt's plugin install globally. Emil's skills go into the project you passed to `--with-emil`. Open a new Codex session after installation.

Use the commands below to install each library on its own.

## Matt Pocock

```bash
codex plugin marketplace add mattpocock/skills
codex plugin add mattpocock-skills@mattpocock
```

Try `$mattpocock-skills:ask-matt` to choose a workflow. To set up ticketing and project docs, run `$mattpocock-skills:setup-matt-pocock-skills` in the project. [Matt's setup guide](https://github.com/mattpocock/skills#installation-30-second-setup)

Use `$grill` and `$code-review` for kstack's versions. Use `$mattpocock-skills:grill-me` and `$mattpocock-skills:code-review` for Matt's.

## Impeccable

```bash
npx impeccable install --providers=codex --scope=global
```

Use `$impeccable` to see its commands or `$impeccable critique` to review an interface. [Impeccable documentation](https://impeccable.style/docs)

## Emil Kowalski

Run this from the root of your UI project.

```bash
npx skills@latest add emilkowalski/skills --agent codex --skill '*' --yes
```

Use `$ask-emil` to choose a workflow. Use `$prototype` for Emil's UI variants and `$mattpocock-skills:prototype` for Matt's engineering prototypes. [Emil's skill guide](https://aiforui.dev/skills)

## Uninstall skills

Run `./scripts/uninstall.sh --dry-run` to see which kstack links the script will remove. Run `./scripts/uninstall.sh` to remove them. Pass the skills directory if you installed to a custom path.

To remove kstack's global instructions, first check that the destination `AGENTS.md` links to this checkout. Remove the symlink and, if you have an `AGENTS.md.kstack-backup`, move the backup back to `AGENTS.md`. Use each upstream library's own tools to manage its installation.

## Set up optional MCP servers

Install Codex, `uv`, and Node.js 22.13 or newer with `npx`. [uv installation guide](https://docs.astral.sh/uv/)

Run `./scripts/setup-mcp.sh` in a terminal. The script installs Serena if needed, starts the Context7 login, and asks whether to register Playwright. It reuses existing Serena and Playwright registrations.

Restart Codex and run `/mcp` to check the registrations. Serena language servers and Playwright browsers may need extra setup.

If you registered all three servers, run `./scripts/remove-mcp.sh` to remove them. To remove one registration, pass `serena`, `context7`, or `playwright`. Restart Codex after removal.
