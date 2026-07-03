# Command 0029: Improve Onboarding and Installer

Date: 2026-07-03

## Objective

Make ai-driven-sdlc easier for non-expert users to understand, install, and try.

## Files Created

- `docs/guides/GETTING_STARTED.md`
- `docs/commands/0029_improve_onboarding_and_installer.md`

## Files Modified

- `README.md`
- `install.sh`

## Documentation Introduced

- User-oriented README with install, start, safety, and first-command guidance.
- Beginner getting-started guide.
- Clear distinction between installed `.ai-sdlc/` assets and future automation.

## Installer Behavior Introduced

- `./install.sh [--dry-run] /path/to/target-repository`
- creates `.ai-sdlc/`
- backs up an existing `.ai-sdlc/`
- copies framework assets, commands, guides, Process Trees, skills, workflows,
  schemas, and templates
- writes `manifest.txt`
- prints next steps

## Unresolved Questions

- Should uninstall behavior consume `manifest.txt` in the next iteration?
- Should installed command manifests be machine-readable?
- Which assets should be omitted from lightweight installations?

## Recommended Next Actions

1. Implement manifest-aware uninstall behavior.
2. Define a machine-readable `.ai-sdlc/commands/manifest` after schema
   governance is ready.
3. Add a complete dry-run walkthrough for `/skill-create`.
