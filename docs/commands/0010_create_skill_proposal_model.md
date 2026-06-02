# Command 0010: Create Skill Proposal Model

Date: 2026-06-02

## Objective

Create the canonical Skill Proposal Model and reusable Skill Proposal template
package.

## Files Created

- `docs/framework/SKILL_PROPOSAL_MODEL.md`
- `proposals/templates/skill-proposal-template/README.md`
- `proposals/templates/skill-proposal-template/proposal.yaml.template`
- `proposals/templates/skill-proposal-template/classification.template.md`
- `proposals/templates/skill-proposal-template/repository-placement.template.md`
- `proposals/templates/skill-proposal-template/process-tree-impact.template.md`
- `proposals/templates/skill-proposal-template/approval-checklist.template.md`
- `proposals/templates/skill-proposal-template/source/README.md`
- `docs/commands/0010_create_skill_proposal_model.md`

## Files Modified

- `AGENTS.md`
- `docs/execution/VALIDATION_PROTOCOL.md`
- `docs/framework/README.md`
- `docs/execution/DECISIONS.md`

## Architectural Decisions Introduced

- ADR-0011 establishes the Skill Proposal Model.
- Every Skill Proposal must conform to the required package structure.
- Skill Proposals must preserve source prompts exactly under `source/`.
- Skill Proposals must include classification, repository placement, Process
  Tree impact, and approval checklist artifacts.
- Skill Proposal Validation applies before review, promotion, or
  canonicalization.

## Unresolved Questions

- Should Skill Proposals be stored as directories by default under
  `proposals/skills/`?
- Should `proposal.yaml` receive a formal schema before first use?
- Should proposal IDs be globally unique across all proposal categories?
- Where should approval records and promotion evidence live inside a proposal?

## Recommended Next Actions

1. Define a formal schema for `proposal.yaml`.
2. Create the first sample Skill Proposal package using the template.
3. Define approval record and promotion evidence file conventions.
4. Add validation automation once schemas exist.
