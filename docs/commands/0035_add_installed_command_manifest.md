# Command 0035: Add Installed Command Manifest

## Intent

Add a minimal installed command discovery entry point so agents can find
available `.ai-sdlc/` commands without reading the entire documentation tree.

## Scope

- `docs/commands/manifest.md`
- `docs/commands/README.md`
- `README.md`
- `docs/guides/GETTING_STARTED.md`
- `docs/execution/DECISIONS.md`
- `docs/commands/0035_add_installed_command_manifest.md`

## Change Summary

- Added `docs/commands/manifest.md`.
- Updated the command index to reference the installed manifest.
- Updated onboarding docs to point agents to `.ai-sdlc/commands/manifest.md`.
- Recorded ADR-0031 for the installed command manifest boundary.

## Governance Notes

- The manifest is Markdown only.
- The manifest is an agent-readable discovery file, not a schema-backed command
  registry.
- Existing command specifications remain authoritative for behavior.
- No installer script change is needed because `docs/commands/` is already
  copied to `.ai-sdlc/commands/`.

## Validation

- Confirm install copies `.ai-sdlc/commands/manifest.md`.
- Confirm manifest references resolve in an installed temp repository.
- Run `git diff --check`.
