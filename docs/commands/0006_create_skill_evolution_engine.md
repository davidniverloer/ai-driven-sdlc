# Command 0006: Create Skill Evolution Engine

Date: 2026-06-02

## Objective

Create the foundational Skill Evolution Engine architecture and update agent
governance so future agents know how new prompts, protocols, and expertise enter
the framework safely.

## Files Created

- `docs/framework/SKILL_EVOLUTION_ENGINE.md`
- `docs/commands/0006_create_skill_evolution_engine.md`

## Files Modified

- `AGENTS.md`
- `docs/framework/README.md`
- `docs/execution/DECISIONS.md`

## Architectural Decisions Introduced

- ADR-0007 establishes the Skill Evolution Engine architecture.
- Submitted prompts are source artifacts.
- Source prompts must be preserved verbatim.
- Agents may classify, annotate, map, and package submitted prompts.
- Agents may not rewrite, optimize, improve, or reinterpret submitted prompts.
- Skill evolution must be proposal-first and Process Tree aware.
- Approved skills must not be modified directly without explicit human
  authorization.

## Unresolved Questions

- Where should preserved source prompts and source protocols be stored?
- What metadata schema should govern skill proposals?
- What approval record format is required before promotion?
- How should similarity analysis be performed without implementing tool-specific
  behavior?
- Should Process Tree mappings for proposals be stored beside proposals or in a
  central index?

## Recommended Next Actions

1. Define the skill proposal metadata schema.
2. Define storage locations for source prompts, source protocols, and proposals.
3. Create a proposal template that preserves source text verbatim.
4. Define validation criteria for promotion readiness.
