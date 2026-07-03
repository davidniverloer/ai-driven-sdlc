# Command 0036: Add Installed First-Run Guide

## Intent

Add a concise first-run guide for repositories after ai-driven-sdlc has been
installed.

## Scope

- `docs/guides/FIRST_RUN.md`
- `docs/guides/GETTING_STARTED.md`
- `docs/commands/manifest.md`
- `README.md`
- `docs/execution/DECISIONS.md`
- `docs/commands/0036_add_installed_first_run_guide.md`

## Change Summary

- Added `docs/guides/FIRST_RUN.md`.
- Linked the guide from installed command discovery and onboarding docs.
- Recorded ADR-0032 for the first-run guide boundary.

## Governance Notes

- The guide is documentation only.
- No skill, workflow, schema, or installer behavior changes were made.
- The guide reinforces prompt preservation and safe first actions.

## Validation

- Confirm install copies `.ai-sdlc/guides/FIRST_RUN.md`.
- Confirm installed manifest references resolve.
- Run `git diff --check`.
