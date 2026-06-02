# Command 0003: Create Process Tree Governance

Date: 2026-06-02

## Objective

Create the canonical ai-driven-sdlc Process Tree and update repository
governance so future agents know when the Process Tree must be updated.

## Files Created

- `docs/framework/PROCESS_TREE.md`
- `docs/execution/PROCESS_TREE_POLICY.md`
- `docs/commands/0003_create_process_tree_governance.md`

## Files Modified

- `AGENTS.md`
- `docs/framework/README.md`
- `docs/execution/README.md`
- `docs/execution/VALIDATION_PROTOCOL.md`
- `docs/execution/REPOSITORY_OPERATING_SYSTEM.md`
- `docs/execution/DECISIONS.md`

## Decisions Introduced

- `docs/framework/PROCESS_TREE.md` is the canonical execution map.
- Process Tree node contracts are required for every node.
- Future agents must check the Process Tree before creating or modifying skills
  or workflows.
- Process Tree updates are mandatory when execution order, dependencies,
  artifacts, or human approval gates change.
- ADR-0004 establishes the canonical Process Tree as part of the Repository
  Operating System.

## Unresolved Questions

- Which Process Tree nodes should become concrete skills first?
- Which artifact contracts should be schema-backed first?
- What publication status labels should be standardized for Process Tree nodes?
- Should Process Tree validation become an automated check once schemas exist?

## Recommended Next Actions

1. Define schema-backed artifact contracts for the Process Tree artifacts.
2. Decide which proposed Process Tree nodes should become the first implemented
   skills or workflows.
3. Add a Process Tree impact section to future command history templates.
4. Define publication status labels for proposed and canonical Process Tree
   nodes.
