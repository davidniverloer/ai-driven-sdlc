# Command 0021: Create Repository Mapping Engine

Date: 2026-06-02

## Objective

Create the Repository Mapping Engine so ai-driven-sdlc can deterministically
and traceably recommend repository placement for proposed skills, workflows,
Process Trees, schemas, adapters, installation assets, and governance assets.

## Files Created

- `docs/framework/REPOSITORY_MAPPING_ENGINE.md`
- `docs/framework/REPOSITORY_PLACEMENT_MODEL.md`
- `docs/commands/0021_create_repository_mapping_engine.md`

## Files Modified

- `AGENTS.md`
- `docs/framework/SKILL_INTAKE_COMPILER.md`
- `docs/execution/PROCESS_TREE_POLICY.md`
- `docs/execution/VALIDATION_PROTOCOL.md`
- `docs/framework/README.md`
- `docs/execution/DECISIONS.md`

## Architectural Decisions Introduced

- ADR-0020 establishes the Repository Mapping Engine.
- Repository mapping is a governed placement recommendation layer, not a write
  operation.
- Placement must be deterministic, traceable, collision-aware, and aligned with
  Process Trees.
- Mapping may recommend locations but must not create arbitrary paths, silently
  infer placement, or overwrite approved assets.

## Unresolved Questions

- Should repository placement reports live only in proposal packages or also in
  promotion evidence?
- Should future schemas define allowed path patterns for each asset category?
- How should adapter repository ownership be represented before adapter
  locations are formalized?
- Should repository mapping become a prerequisite for all proposal categories or
  only assets that create repository files?

## Recommended Next Actions

1. Add Repository Placement Model references to proposal templates.
2. Define path-pattern schemas after schema governance is ready.
3. Add repository mapping checks to promotion decision records.
4. Run a dry-run placement report against the next proposed skill package.
