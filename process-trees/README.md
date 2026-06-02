# Process Trees

Process Trees are Markdown execution maps for ai-driven-sdlc.

Each Process Tree defines execution order, skill and workflow sequence, artifact
dependencies, approval gates, repository placement, and downstream handoffs for
a specific SDLC path.

## Why Multiple Process Trees Exist

Different repositories and delivery contexts may need different execution paths.
The framework supports multiple Process Trees so teams and agents can choose an
appropriate operating path without changing core skills or workflows.

Examples:

- default full SDLC process tree
- lightweight MVP process tree
- UX-first process tree
- architecture-first process tree
- repository-bootstrap-only process tree
- enterprise-governed process tree

## Relationship to Skills and Workflows

Skills remain capability-oriented and live under `skills/`.

Workflows orchestrate skills and live under `workflows/`.

Process Trees describe how skills and workflows are ordered for a specific SDLC
path. They do not implement skill behavior or workflow execution.

## Canonical and Experimental Trees

Canonical Process Trees are recommended or approved execution maps. Agents must
not overwrite canonical trees without explicit approval.

Experimental Process Trees are draft or exploratory execution maps. They may be
used to test alternate SDLC paths, but they must be clearly marked as
experimental until validated and approved.

Deprecated Process Trees must identify replacement guidance or explain why no
replacement exists.

## Naming Conventions

Use lowercase kebab-case filenames:

```text
process-trees/<name>.md
```

Examples:

- `process-trees/default.md`
- `process-trees/ux-first.md`
- `process-trees/lightweight-mvp.md`
- `process-trees/enterprise-governed.md`

## Approval Expectations

Creating a new experimental Process Tree does not require approval when it does
not overwrite an existing file.

Creating, replacing, or modifying a canonical Process Tree requires explicit
approval if the change alters execution order, artifact dependencies, approval
gates, or repository placement.

Agents must update this README when adding a Process Tree. Agents must update
the main `README.md` when adding a canonical or recommended Process Tree.

## Available Process Trees

| Name | File | Status | Intended Use |
|---|---|---|---|
| Default | process-trees/default.md | Canonical | Full ai-driven-sdlc lifecycle |
