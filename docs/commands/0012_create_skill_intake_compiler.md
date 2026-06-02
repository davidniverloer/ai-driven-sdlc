# Command 0012: Create Skill Intake Compiler

Date: 2026-06-02

## Objective

Create the Skill Intake Compiler specification and update governance so future
agents know how to transform raw prompts and protocols into governed proposal
packages.

## Files Created

- `docs/framework/SKILL_INTAKE_COMPILER.md`
- `docs/commands/0012_create_skill_intake_compiler.md`

## Files Modified

- `AGENTS.md`
- `docs/execution/PROCESS_TREE_POLICY.md`
- `docs/execution/VALIDATION_PROTOCOL.md`
- `docs/framework/README.md`
- `docs/execution/DECISIONS.md`

## Architectural Decisions Introduced

- ADR-0013 establishes the Skill Intake Compiler specification.
- Skill Intake Compiler is the official entry point for new expertise.
- Accepted intake must produce protocol classification, capability
  classification, repository mapping, Process Tree mapping, similarity analysis,
  proposal generation, and governance validation.
- Prompt fidelity must be preserved.
- Approved skills, approved workflows, and canonical Process Trees remain
  immutable during intake.

## Unresolved Questions

- Where should failed intake records be stored?
- Should trigger phrases be listed in a machine-readable command registry later?
- What metadata schema should represent similarity analysis outcomes?
- How should intake confidence thresholds be defined?

## Recommended Next Actions

1. Define the Skill Intake Compiler output package metadata.
2. Define failed-intake record storage and format.
3. Create a command specification for the canonical intake trigger phrases.
4. Add schemas after the proposal package contracts stabilize.
