# Command 0037: Rename Process Trees to Processes

## Intent

Simplify the execution-map label from "Process Tree" to "Process" without
breaking existing framework references.

## Scope

- `processes/`
- `process-trees/`
- `proposals/processes/`
- `proposals/process-trees/`
- `docs/framework/PROCESS_MODEL.md`
- `docs/framework/PROCESS_INTEGRATION_RULES.md`
- `docs/execution/PROCESS_POLICY.md`
- legacy process-tree compatibility pointers
- installer output and install manifest
- active command, guide, skill, validation, and framework docs

## Change Summary

- Added `processes/` as the canonical process directory.
- Added `processes/default.md`, `processes/README.md`, and
  `processes/templates/process-template.md`.
- Converted `process-trees/` files into legacy compatibility pointers.
- Added `proposals/processes/` and retained `proposals/process-trees/` as a
  compatibility pointer.
- Added current process model, policy, and integration rule files.
- Retained legacy `PROCESS_TREE*` files as compatibility pointers.
- Updated active docs and skill metadata from Process Tree terminology to
  Process terminology.
- Updated installer behavior to install `processes/` and the legacy
  `process-trees/` pointer directory.

## Governance Notes

- Historical command records and proposal evidence are preserved as history.
- The compatibility path must not be removed until migration/versioning support
  exists.
- New process work must use `processes/` and the "Process" label.

## Validation

- Confirm `processes/default.md` exists.
- Confirm legacy `process-trees/default.md` points to `processes/default.md`.
- Confirm install copies both `.ai-sdlc/processes/` and legacy
  `.ai-sdlc/process-trees/`.
- Confirm installed first-run and command manifest references resolve.
- Run shell syntax validation for installer scripts.
- Run `git diff --check`.
