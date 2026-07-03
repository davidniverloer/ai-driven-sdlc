# Create Process

## Canonical Trigger Phrase

```text
Create an ai-driven-sdlc process named: <name>
```

## Purpose

Creates a new Markdown Process under:

```text
processes/<name>.md
```

This command specification defines documentation scaffolding only. It does not
implement a CLI, skill execution, workflow execution, or code generation.

## Inputs

- process name
- intended use
- source basis
- scope
- canonical or experimental status

## Behavior

When triggered, an agent must:

1. Inspect existing processes.
2. Determine whether the requested process is new, duplicate, variant, or
   replacement.
3. Create a new Markdown process file using the template.
4. Assign a unique process ID.
5. Define version, status, intended use, and governance notes.
6. Add or update references in `processes/README.md`.
7. Update the main `README.md` with a short entry if the new process is canonical
   or recommended.
8. Record the action in `docs/commands/history/` or `docs/commands/` using the
   next available number if a history convention exists.

## Safety Rules

The command must not:

- overwrite an existing process without explicit approval
- modify canonical processes directly without approval
- delete processes
- change skill files
- change workflow files
- implement code

## Output Requirements

After execution, the agent must report:

- process created
- file path
- status
- source basis
- whether `README.md` was updated
- recommended next step
