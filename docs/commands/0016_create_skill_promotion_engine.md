# Command 0016: Create Skill Promotion Engine

Date: 2026-06-02

## Objective

Create the Skill Promotion Engine specification and authoritative promotion
sequence for validated Skill Proposals.

## Files Created

- `docs/framework/SKILL_PROMOTION_ENGINE.md`
- `docs/framework/SKILL_PROMOTION_SEQUENCE.md`
- `docs/commands/0016_create_skill_promotion_engine.md`

## Files Modified

- `AGENTS.md`
- `docs/execution/VALIDATION_PROTOCOL.md`
- `docs/framework/README.md`
- `docs/execution/DECISIONS.md`

## Architectural Decisions Introduced

- ADR-0015 establishes the Skill Promotion Engine.
- Validated proposals enter promotion evaluation before canonical admission.
- Promotion outcomes are PROMOTE, PROMOTE_WITH_WARNINGS, and REJECT.
- Promotion never alters source prompts.
- Promotion must not bypass governance or validation.

## Unresolved Questions

- What structure should the Canonical Skill Registry use?
- Where should promotion recommendations be stored inside proposal packages?
- Should promotion outcomes be represented in proposal metadata?
- What warnings are acceptable for PROMOTE_WITH_WARNINGS?

## Recommended Next Actions

1. Define the Canonical Skill Registry.
2. Add promotion recommendation and promotion decision templates.
3. Define promotion metadata fields for `proposal.yaml`.
4. Define post-promotion validation requirements.
