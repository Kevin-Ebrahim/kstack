#!/usr/bin/env bash
set -euo pipefail

usage() {
  printf 'Usage: %s [options] [skills-directory] [agents-file]\n' "${0##*/}"
  printf 'Symlink kstack skills into ~/.agents/skills (or skills-directory).\n'
  printf 'Link AGENTS.md into ${CODEX_HOME:-~/.codex}/AGENTS.md (or agents-file).\n'
  printf 'Skill name conflicts stop the install before it writes any links.\n'
  printf '\nOptions:\n'
  printf '  --dry-run            Preview link changes and upstream commands.\n'
  printf '  --upgrade            Also remove retired skill links from this checkout.\n'
  printf '  --with-impeccable    Install Impeccable globally for Codex.\n'
  printf '  --with-matt-pocock   Install Matt Pocock’s Codex plugin.\n'
  printf '  --with-emil DIR      Install Emil Kowalski’s skills in project DIR.\n'
}

dry_run=false
upgrade=false
with_impeccable=false
with_matt_pocock=false
emil_project=
while [[ ${1:-} == -* ]]; do
  case "$1" in
    --help|-h) usage; exit 0 ;;
    --dry-run) dry_run=true ;;
    --upgrade) upgrade=true ;;
    --with-impeccable) with_impeccable=true ;;
    --with-matt-pocock) with_matt_pocock=true ;;
    --with-emil)
      if [[ -z ${2:-} || $2 == -* ]]; then
        printf 'Pass a project directory after --with-emil.\n' >&2
        exit 2
      fi
      emil_project=$2
      shift
      ;;
    *) usage >&2; exit 2 ;;
  esac
  shift
done
if (( $# > 2 )); then
  usage >&2
  exit 2
fi

if [[ -n $emil_project ]]; then
  if [[ ! -d $emil_project ]]; then
    printf 'Emil project directory does not exist: %s\n' "$emil_project" >&2
    exit 1
  fi
  emil_project=$(realpath -- "$emil_project")
fi

if ! "$dry_run"; then
  if { "$with_impeccable" || [[ -n $emil_project ]]; } && ! command -v npx >/dev/null; then
    printf 'npx is required to install Impeccable or Emil Kowalski’s skills.\n' >&2
    exit 1
  fi
  if "$with_matt_pocock" && ! command -v codex >/dev/null; then
    printf 'The Codex CLI is required to install Matt Pocock’s plugin.\n' >&2
    exit 1
  fi
fi

script_path=$(realpath -- "${BASH_SOURCE[0]}")
repo_dir=$(dirname -- "$(dirname -- "$script_path")")
destination=${1:-"$HOME/.agents/skills"}
agents_file=${2:-"${CODEX_HOME:-$HOME/.codex}/AGENTS.md"}
agents_backup=$agents_file.kstack-backup
if [[ ! -f $repo_dir/AGENTS.md ]]; then
  printf 'Missing source: %s/AGENTS.md\n' "$repo_dir" >&2
  exit 1
fi
if [[ ! -L $agents_file || ! $agents_file -ef $repo_dir/AGENTS.md ]]; then
  if [[ -d $agents_file && ! -L $agents_file ]]; then
    printf 'AGENTS.md destination is a directory: %s\n' "$agents_file" >&2
    exit 1
  fi
  if [[ -e $agents_file || -L $agents_file ]] && [[ -e $agents_backup || -L $agents_backup ]]; then
    printf 'Existing backup would be overwritten: %s\n' "$agents_backup" >&2
    exit 1
  fi
fi
shopt -s nullglob
skill_files=("$repo_dir"/skills/*/SKILL.md)
if (( ${#skill_files[@]} == 0 )); then
  printf 'No skills found in %s/skills\n' "$repo_dir" >&2
  exit 1
fi

if [[ -e $destination || -L $destination ]] && [[ ! -d $destination ]]; then
  printf 'Destination is not a directory: %s\n' "$destination" >&2
  exit 1
fi
new_skills=()
unchanged=0
has_conflicts=false
for skill_file in "${skill_files[@]}"; do
  source_dir=${skill_file%/SKILL.md}
  name=${source_dir##*/}
  target=$destination/$name

  if [[ -L $target && $target -ef $source_dir ]]; then
    unchanged=$((unchanged + 1))
  elif [[ -e $target || -L $target ]]; then
    printf 'Skill name conflict: %s\n' "$target" >&2
    has_conflicts=true
  else
    new_skills+=("$source_dir")
  fi
done
if "$has_conflicts"; then
  exit 1
fi

if ! "$dry_run"; then
  mkdir -p -- "$destination"
fi
for source_dir in "${new_skills[@]}"; do
  target=$destination/${source_dir##*/}
  if "$dry_run"; then
    printf 'Would link: %s -> %s\n' "$target" "$source_dir"
  else
    ln -sT -- "$source_dir" "$target"
    printf 'Linked: %s\n' "$target"
  fi
done

if [[ -L $agents_file && $agents_file -ef $repo_dir/AGENTS.md ]]; then
  printf 'Already linked: %s\n' "$agents_file"
elif "$dry_run"; then
  if [[ -e $agents_file || -L $agents_file ]]; then
    printf 'Would back up: %s -> %s\n' "$agents_file" "$agents_backup"
  fi
  printf 'Would link: %s -> %s/AGENTS.md\n' "$agents_file" "$repo_dir"
else
  mkdir -p -- "$(dirname -- "$agents_file")"
  if [[ -e $agents_file || -L $agents_file ]]; then
    mv -T -- "$agents_file" "$agents_backup"
    printf 'Backed up: %s\n' "$agents_backup"
  fi
  ln -sT -- "$repo_dir/AGENTS.md" "$agents_file"
  printf 'Linked: %s\n' "$agents_file"
fi

if "$dry_run"; then
  printf 'Dry run: %d kstack skills to link, %d already linked.\n' "${#new_skills[@]}" "$unchanged"
else
  printf 'Installed %d kstack skill links. %d already linked.\n' "${#new_skills[@]}" "$unchanged"
fi

if "$upgrade"; then
  cleanup_args=(--stale-only)
  if "$dry_run"; then
    cleanup_args+=(--dry-run)
  fi
  "$repo_dir/scripts/uninstall.sh" "${cleanup_args[@]}" "$destination"
fi

run_upstream() {
  local directory=$1
  shift
  if "$dry_run"; then
    printf 'Would run in %s:' "$directory"
    printf ' %q' "$@"
    printf '\n'
  else
    (cd -- "$directory" && "$@")
  fi
}

if "$with_impeccable"; then
  run_upstream "$repo_dir" npx --yes impeccable install --providers=codex --scope=global
fi
if "$with_matt_pocock"; then
  run_upstream "$repo_dir" codex plugin marketplace add mattpocock/skills
  run_upstream "$repo_dir" codex plugin add mattpocock-skills@mattpocock
fi
if [[ -n $emil_project ]]; then
  run_upstream "$emil_project" npx --yes skills@latest add emilkowalski/skills --agent codex --skill '*' --yes
fi
