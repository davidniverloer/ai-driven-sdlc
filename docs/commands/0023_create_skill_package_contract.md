# Command 0023: Create Skill Package Contract

Date: 2026-06-02

## Objective

Create the Canonical Skill Package Contract so every canonical skill has a
single governed package structure supporting traceability, promotion,
versioning, Process Tree integration, repository mapping, validation, and
source prompt preservation.

## Files Created

- `docs/framework/SKILL_PACKAGE_CONTRACT.md`
- `docs/framework/SKILL_PACKAGE_VALIDATION_MODEL.md`
- `templates/skill-package/README.md`
- `docs/commands/0023_create_skill_package_contract.md`

## Files Modified

- `AGENTS.md`
- `docs/framework/SKILL_REGISTRY.md`
- `docs/framework/SKILL_PROMOTION_POLICY.md`
- `docs/execution/VALIDATION_PROTOCOL.md`
- `docs/framework/README.md`
- `docs/execution/DECISIONS.md`

## Architectural Decisions Introduced

- ADR-0022 establishes the Canonical Skill Package Contract.
- Every canonical skill must conform to the Skill Package Contract.
- Canonical skill packages must preserve source prompts verbatim.
- Canonical registration and promotion require package contract compliance.
- The future `templates/skill-package/` directory describes template structure
  but does not instantiate skill templates yet.

## Unresolved Questions

- Should future package templates include optional report slots for similarity,
  Skill Diff, and repository placement evidence?
- Should package validation be schema-backed after schema governance is ready?
- Should examples be mandatory before promotion or only before canonical
  release?
- How should package contract exceptions be recorded?

## Recommended Next Actions

1. Add Skill Package Contract references to proposal templates.
2. Define package validation report structure once validation reports are
   formalized.
3. Create schema-backed package validation after schema governance is ready.
4. Run a dry-run package review against the first proposed canonical skill.
