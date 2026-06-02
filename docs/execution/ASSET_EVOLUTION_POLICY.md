# Asset Evolution Policy

This policy defines how framework assets may change over time. It applies to
skills, workflows, schemas, adapters, and installers.

## Review Requirements

All asset changes require:

- affected asset type identified
- lifecycle state identified
- validation expectations checked
- compatibility impact assessed
- breaking-change impact assessed
- deprecation impact assessed

Risky changes require explicit review in the implementation summary. Breaking
changes require approval, migration guidance, and an architectural decision.

## Asset Proposal Governance

Before creating a new governed asset, agents must document:

- asset type
- proposed name and location
- purpose
- intended consumers
- dependencies
- compatibility expectations
- validation expectations
- publication criteria

Proposals that affect multiple asset families, introduce new contracts, or alter
existing publication behavior require an architectural decision before
implementation.

## Release Governance

A framework release recommendation must not be made until:

- changed assets have completed pre-publication validation
- safe, risky, and breaking changes are identified
- compatibility impact is documented
- deprecation impact is documented
- release notes can reference modified asset families
- protected git operations are approved through `GIT_GOVERNANCE.md`

Releases containing breaking changes require migration guidance, rollback
expectations, and explicit approval.

## Skills

Safe changes:

- clarify purpose, inputs, outputs, or examples without changing the contract
- add non-breaking metadata
- add validation notes

Risky changes:

- change dependencies
- alter expected outputs
- split or merge skill responsibilities
- move a skill between capability groups

Breaking changes:

- remove a published skill
- rename a published skill
- change required inputs or outputs
- invalidate workflows that reference the skill

Compatibility requirements: published skill contracts must remain callable by
existing workflows unless migration guidance exists.

Deprecation requirements: identify replacement skill, affected workflows, and
migration path.

## Workflows

Safe changes:

- clarify step descriptions
- add non-breaking validation checkpoints
- document artifact handoffs more precisely

Risky changes:

- reorder steps
- add dependencies
- change artifact passing expectations
- alter decision points

Breaking changes:

- remove workflow steps required by downstream users
- change required input artifacts
- change produced output artifacts
- reference missing or incompatible skills

Compatibility requirements: workflow inputs, outputs, references, and artifact
handoffs must remain stable for published workflows.

Deprecation requirements: identify successor workflow and migration guidance.

## Schemas

Safe changes:

- add optional fields with documented defaults
- clarify descriptions
- add examples that do not change semantics

Risky changes:

- change validation rules
- add new required relationships
- change field formats
- change versioning semantics

Breaking changes:

- remove fields
- rename fields
- change required fields
- alter semantics of existing fields

Compatibility requirements: schema changes must preserve existing valid
documents unless explicitly versioned as breaking.

Deprecation requirements: mark deprecated fields, define replacement fields, and
document migration timing.

## Adapters

Safe changes:

- clarify supported tools or versions
- add optional capabilities
- improve isolation documentation

Risky changes:

- change external tool assumptions
- change adapter configuration shape
- add new runtime dependencies

Breaking changes:

- remove support for a published adapter contract
- make adapter behavior required by core assets
- change core semantics through adapter behavior

Compatibility requirements: adapters must remain optional and must not alter
core framework contracts.

Deprecation requirements: identify affected users, supported alternatives, and
removal timing.

## Installers

Safe changes:

- improve documentation
- add dry-run detail
- clarify safety checks

Risky changes:

- change target paths
- change backup behavior
- change manifest contents
- change upgrade or uninstall behavior

Breaking changes:

- overwrite user files without backup
- remove files not owned by ai-driven-sdlc
- invalidate existing installation manifests
- require a specific AI vendor or repository type

Compatibility requirements: installers must support existing and greenfield
repositories without assuming application architecture.

Deprecation requirements: document old installation behavior, migration path,
and rollback expectations.
