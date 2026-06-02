# Command 0019: Create Skill Registry

Date: 2026-06-02

## Objective

Create the Canonical Skill Registry architecture and entry model, then align
skill discovery, promotion, lifecycle, validation, and governance references.

## Files Created

- `docs/framework/SKILL_REGISTRY.md`
- `docs/framework/SKILL_REGISTRY_ENTRY_MODEL.md`
- `docs/commands/0019_create_skill_registry.md`

## Files Modified

- `skills/README.md`
- `AGENTS.md`
- `docs/framework/SKILL_PROMOTION_ENGINE.md`
- `docs/framework/SKILL_LIFECYCLE.md`
- `docs/execution/VALIDATION_PROTOCOL.md`
- `docs/framework/README.md`
- `docs/execution/DECISIONS.md`

## Architectural Decisions Introduced

- ADR-0018 establishes the Canonical Skill Registry.
- The registry is the authoritative skill inventory.
- The registry indexes skills; it does not store them.
- Canonical skills must appear in the registry.
- Deprecated skills remain traceable.
- Archived skills remain discoverable.

## Unresolved Questions

- Should the registry be Markdown, YAML, JSON, or generated from schema-backed
  entries?
- Where should the initial registry file live?
- What canonical skill ID format should be used?
- How should proposed skills be indexed before promotion?
- Should registry validation be automated before first canonical skill?

## Recommended Next Actions

1. Define the initial registry storage file and format.
2. Define canonical skill ID conventions.
3. Add registry fields to promotion decision templates.
4. Create schema-backed registry entry validation.
