# Processes

Processes are Markdown execution maps for ai-driven-sdlc.

Each Process defines execution order, skill and workflow sequence, artifact
dependencies, approval gates, repository placement, and downstream handoffs for
a specific SDLC path.

## Why Multiple Processes Exist

Different repositories and delivery contexts may need different execution paths.
The framework supports multiple Processes so teams and agents can choose an
appropriate operating path without changing core skills or workflows.

Examples:

- default full SDLC process
- lightweight MVP process
- UX-first process
- architecture-first process
- repository-bootstrap-only process
- enterprise-governed process

## Relationship to Skills and Workflows

Skills remain capability-oriented and live under `skills/`.

Workflows orchestrate skills and live under `workflows/`.

Processes describe how skills and workflows are ordered for a specific SDLC
path. They do not implement skill behavior or workflow execution.

## Canonical and Experimental Processes

Canonical Processes are recommended or approved execution maps. Agents must
not overwrite canonical processes without explicit approval.

Experimental Processes are draft or exploratory execution maps. They may be
used to test alternate SDLC paths, but they must be clearly marked as
experimental until validated and approved.

Deprecated Processes must identify replacement guidance or explain why no
replacement exists.

## Naming Conventions

Use lowercase kebab-case filenames:

```text
processes/<name>.md
```

Examples:

- `processes/default.md`
- `processes/ux-first.md`
- `processes/lightweight-mvp.md`
- `processes/enterprise-governed.md`

## Approval Expectations

Creating a new experimental Process does not require approval when it does
not overwrite an existing file.

Creating, replacing, or modifying a canonical Process requires explicit
approval if the change alters execution order, artifact dependencies, approval
gates, or repository placement.

Agents must update this README when adding a Process. Agents must update
the main `README.md` when adding a canonical or recommended Process.

## Available Processes

| Name | File | Status | Intended Use |
|---|---|---|---|
| Default | processes/default.md | Canonical | Full ai-driven-sdlc lifecycle |
