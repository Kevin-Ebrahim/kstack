#!/usr/bin/env bash
set -euo pipefail

if [[ ${1:-} == --help || ${1:-} == -h ]]; then
  printf 'Usage: %s\nConfigure Serena, Context7 and optionally Playwright for Codex.\n' "${0##*/}"
  exit 0
fi
if (( $# )); then
  printf 'Unexpected arguments. Use --help for usage.\n' >&2
  exit 2
fi

for dependency in codex uv npx node; do
  if ! command -v "$dependency" >/dev/null 2>&1; then
    printf 'Missing prerequisite: %s. Install it and rerun this script.\n' "$dependency" >&2
    exit 1
  fi
done
if ! node -e 'const [a,b] = process.versions.node.split(".").map(Number); process.exit(a > 22 || (a === 22 && b >= 13) ? 0 : 1)'; then
  printf 'Context7 requires Node.js 22.13 or newer.\n' >&2
  exit 1
fi
if [[ ! -t 0 || ! -t 1 ]]; then
  printf 'Run this script in a terminal to complete Context7 login.\n' >&2
  exit 1
fi

if ! command -v serena >/dev/null 2>&1; then
  printf 'Installing Serena with uv...\n'
  uv tool install -p 3.13 serena-agent
  export PATH="$(uv tool dir --bin):$PATH"
fi

if codex mcp get serena >/dev/null 2>&1; then
  printf 'Serena is already registered in Codex; leaving its configuration unchanged.\n'
else
  codex mcp add serena -- "$(command -v serena)" start-mcp-server --project-from-cwd --context=codex
fi

printf '\nContext7 will open a login flow and configure Codex.\n'
printf 'Press Enter to continue, or Ctrl+C to stop. '
read -r
npx -y ctx7 setup --codex --mcp --stdio -y

if codex mcp get playwright >/dev/null 2>&1; then
  printf '\nPlaywright is already registered in Codex; leaving its configuration unchanged.\n'
else
  printf '\nAdd Playwright MCP for browser automation? [y/N] '
  read -r answer
  if [[ $answer == [yY] || $answer == [yY][eE][sS] ]]; then
    codex mcp add playwright -- npx -y @playwright/mcp@latest
  fi
fi

printf '\nSetup complete. Restart Codex and check /mcp for the configured servers.\n'
printf 'In the Codex app, ask the agent to activate the current project with Serena if needed.\n'
