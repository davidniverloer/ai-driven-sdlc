# Command 0027: Create /skill-create Command

Date: 2026-06-02

## Objective

Create, document, and activate `/skill-create` as the explicit slash command for
converting submitted prompts or protocols into ai-driven-sdlc skill proposals.

## Files Created

- `docs/commands/skill-create.md`
- `docs/guides/SKILL_CREATE_COMMAND.md`
- `docs/commands/0027_create_skill_create_command.md`

## Files Modified

- `README.md`
- `AGENTS.md`
- `docs/commands/README.md`
- `docs/execution/VALIDATION_PROTOCOL.md`
- `docs/execution/DECISIONS.md`

## Command Introduced

```text
/skill-create
```

Activation rule: the first non-empty line must be exactly `/skill-create`.
Natural-language trigger detection is forbidden.

## Architectural Decisions Introduced

- ADR-0025 establishes `/skill-create` as the official slash command for skill
  intake.
- `/skill-create` generates proposals only.
- `/skill-create` preserves submitted prompts verbatim.
- Slash commands must appear as the first non-empty line.
- Natural-language trigger detection is forbidden for slash command activation.

## Unresolved Questions

- Should slash commands later be represented in a machine-readable command
  manifest?
- Should `/skill-create` supersede or coexist with the earlier natural-language
  skill creation command?
- Should generated proposal IDs follow a reserved naming convention?
- Should slash command validation be separated from general command validation?

## Recommended Next Actions

1. Define a slash command manifest model once installation governance is ready.
2. Add `/skill-create` to any future installed `.ai-sdlc/` command manifest.
3. Create a dry-run example that shows a full generated proposal package.
