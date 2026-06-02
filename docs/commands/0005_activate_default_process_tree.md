# Command 0005: Activate Default Process Tree

Date: 2026-06-02

## Objective

Activate the generated canonical Process Tree in the multi-process-tree
architecture by migrating it from the legacy framework location into
`process-trees/default.md`.

## Old Process Tree Path Found

- `docs/framework/PROCESS_TREE.md`

## New Canonical Process Tree Path

- `process-trees/default.md`

## Files Created

- `docs/commands/0005_activate_default_process_tree.md`

## Files Modified

- `process-trees/default.md`
- `docs/framework/PROCESS_TREE.md`
- `process-trees/README.md`
- `README.md`
- `AGENTS.md`
- `docs/execution/VALIDATION_PROTOCOL.md`
- `docs/execution/PROCESS_TREE_POLICY.md`
- `docs/execution/REPOSITORY_OPERATING_SYSTEM.md`
- `docs/framework/README.md`
- `docs/execution/DECISIONS.md`

## Migration Decisions

- Preserved the richer 33-node generated Process Tree by copying it into
  `process-trees/default.md`.
- Added required default tree metadata at the top of
  `process-trees/default.md`.
- Replaced `docs/framework/PROCESS_TREE.md` with a short compatibility pointer.
- Made `process-trees/default.md` the active default canonical Process Tree.
- Updated governance and validation references away from the legacy canonical
  path.
- Recorded ADR-0006 for the activation decision.

## Conflicts Encountered

No content conflicts were found. The legacy tree was richer than the existing
`process-trees/default.md` placeholder, so the richer version was preserved and
the placeholder summary was replaced.

## Unresolved Questions

- Should `docs/framework/PROCESS_TREE.md` be removed in a future breaking cleanup
  after compatibility expectations are formalized?
- Should Process Tree validation be automated before additional canonical trees
  are added?
- Should `process-trees/default.md` become the only source for Process Tree
  governance examples?

## Recommended Next Actions

1. Define schema-backed metadata validation for Process Trees.
2. Add an automated check that every canonical tree is listed in
   `process-trees/README.md`.
3. Update future Process Tree creation workflows to treat
   `docs/framework/PROCESS_TREE.md` as legacy only.
