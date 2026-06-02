# Governance Model

The governance model defines how ai-driven-sdlc protects its architecture while
remaining extensible.

## Governance Principles

**Repository as Framework**

The repository is the product. Changes should strengthen the framework rather
than assume an application, backend, frontend, or SaaS project shape.

**Contract Before Automation**

Durable behavior should be documented as a contract before scripts, schemas,
adapters, or workflows depend on it.

**Traceability as a Requirement**

Material changes must connect to decisions, risks, validation expectations, and
command history.

**Safe Evolution**

Prefer additive, backward-compatible changes until versioning and migration
policies are fully defined.

## Architectural Principles

- agent-agnostic core assets
- vendor-neutral contracts
- capability-oriented skill organization
- workflow-driven orchestration
- schema-driven evolution
- safe installation and removal
- composable assets
- explicit validation before publication

## Evolution Rules

- Identify the governed asset type before changing it.
- Read the relevant framework model before editing.
- Document major architectural changes in `docs/execution/DECISIONS.md`.
- Update risk tracking when a change introduces or reduces framework risk.
- Update command history for material operating-system changes.
- Validate changed assets according to `docs/execution/VALIDATION_PROTOCOL.md`.

## Compatibility Expectations

Published assets should remain compatible with existing consumers unless a
breaking change is explicitly approved and documented.

Compatibility applies to:

- skill contracts
- workflow references and artifact handoffs
- schema fields and versions
- installation manifests and file ownership
- adapter boundaries
- governance rules and release criteria

## Prohibited Actions

Agents must not:

- restructure framework assets arbitrarily
- move skills from capability organization to phase organization
- introduce vendor-specific assumptions into core assets
- publish assets without validation expectations
- change published contracts without migration guidance
- allow optional adapter behavior to redefine core semantics
- delete decisions, risk records, validation rules, or command history without
  justification
