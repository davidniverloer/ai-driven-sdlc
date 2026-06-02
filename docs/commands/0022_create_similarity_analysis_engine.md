# Command 0022: Create Similarity Analysis Engine

Date: 2026-06-02

## Objective

Create the Similarity Analysis Engine so ai-driven-sdlc can classify proposed
assets as new, equivalent, enhancements, variants, replacements, duplicates, or
incompatible before promotion is considered.

## Files Created

- `docs/framework/SIMILARITY_ANALYSIS_ENGINE.md`
- `docs/framework/SIMILARITY_REPORT_MODEL.md`
- `docs/commands/0022_create_similarity_analysis_engine.md`

## Files Modified

- `AGENTS.md`
- `docs/framework/SKILL_INTAKE_COMPILER.md`
- `docs/framework/SKILL_PROMOTION_POLICY.md`
- `docs/execution/VALIDATION_PROTOCOL.md`
- `docs/framework/README.md`
- `docs/execution/DECISIONS.md`

## Architectural Decisions Introduced

- ADR-0021 establishes the Similarity Analysis Engine.
- Similarity analysis is mandatory before promotion.
- Duplicate detection is mandatory before promotion.
- Similarity analysis may compare metadata, contracts, dependencies, repository
  placement, lifecycle, artifacts, and Process Tree relationships.
- Similarity analysis must preserve prompt fidelity and must not modify approved
  assets.

## Unresolved Questions

- Should similarity reports be mandatory for all proposal categories or only
  proposals with comparable existing assets?
- Should similarity analysis become a separate validation stage before Skill
  Diff analysis?
- How should future automation rank candidate comparable assets?
- Should workflow component detection receive its own outcome model later?

## Recommended Next Actions

1. Add Similarity Report references to proposal templates.
2. Define when Similarity Analysis and Skill Diff are both required.
3. Add similarity evidence fields to promotion decision records.
4. Run a dry-run similarity analysis once a proposed skill and comparable
   canonical skill exist.
