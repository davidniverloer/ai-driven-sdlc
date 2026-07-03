#!/usr/bin/env sh
set -eu

usage() {
  cat <<'EOF'
Usage:
  curl -fsSL https://raw.githubusercontent.com/davidniverloer/ai-driven-sdlc/main/bootstrap.sh | sh

Options are passed through to install.sh, including:
  --dry-run

Optional target:
  curl -fsSL https://raw.githubusercontent.com/davidniverloer/ai-driven-sdlc/main/bootstrap.sh | sh -s -- /path/to/target-repository

Defaults to the current directory when no target path is provided.

Environment overrides:
  AI_SDLC_REPO_URL  Git repository to clone.
  AI_SDLC_REF       Git branch or tag to clone.
EOF
}

case "${1:-}" in
  -h|--help)
    usage
    exit 0
    ;;
esac

if ! command -v git >/dev/null 2>&1; then
  printf '%s\n' "git is required to install ai-driven-sdlc." >&2
  exit 1
fi

repo_url="${AI_SDLC_REPO_URL:-https://github.com/davidniverloer/ai-driven-sdlc.git}"
repo_ref="${AI_SDLC_REF:-main}"
tmpdir=$(mktemp -d "${TMPDIR:-/tmp}/ai-driven-sdlc.XXXXXX")

cleanup() {
  rm -rf "$tmpdir"
}

trap cleanup EXIT HUP INT TERM

printf '%s\n' "Downloading ai-driven-sdlc..."
git clone --depth 1 --branch "$repo_ref" "$repo_url" "$tmpdir" >/dev/null 2>&1

AI_SDLC_INSTALL_SOURCE="$repo_url#$repo_ref" "$tmpdir/install.sh" "$@"
