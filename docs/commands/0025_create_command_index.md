# Command 0025: Create Command Index

Date: 2026-06-02

## Objective

Create a lightweight command index for official ai-driven-sdlc commands so the
Skill Creation Command is discoverable without defining an installed
`.ai-sdlc/` command manifest prematurely.

## Files Created

- `docs/commands/README.md`
- `docs/commands/0025_create_command_index.md`

## Files Modified

- `README.md`
- `docs/framework/README.md`
- `docs/execution/DECISIONS.md`

## Architectural Decisions Introduced

- ADR-0024 establishes `docs/commands/README.md` as the documentation command
  index.
- The command index is documentation only.
- Installed `.ai-sdlc/` command manifests remain out of scope until
  installation layout and manifest governance are defined.

## Unresolved Questions

- What should the installed `.ai-sdlc/` command manifest format be?
- Should command specs define machine-readable trigger metadata later?
- Should command aliases be allowed, or only exact trigger phrases?
- Should command validation have a shared output report model?

## Recommended Next Actions

1. Define the `.ai-sdlc/` installation layout.
2. Define a command manifest model after installation governance is ready.
3. Add machine-readable command metadata only after schema governance is ready.
