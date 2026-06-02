# Command 0004: Add Process Tree Creation Command

Date: 2026-06-02

## Objective

Add lightweight documentation and command scaffolding for creating multiple
Process Trees without implementing a CLI, skill execution, workflow execution,
or application code.

## Files Created

- `process-trees/README.md`
- `process-trees/default.md`
- `process-trees/templates/process-tree-template.md`
- `docs/commands/create-process-tree.md`
- `docs/commands/0004_add_process_tree_creation_command.md`

## Files Modified

- `README.md`
- `AGENTS.md`
- `docs/execution/VALIDATION_PROTOCOL.md`
- `docs/execution/DECISIONS.md`

## Architectural Decisions Introduced

- ai-driven-sdlc supports multiple Markdown Process Trees.
- Process Trees are stored under `process-trees/`.
- New Process Trees must use `process-trees/templates/process-tree-template.md`.
- Canonical Process Trees must not be overwritten without explicit approval.
- `process-trees/README.md` is the registry for stored Process Trees.
- The main `README.md` must be updated when adding a canonical or recommended
  Process Tree.
- ADR-0005 records the decision to support multiple stored Process Trees.

## Unresolved Questions

- When should the full canonical tree move from `docs/framework/PROCESS_TREE.md`
  into `process-trees/default.md`?
- Should Process Tree metadata receive a schema before the first experimental
  tree is created?
- Should command history eventually move into `docs/commands/history/`?
- What criteria promote an experimental Process Tree to canonical status?

## Recommended Next Actions

1. Define a schema-backed metadata contract for Process Trees.
2. Decide whether `docs/framework/PROCESS_TREE.md` should remain canonical or
   become a framework-model reference after `process-trees/default.md` is fully
   populated.
3. Create the first experimental Process Tree using the documented trigger
   phrase.
4. Add automated validation later to confirm `process-trees/README.md` references
   every stored Process Tree.
