#!/usr/bin/env bash
set -euo pipefail

usage() {
  printf 'Usage: %s [serena|context7|all]\n' "${0##*/}"
  printf 'Remove Codex MCP registrations (default: all).\n'
}

case "${1:-all}" in
  -h|--help) usage; exit 0 ;;
  serena|context7|all) ;;
  *) usage >&2; exit 2 ;;
esac
if (( $# > 1 )); then usage >&2; exit 2; fi
if ! command -v codex >/dev/null 2>&1; then
  printf 'Missing prerequisite: codex. Install it and rerun this script.\n' >&2
  exit 1
fi

case "${1:-all}" in
  serena) codex mcp remove serena ;;
  context7) codex mcp remove context7 ;;
  all)
    codex mcp remove serena
    codex mcp remove context7
    ;;
esac
printf 'Restart Codex to apply the change. Installed tools, skills and login data remain.\n'
