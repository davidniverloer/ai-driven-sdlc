# Create Process Tree

## Canonical Trigger Phrase

```text
Create an ai-driven-sdlc process tree named: <name>
```

## Purpose

Creates a new Markdown Process Tree under:

```text
process-trees/<name>.md
```

This command specification defines documentation scaffolding only. It does not
implement a CLI, skill execution, workflow execution, or code generation.

## Inputs

- process tree name
- intended use
- source basis
- scope
- canonical or experimental status

## Behavior

When triggered, an agent must:

1. Inspect existing process trees.
2. Determine whether the requested tree is new, duplicate, variant, or
   replacement.
3. Create a new Markdown process tree file using the template.
4. Assign a unique tree ID.
5. Define version, status, intended use, and governance notes.
6. Add or update references in `process-trees/README.md`.
7. Update the main `README.md` with a short entry if the new tree is canonical
   or recommended.
8. Record the action in `docs/commands/history/` or `docs/commands/` using the
   next available number if a history convention exists.

## Safety Rules

The command must not:

- overwrite an existing process tree without explicit approval
- modify canonical process trees directly without approval
- delete process trees
- change skill files
- change workflow files
- implement code

## Output Requirements

After execution, the agent must report:

- process tree created
- file path
- status
- source basis
- whether `README.md` was updated
- recommended next step
