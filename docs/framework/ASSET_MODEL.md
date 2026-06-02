# Asset Model

The asset model is the authoritative taxonomy for ai-driven-sdlc framework
assets. Every durable repository object should map to one of these asset types
before it is created, changed, validated, published, or deprecated.

## Skills

Purpose: provide atomic executable software engineering capabilities.

Ownership: owned by their capability group under `skills/`. The capability group
defines the skill's conceptual home; workflows define when the skill is used.

Lifecycle: proposed, created, validated, published, maintained, deprecated.

Dependencies: may depend on schemas, other skills, framework documentation, and
portable execution assumptions. Core skills must not require a specific AI
vendor.

## Workflows

Purpose: orchestrate skills into phase-like SDLC sequences.

Ownership: owned under `workflows/`. A workflow owns sequencing, decision
points, dependency chains, and artifact handoffs.

Lifecycle: proposed, created, validated, published, maintained, deprecated.

Dependencies: depend on skills, schemas, input artifacts, repository state, and
validation expectations.

## Schemas

Purpose: define durable machine-readable contracts for framework assets and
installed state.

Ownership: owned under `schemas/`. Schemas govern structured asset manifests,
workflow contracts, installation manifests, and future validation inputs.

Lifecycle: proposed, created, validated, published, maintained, deprecated.

Dependencies: may be referenced by skills, workflows, adapters, installers, and
validation tools. Schema changes must consider compatibility.

## Adapters

Purpose: integrate ai-driven-sdlc with specific agents, editors, CLIs, or
runtimes without changing core framework semantics.

Ownership: future adapters should live outside core framework contracts and be
clearly marked as optional integration assets.

Lifecycle: proposed, created, validated, published, maintained, deprecated.

Dependencies: may depend on specific external tools, but those dependencies must
not leak into core skills, workflows, schemas, or installation contracts.

## Installation Assets

Purpose: install, upgrade, inspect, and remove the `.ai-sdlc/` operating layer in
target repositories.

Ownership: owned by installer, uninstaller, manifest, migration, and upgrade
documents or scripts.

Lifecycle: proposed, created, validated, published, maintained, deprecated.

Dependencies: depend on installation schemas, asset manifests, repository
detection rules, backup rules, and safety policies.

## Governance Assets

Purpose: define how the framework is controlled, changed, validated, and traced.

Ownership: owned by `AGENTS.md`, `docs/execution/`, decision records, risk
registers, validation protocols, command history, and release readiness rules.

Lifecycle: proposed, created, validated, published, maintained, deprecated.

Dependencies: depend on architectural principles, asset models, lifecycle
models, validation protocols, and traceability requirements.

## Documentation Assets

Purpose: make framework behavior discoverable and understandable to humans and
agents.

Ownership: owned by nearby documentation in `README.md`, `docs/`, and
asset-local README files.

Lifecycle: proposed, created, validated, published, maintained, deprecated.

Dependencies: depend on the governed assets they describe. Documentation must be
updated when the model, contract, or intended use of an asset changes.
