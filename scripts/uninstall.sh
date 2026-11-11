#!/usr/bin/env bash
set -euo pipefail

usage() {
  printf 'Usage: %s [--dry-run] [skills-directory]\n' "${0##*/}"
  printf 'Remove kstack symlinks from ~/.agents/skills (or skills-directory).\n'
  printf 'Only matching links to this checkout are removed.\n'
}

dry_run=false
case "${1:-}" in
  --help|-h) usage; exit 0 ;;
  --dry-run) dry_run=true; shift ;;
esac
if (( $# > 1 )) || [[ ${1:-} == -* ]]; then
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
