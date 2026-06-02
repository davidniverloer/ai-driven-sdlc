# Command 0011: Create Process Tree Integration Rules

Date: 2026-06-02

## Objective

Create Process Tree Integration Rules for skill proposals and update governance
so proposed skills are evaluated against ai-driven-sdlc execution models before
promotion.

## Files Created

- `docs/framework/PROCESS_TREE_INTEGRATION_RULES.md`
- `docs/commands/0011_create_process_tree_integration_rules.md`

## Files Modified

- `docs/framework/SKILL_PROPOSAL_MODEL.md`
- `docs/execution/PROCESS_TREE_POLICY.md`
- `docs/execution/VALIDATION_PROTOCOL.md`
- `docs/framework/README.md`
- `docs/execution/DECISIONS.md`
- `proposals/templates/skill-proposal-template/process-tree-impact.template.md`

## Architectural Decisions Introduced

- ADR-0012 establishes Process Tree Integration Rules.
- Every Skill Proposal must include `process-tree-impact.md`.
- No skill may be promoted without valid Process Tree placement or explicit
  terminal classification.
- Canonical Process Tree modifications require approval.
- Process Tree Integration Validation applies to proposed skills.

## Unresolved Questions

- Should terminal or out-of-tree classifications have a controlled vocabulary?
- Should Process Tree impact reports use a schema before first proposal use?
- How should experimental Process Tree placements be promoted to canonical
  placement?
- Should affected artifact IDs be required in `process-tree-impact.md`?

## Recommended Next Actions

1. Define a schema for `process-tree-impact.md`.
2. Define terminal and out-of-tree classification values.
3. Add validation automation once proposal schemas exist.
