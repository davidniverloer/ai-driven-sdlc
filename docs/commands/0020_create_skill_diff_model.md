# Command 0020: Create Skill Diff Model

Date: 2026-06-02

## Objective

Create the Skill Diff Model so ai-driven-sdlc can compare skills for duplicate
detection, enhancement detection, replacement detection, version impact,
promotion review, compatibility assessment, and Process Tree impact without
violating prompt fidelity.

## Files Created

- `docs/framework/SKILL_DIFF_MODEL.md`
- `docs/framework/SKILL_DIFF_REPORT_MODEL.md`
- `docs/framework/SKILL_VERSIONING.md`
- `docs/commands/0020_create_skill_diff_model.md`

## Files Modified

- `AGENTS.md`
- `docs/framework/SKILL_PROMOTION_POLICY.md`
- `docs/execution/VALIDATION_PROTOCOL.md`
- `docs/framework/README.md`
- `docs/execution/DECISIONS.md`

## Architectural Decisions Introduced

- ADR-0019 establishes the Skill Diff Model.
- Skill diffs classify change impact before promotion.
- Skill diff analysis may compare metadata, contracts, dependencies, placement,
  lifecycle, and version.
- Skill diff analysis must not rewrite, normalize, optimize, or reinterpret
  source prompts.
- Skill Diff categories are the source of version impact decisions.

## Unresolved Questions

- Should Skill Diff Reports live inside proposals, validation outputs, registry
  entries, or a dedicated reports directory?
- Should diff category severity be machine-readable once schemas exist?
- How should multi-skill diffs be represented?
- Which future validation script should enforce Skill Diff Report completeness?

## Recommended Next Actions

1. Add Skill Diff Report references to Skill Proposal templates.
2. Define a schema for Skill Diff Reports after schema governance is ready.
3. Add manual diff review to promotion decision records.
4. Run a dry-run diff against a proposed skill and an existing canonical skill
   once canonical skills exist.
