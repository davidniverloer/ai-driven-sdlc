# Command 0028: Allow /skill-create Activation Formatting

Date: 2026-06-02

## Objective

Allow agents to correct minor `/skill-create` activation-line formatting, such
as trailing spaces, without treating the submitted command as invalid.

## Files Created

- `docs/commands/0028_allow_skill_create_activation_formatting.md`

## Files Modified

- `docs/commands/skill-create.md`
- `docs/guides/SKILL_CREATE_COMMAND.md`
- `AGENTS.md`
- `docs/execution/VALIDATION_PROTOCOL.md`

## Command Behavior Clarified

The first non-empty line activates `/skill-create` if it equals
`/skill-create` after trimming leading and trailing whitespace.

This normalization applies only to the command activation line. Submitted source
prompts and protocols must still be preserved verbatim.

## Architectural Decisions Introduced

- Activation-line formatting normalization is allowed.
- Natural-language trigger detection remains forbidden.
- Source prompt rewriting, cleanup, and reformatting remain forbidden.

## Unresolved Questions

- Should future slash command manifests specify command-line normalization
  rules explicitly?
- Should slash command validation record the raw activation line and normalized
  activation command separately?

## Recommended Next Actions

1. Apply the clarified `/skill-create` activation rule to the pending ontology
   protocol submission.
2. Include activation-line normalization in any future slash command manifest.
