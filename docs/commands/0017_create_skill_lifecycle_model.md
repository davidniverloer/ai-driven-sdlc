# Command 0017: Create Skill Lifecycle Model

Date: 2026-06-02

## Objective

Create the Skill Lifecycle Model and align skill proposal, promotion, validation,
and governance references to lifecycle states and transitions.

## Files Created

- `docs/framework/SKILL_LIFECYCLE.md`
- `docs/commands/0017_create_skill_lifecycle_model.md`

## Files Modified

- `AGENTS.md`
- `docs/framework/SKILL_PROPOSAL_MODEL.md`
- `docs/framework/SKILL_PROMOTION_ENGINE.md`
- `docs/execution/VALIDATION_PROTOCOL.md`
- `docs/framework/README.md`
- `docs/execution/DECISIONS.md`

## Architectural Decisions Introduced

- ADR-0016 establishes the Skill Lifecycle Model.
- Every skill or skill proposal must have a lifecycle state.
- Canonical skills are immutable by default.
- Changes to canonical skills must enter as proposals.
- Deprecated and archived skills must preserve history and references.

## Unresolved Questions

- Where should archived skills live once archival is implemented?
- What registry fields should record lifecycle state?
- Should lifecycle transitions be schema-backed before the first canonical skill?
- How should rejected proposals be indexed for future discovery?

## Recommended Next Actions

1. Define the Canonical Skill Registry with lifecycle state fields.
2. Add lifecycle state fields to `proposal.yaml`.
3. Define archive location and archival metadata.
4. Create lifecycle validation schemas once proposal schemas exist.
