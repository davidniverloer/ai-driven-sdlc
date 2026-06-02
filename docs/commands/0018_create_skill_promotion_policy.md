# Command 0018: Create Skill Promotion Policy

Date: 2026-06-02

## Objective

Create the Skill Promotion Policy and Promotion Decision Model to govern
promotion decisions for validated Skill Proposals.

## Files Created

- `docs/framework/SKILL_PROMOTION_POLICY.md`
- `docs/framework/PROMOTION_DECISION_MODEL.md`
- `docs/commands/0018_create_skill_promotion_policy.md`

## Files Modified

- `AGENTS.md`
- `docs/framework/SKILL_PROMOTION_ENGINE.md`
- `docs/execution/VALIDATION_PROTOCOL.md`
- `docs/framework/README.md`
- `docs/execution/DECISIONS.md`

## Architectural Decisions Introduced

- ADR-0017 establishes Skill Promotion Policy.
- Promotion requires governance.
- Canonical assets are protected.
- Promotion never modifies source prompts.
- Promotion decisions must be traceable.
- Promotion outcomes include PROMOTE, PROMOTE_WITH_WARNINGS, REJECT, and DEFER.

## Unresolved Questions

- What durable file should store promotion recommendations?
- Where should approval authority records live?
- Should promotion decisions be schema-backed before first canonical skill?
- Which warning categories permit PROMOTE_WITH_WARNINGS?

## Recommended Next Actions

1. Define the Canonical Skill Registry.
2. Add promotion decision files to the Skill Proposal template.
3. Define a schema for Promotion Decision Model records.
4. Define approval authority record format.
