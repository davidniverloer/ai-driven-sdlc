#!/usr/bin/env sh
set -eu

usage() {
  cat <<'EOF'
Usage:
  ./install.sh [--dry-run] [path/to/target-repository]

Installs ai-driven-sdlc into:
  path/to/target-repository/.ai-sdlc/

Defaults to the current directory when no target path is provided.

Safety:
  - writes only inside .ai-sdlc/
  - backs up an existing .ai-sdlc/ before installing
  - writes an install manifest
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

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
target_dir=$(mkdir -p "$target" && CDPATH= cd -- "$target" && pwd)
install_dir="$target_dir/.ai-sdlc"
timestamp=$(date '+%Y%m%d%H%M%S')
backup_dir="$target_dir/.ai-sdlc.backup-$timestamp"
source_ref="${AI_SDLC_INSTALL_SOURCE:-$script_dir}"

copy_dir() {
  src="$1"
  dest="$2"

  if [ -d "$src" ]; then
    mkdir -p "$(dirname "$dest")"
    cp -R "$src" "$dest"
  fi
}

copy_file() {
  src="$1"
  dest="$2"

  if [ -f "$src" ]; then
    mkdir -p "$(dirname "$dest")"
    cp "$src" "$dest"
  fi
}

print_plan() {
  printf '%s\n' "ai-driven-sdlc install plan"
  printf '%s\n' "Target repository: $target_dir"
  printf '%s\n' "Install directory:   $install_dir"

  if [ -e "$install_dir" ]; then
    printf '%s\n' "Existing .ai-sdlc/:  will be moved to $backup_dir"
  else
    printf '%s\n' "Existing .ai-sdlc/:  none"
  fi

  printf '%s\n' ""
  printf '%s\n' "Assets to install:"
  printf '%s\n' "  commands/"
  printf '%s\n' "  guides/"
  printf '%s\n' "  framework/"
  printf '%s\n' "  execution/"
  printf '%s\n' "  processes/"
  printf '%s\n' "  process-trees/ (legacy compatibility)"
  printf '%s\n' "  skills/"
  printf '%s\n' "  workflows/"
  printf '%s\n' "  schemas/"
  printf '%s\n' "  templates/"
  printf '%s\n' "  README.md"
  printf '%s\n' "  AGENTS.md"
  printf '%s\n' "  uninstall.sh"
  printf '%s\n' "  manifest.txt"
}

print_plan

if [ "$dry_run" -eq 1 ]; then
  printf '%s\n' ""
  printf '%s\n' "Dry run only. No files were changed."
  exit 0
fi

if [ -e "$backup_dir" ]; then
  printf '%s\n' "Backup path already exists: $backup_dir" >&2
  exit 1
fi

if [ -e "$install_dir" ]; then
  mv "$install_dir" "$backup_dir"
fi

mkdir -p "$install_dir"

copy_dir "$script_dir/docs/commands" "$install_dir/commands"
copy_dir "$script_dir/docs/guides" "$install_dir/guides"
copy_dir "$script_dir/docs/framework" "$install_dir/framework"
copy_dir "$script_dir/docs/execution" "$install_dir/execution"
copy_dir "$script_dir/processes" "$install_dir/processes"
copy_dir "$script_dir/process-trees" "$install_dir/process-trees"
copy_dir "$script_dir/skills" "$install_dir/skills"
copy_dir "$script_dir/workflows" "$install_dir/workflows"
copy_dir "$script_dir/schemas" "$install_dir/schemas"
copy_dir "$script_dir/templates" "$install_dir/templates"
copy_dir "$script_dir/proposals/templates" "$install_dir/proposal-templates"

copy_file "$script_dir/README.md" "$install_dir/README.md"
copy_file "$script_dir/AGENTS.md" "$install_dir/AGENTS.md"
copy_file "$script_dir/uninstall.sh" "$install_dir/uninstall.sh"

if [ -f "$install_dir/uninstall.sh" ]; then
  chmod +x "$install_dir/uninstall.sh"
fi

cat > "$install_dir/manifest.txt" <<EOF
ai-driven-sdlc install manifest
installed_at=$timestamp
source=$source_ref
target=$target_dir
install_dir=$install_dir
backup_dir=${backup_dir}

installed_assets:
- commands
- guides
- framework
- execution
- processes
- process-trees
- skills
- workflows
- schemas
- templates
- proposal-templates
- README.md
- AGENTS.md
- uninstall.sh
EOF

printf '%s\n' ""
printf '%s\n' "Installed ai-driven-sdlc into:"
printf '%s\n' "  $install_dir"

if [ -e "$backup_dir" ]; then
  printf '%s\n' ""
  printf '%s\n' "Previous .ai-sdlc/ was backed up to:"
  printf '%s\n' "  $backup_dir"
fi

printf '%s\n' ""
printf '%s\n' "Next steps:"
printf '%s\n' "  1. Open the target repository in your AI coding agent."
printf '%s\n' "  2. Ask it to read .ai-sdlc/guides/GETTING_STARTED.md."
printf '%s\n' "  3. Start with /skill-create as the first non-empty line."
printf '%s\n' "  4. To uninstall later, run .ai-sdlc/uninstall.sh from the target repository."
