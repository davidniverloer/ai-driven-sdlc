# Command 0008: Create A/B Protocol Model

Date: 2026-06-02

## Objective

Create the A/B Protocol Recognition Model as the classification standard used by
the Skill Intake Compiler.

## Files Created

- `docs/framework/AB_PROTOCOL_MODEL.md`
- `docs/commands/0008_create_ab_protocol_model.md`

## Files Modified

- `AGENTS.md`
- `docs/execution/VALIDATION_PROTOCOL.md`
- `docs/framework/README.md`
- `docs/execution/DECISIONS.md`

## Architectural Decisions Introduced

- ADR-0009 establishes the A/B Protocol Recognition Model.
- A/B protocols are first-class framework assets.
- Protocol recognition is classification only.
- A/B relationships, ordering, wording, and structure must be preserved.
- Protocol classification may inform repository mapping, Process Tree mapping,
  and proposal packaging without making final placement decisions.

## Unresolved Questions

- Where should classified protocol packages be stored?
- What metadata schema should represent protocol type and A/B relationships?
- How should classification ambiguity be represented in proposal metadata?
- Which validation checks should become automated once schemas exist?

## Recommended Next Actions

1. Define a protocol package metadata schema.
2. Define proposal storage locations for each protocol category.
3. Create a protocol classification template that preserves source prompts under
   `original/`.
4. Define how A/B protocol mappings connect to skill proposal metadata.
