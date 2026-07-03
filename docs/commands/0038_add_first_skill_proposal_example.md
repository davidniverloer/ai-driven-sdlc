# Command 0038: Add First Skill Proposal Example

## Intent

Provide a complete, small reference proposal package for the first `/skill-create`
workflow.

## Scope

- `examples/first-skill-proposal/`
- `docs/guides/FIRST_SKILL_PROPOSAL.md`
- `docs/guides/FIRST_RUN.md`
- `docs/guides/GETTING_STARTED.md`
- `docs/commands/manifest.md`
- `README.md`
- `install.sh`
- `docs/execution/DECISIONS.md`
- `docs/commands/0038_add_first_skill_proposal_example.md`

## Change Summary

- Added an example proposal package with:
  - `proposal.yaml`
  - `classification.md`
  - `repository-placement.md`
  - `process-impact.md`
  - `similarity-analysis.md`
  - `approval-checklist.md`
  - `validation-report.md`
  - `source/`
- Added a guide explaining how to use the example.
- Updated installation to copy `examples/` into `.ai-sdlc/examples/`.
- Linked the example from first-run and getting-started guidance.

## Governance Notes

- The example is not a canonical skill.
- The example must not be promoted.
- The source prompt is preserved verbatim under `source/`.
- The example uses current Process terminology and `processes/default.md`.

## Validation

- Confirm install copies `.ai-sdlc/examples/first-skill-proposal/`.
- Confirm all expected example files exist after install.
- Confirm first-run and command manifest references resolve after install.
- Run shell syntax validation for installer scripts.
- Run `git diff --check`.
