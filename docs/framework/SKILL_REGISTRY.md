# Skill Registry

## Purpose

The Skill Registry is the authoritative inventory of framework skills.

It indexes approved, canonical, deprecated, archived, and proposed skills so
future agents can discover what exists, where it lives, which capability owns it,
which Process nodes reference it, and how it traces back to proposals and
promotion decisions.

The registry is not responsible for storing skills. Skills live under `skills/`
when canonical and under `proposals/skills/` when proposed. The registry indexes
them.

The registry solves:

- canonical skill discovery
- lifecycle visibility
- repository location tracking
- capability ownership tracking
- Process relationship tracking
- version visibility
- dependency traceability
- deprecation and archival discoverability

## Registry Responsibilities

**Canonical Skill Indexing**

Track approved canonical skills and their canonical repository locations.

**Lifecycle Tracking**

Record each skill's lifecycle state: Proposed, Canonical, Deprecated, Archived,
or other valid lifecycle state.

**Repository Location Tracking**

Identify the repository path where a canonical or proposed skill lives.

**Capability Tracking**

Group and discover skills by capability family.

**Process Tracking**

Record Process files, nodes, and impact relationships for each skill.

**Version Tracking**

Record the current version of each skill entry. Versioning rules will be defined
separately.

## Registry Categories

### Canonical Skills

Approved skills that are available as framework capabilities under `skills/`.
Canonical skill registration requires compliance with
`docs/framework/SKILL_PACKAGE_CONTRACT.md`.

### Deprecated Skills

Canonical skills that remain preserved but are no longer recommended for new
use. Deprecated skills must include replacement references or explain why no
replacement exists.

### Archived Skills

Skills retained for history and traceability after deprecation. Archived skills
must remain discoverable through the registry.

### Proposed Skills

Skill proposals under `proposals/skills/`. Proposed skills are not canonical but
may be indexed for discovery and review.

## Registry Entry Contract

Every skill entry must include:

- Skill ID
- Name
- Capability
- Lifecycle State
- Repository Location
- Process Nodes
- Current Version
- Status
- Source Proposal
- Dependencies

This is a contract, not an implementation schema.

## Capability Index

Skills are grouped by capability:

- strategy
- ontology
- requirements
- ux
- architecture
- execution
- devex
- governance
- bootstrapping
- framework

Capability ownership determines discovery and repository placement. It does not
define execution order; Processes define execution order.

## Process Relationships

Registry entries should reference:

- canonical processes
- experimental processes when applicable
- Process node IDs
- Process impact reports
- consumed artifacts
- produced artifacts
- approval gate relationships

For the active default process, references should point to:

```text
processes/default.md
```

## Version Tracking

Registry entries must include Current Version.

Version values should be explicit and stable, such as:

```text
0.1.0
1.0.0
```

This document does not define versioning rules. Versioning policy will be
handled separately.

## Registry Governance

Registry entries may be created when:

- a proposal is promoted
- a canonical skill is admitted
- a deprecated or archived skill must remain discoverable

Canonical registry entries may not be created for a skill package that fails the
Skill Package Contract.

Registry entries may be updated by:

- approved promotion actions
- approved lifecycle transitions
- approved deprecation actions
- approved archival actions
- governance-authorized corrections

Registry entries may be deprecated when the underlying skill is deprecated.

Registry entries may be archived when the underlying skill is archived and all
history-preservation requirements are met.

Agents must not silently create, update, deprecate, or archive registry entries
without governance traceability.

## Registry Traceability

Every registry entry must trace back to:

- proposals
- validations
- promotions
- Process impacts
- approval records
- lifecycle transitions
- repository locations

The registry must make canonical skill history discoverable even after a skill
is deprecated or archived.
