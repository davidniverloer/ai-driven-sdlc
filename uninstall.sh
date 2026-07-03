#!/usr/bin/env sh
set -eu

usage() {
  cat <<'EOF'
Usage:
  ./uninstall.sh [--dry-run] [path/to/target-repository]

Safely uninstalls ai-driven-sdlc by moving:
  path/to/target-repository/.ai-sdlc/

to:
  path/to/target-repository/.ai-sdlc.removed-<timestamp>/

Defaults to the current directory when no target path is provided.

Safety:
  - requires .ai-sdlc/manifest.txt
  - never deletes application code
  - moves .ai-sdlc/ to a backup location instead of deleting it
EOF
}

dry_run=0

case "${1:-}" in
  -h|--help)
    usage
    exit 0
    ;;
  --dry-run)
    dry_run=1
    shift
    ;;
esac

target="${1:-.}"

if [ ! -d "$target" ]; then
  printf '%s\n' "Target repository does not exist: $target" >&2
  exit 1
fi

target_dir=$(CDPATH= cd -- "$target" && pwd)
install_dir="$target_dir/.ai-sdlc"
manifest="$install_dir/manifest.txt"
timestamp=$(date '+%Y%m%d%H%M%S')
removed_dir="$target_dir/.ai-sdlc.removed-$timestamp"

printf '%s\n' "ai-driven-sdlc uninstall plan"
printf '%s\n' "Target repository: $target_dir"
printf '%s\n' "Install directory:   $install_dir"

if [ ! -e "$install_dir" ]; then
  printf '%s\n' ""
  printf '%s\n' "No .ai-sdlc/ directory found. Nothing to uninstall."
  exit 0
fi

if [ ! -f "$manifest" ]; then
  printf '%s\n' ""
  printf '%s\n' "Refusing automatic uninstall: missing manifest."
  printf '%s\n' "Expected manifest:"
  printf '%s\n' "  $manifest"
  printf '%s\n' ""
  printf '%s\n' "Move or inspect .ai-sdlc/ manually if this was not installed by ai-driven-sdlc."
  exit 1
fi

if [ -e "$removed_dir" ]; then
  printf '%s\n' "Removed backup path already exists: $removed_dir" >&2
  exit 1
fi

printf '%s\n' "Manifest:            $manifest"
printf '%s\n' "Removed backup:      $removed_dir"
printf '%s\n' ""
printf '%s\n' "Action:"
printf '%s\n' "  move .ai-sdlc/ to the removed backup path"
printf '%s\n' "  do not delete application code"
printf '%s\n' "  do not remove files outside .ai-sdlc/"

if [ "$dry_run" -eq 1 ]; then
  printf '%s\n' ""
  printf '%s\n' "Dry run only. No files were changed."
  exit 0
fi

mv "$install_dir" "$removed_dir"

printf '%s\n' ""
printf '%s\n' "Uninstalled ai-driven-sdlc by moving:"
printf '%s\n' "  $install_dir"
printf '%s\n' "to:"
printf '%s\n' "  $removed_dir"
printf '%s\n' ""
printf '%s\n' "No application files were changed."
