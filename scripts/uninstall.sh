#!/usr/bin/env bash
set -euo pipefail

usage() {
  printf 'Usage: %s [--dry-run] [--stale-only] [skills-directory]\n' "${0##*/}"
  printf 'Remove kstack symlinks from ~/.agents/skills (or skills-directory).\n'
  printf 'Only matching links to this checkout are removed.\n'
  printf 'Use --stale-only to remove links whose source no longer contains SKILL.md.\n'
}

dry_run=false
stale_only=false
while [[ ${1:-} == -* ]]; do
  case "$1" in
    --help|-h) usage; exit 0 ;;
    --dry-run) dry_run=true ;;
    --stale-only) stale_only=true ;;
    *) usage >&2; exit 2 ;;
  esac
  shift
done
if (( $# > 1 )); then
  usage >&2
  exit 2
fi

script_path=$(realpath -- "${BASH_SOURCE[0]}")
repo_dir=$(dirname -- "$(dirname -- "$script_path")")
destination=${1:-"$HOME/.agents/skills"}
if [[ -e $destination || -L $destination ]] && [[ ! -d $destination ]]; then
  printf 'Destination is not a directory: %s\n' "$destination" >&2
  exit 1
fi

shopt -s nullglob
removed=0
for target in "$destination"/*; do
  [[ -L $target ]] || continue
  if "$stale_only" && [[ -f $target/SKILL.md ]]; then
    continue
  fi
  name=${target##*/}
  source_dir=$repo_dir/skills/$name
  # Exact targets also identify stale links to skills removed from this checkout.
  if [[ $(readlink -- "$target") == "$source_dir" || $target -ef $source_dir ]]; then
    if "$dry_run"; then
      printf 'Would remove: %s\n' "$target"
    else
      unlink -- "$target"
      printf 'Removed: %s\n' "$target"
    fi
    removed=$((removed + 1))
  fi
done

if "$dry_run"; then
  printf 'Dry run: %d links to remove.\n' "$removed"
else
  printf 'Uninstalled: %d links removed.\n' "$removed"
fi
