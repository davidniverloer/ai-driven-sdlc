# Installation Model

## Installation Philosophy

ai-driven-sdlc should install safely into repositories without taking ownership
of user code.

Installation creates or updates a local `.ai-sdlc/` operating layer that can
hold framework skills, workflows, schemas, manifests, configuration, and
project-specific state. Installation behavior must be inspectable, reversible,
and agent-agnostic.

## Installation Targets

**Existing Repositories**

Existing repositories may already contain user files, local conventions, agent
configuration, or an earlier `.ai-sdlc/` installation. Installation must detect
existing content, preview changes, avoid silent overwrites, and preserve user
modifications.

**Greenfield Repositories**

Greenfield repositories may not have any SDLC structure. Installation may create
the `.ai-sdlc/` layer and initial manifests, but should still keep changes
explicit and minimal.

## Installation Boundaries

Installation assets may manage framework-owned files inside `.ai-sdlc/`.

They must not:

- rewrite application code
- assume a backend, frontend, SaaS, or app project structure
- require a specific AI agent
- overwrite user files without backup or confirmation
- hide generated state outside the documented installation layer

## Upgrade Strategy

Upgrades should compare the installed manifest with the new framework version,
preview planned changes, preserve user modifications, and apply changes
conservatively.

Breaking upgrades require migration notes and should be avoidable until the user
explicitly opts in.

## Removal Strategy

Removal should use the installation manifest to identify framework-owned files.
It should not delete user-created files or modified artifacts without explicit
confirmation.

Uninstall behavior should prefer preview and backup over destructive cleanup.

## Compatibility Expectations

Installation behavior must preserve compatibility across:

- new and existing repositories
- different AI agents and editors
- future schema versions
- future workflow versions
- user-modified installed assets

Compatibility expectations should become schema-backed before production
installer behavior is implemented.
