# Command 0009: Create Proposal Architecture

Date: 2026-06-02

## Objective

Create Proposal Architecture as the foundation for safe framework evolution and
create official proposal intake zones.

## Files Created

- `proposals/README.md`
- `proposals/skills/README.md`
- `proposals/workflows/README.md`
- `proposals/process-trees/README.md`
- `proposals/schemas/README.md`
- `proposals/adapters/README.md`
- `proposals/installers/README.md`
- `docs/framework/PROPOSAL_ARCHITECTURE.md`
- `docs/framework/PROPOSAL_LIFECYCLE.md`
- `docs/commands/0009_create_proposal_architecture.md`

## Files Modified

- `AGENTS.md`
- `docs/execution/PROCESS_TREE_POLICY.md`
- `docs/execution/VALIDATION_PROTOCOL.md`
- `docs/framework/README.md`
- `docs/execution/DECISIONS.md`

## Architectural Decisions Introduced

- ADR-0010 establishes Proposal Architecture.
- All new framework contributions enter as proposals.
- Approved assets remain stable and immutable.
- Proposal categories cover skills, workflows, Process Trees, schemas, adapters,
  and installation assets.
- Promotion requires validation and governance approval.

## Unresolved Questions

- Should proposals be directories or single Markdown files by default?
- What metadata schema should define proposal structure?
- Where should approval records be stored?
- How should promoted proposals link back to canonical assets?
- Should proposals receive automated lifecycle validation before schemas exist?

## Recommended Next Actions

1. Define the proposal metadata schema.
2. Create a proposal package template.
3. Define approval record format.
4. Define promotion evidence requirements for each proposal category.
