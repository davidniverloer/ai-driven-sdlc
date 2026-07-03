# Command 0030: Implement Safe Uninstaller

Date: 2026-07-03

## Objective

Replace the uninstall placeholder with a conservative manifest-aware uninstaller
that removes ai-driven-sdlc by moving `.ai-sdlc/` to a timestamped backup.

## Files Created

- `docs/commands/0030_implement_safe_uninstaller.md`

## Files Modified

- `uninstall.sh`
- `README.md`
- `docs/guides/GETTING_STARTED.md`
- `docs/execution/DECISIONS.md`

## Behavior Introduced

- `./uninstall.sh [--dry-run] /path/to/target-repository`
- requires `.ai-sdlc/manifest.txt`
- exits cleanly if `.ai-sdlc/` is absent
- refuses automatic uninstall when manifest is missing
- moves `.ai-sdlc/` to `.ai-sdlc.removed-<timestamp>/`
- never removes files outside `.ai-sdlc/`

## Architectural Decisions Introduced

- Uninstall is backup-first rather than destructive.
- Manifest presence is required before automatic uninstall.
- Application code is out of scope for uninstall behavior.

## Unresolved Questions

- Should future uninstall remove individual files using manifest entries instead
  of moving the full `.ai-sdlc/` directory?
- Should uninstall support a `--force` mode for manifest-less installations?
- Should restored backups have a dedicated restore command?

## Recommended Next Actions

1. Add a restore command or documented manual restore workflow.
2. Make the manifest machine-readable after schema governance is ready.
3. Add install/uninstall behavior to automated validation once scripts are
   introduced.
