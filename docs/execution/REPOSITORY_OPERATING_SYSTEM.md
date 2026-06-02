# Repository Operating System

## Purpose

The Repository Operating System is the governance, traceability, execution,
validation, and architectural control layer for ai-driven-sdlc.

It defines how the framework evolves. It protects the repository from vendor
lock-in, unsafe installation behavior, undocumented contracts, workflow drift,
schema drift, and untraceable architectural changes.

The ROS governs future work on skills, workflows, schemas, adapters,
installation mechanisms, validation mechanisms, documentation, and governance
assets.

## Governed Asset Types

The authoritative asset taxonomy is defined in
`docs/framework/ASSET_MODEL.md`.

**Skills**

Skills are atomic executable capabilities. They live under `skills/` and are
organized by capability, not by SDLC phase. Their contracts must define purpose,
inputs, outputs, dependencies, and expected use.

**Workflows**

Workflows orchestrate skills into phase-like SDLC sequences. They live under
`workflows/` and define ordering, dependency chains, decision points, and
artifact passing.

**Schemas**

Schemas define durable machine-readable contracts. They live under `schemas/`
and should be created before automation depends on structured data.

**Adapters**

Adapters are optional integration layers for specific agents, editors, CLIs, or
runtimes. They must not change core framework semantics or introduce vendor
requirements into core assets.

**Installation Assets**

Installation assets include installers, uninstallers, manifests, upgrade rules,
and removal rules. They must be safe for new and existing repositories.

**Governance Assets**

Governance assets define repository control rules, decisions, risks, validation
expectations, command history, and release criteria. They must remain
discoverable and internally consistent.

**Documentation Assets**

Documentation explains the framework model, execution rules, validation
requirements, risks, decisions, and command history. Documentation is a governed
asset because it defines how future agents reason about the repository.

## Repository Evolution Model

Framework assets evolve through documented stages:

1. Proposal: identify the need, asset type, intended contract, and affected
   documents.
2. Modeling: define the expected behavior, inputs, outputs, compatibility, and
   validation requirements before implementation.
3. Introduction: add the smallest coherent asset or document change.
4. Validation: apply the validation protocol for the governed asset type.
5. Publication: mark the asset as ready for reuse only after validation and
   documentation are complete.
6. Deprecation: document replacement guidance before removing or breaking an
   existing contract.

Until versioning is formalized, prefer additive changes over destructive
changes.

## Lifecycle Enforcement

The lifecycle model is defined in `docs/framework/LIFECYCLE_MODEL.md`.

Agents must identify the lifecycle state of any governed asset they create or
change. Publication requires validation evidence and a documented contract.
Deprecation requires replacement guidance or an explicit reason no replacement
exists.

Assets must not move from proposal or creation directly to publication when they
have unresolved references, missing contracts, undocumented dependencies, or
unreviewed compatibility impact.

## Process Tree Governance

The Process Tree is part of the Repository Operating System.
`process-trees/default.md` is the active default canonical Process Tree for
ai-driven-sdlc capabilities. It defines ordered execution, node contracts,
artifact flow, repository placement, and human approval gates.

`docs/framework/PROCESS_TREE.md` is retained only as a legacy compatibility
pointer when present.

Agents must check `process-trees/default.md` before creating or modifying skills
or workflows. Agents must update the relevant Process Tree when execution order,
repository placement, dependencies, artifacts, or human approval gates change.
The policy for deciding when updates are required is defined in
`docs/execution/PROCESS_TREE_POLICY.md`.

Process Tree changes are governance changes. They must be traceable through
command history and validated through Process Tree Integrity checks in
`docs/execution/VALIDATION_PROTOCOL.md`.

## Prompt Immutability Governance

Prompt Immutability is part of the Repository Operating System.

Submitted prompts and protocols are source assets. They must be preserved
verbatim to maintain auditability, traceability, reproducibility, and author
intent.

Agents may classify, annotate externally, tag, map, package, validate, version,
and reference submitted prompts. Agents must not rewrite, optimize, improve,
simplify, merge, reinterpret, paraphrase, expand, or compress submitted prompts
without explicit human authorization.

Proposal packages that derive from submitted prompts must preserve immutable
copies of the original source material and keep derived annotations separate from
the original content.

## Change Management Rules

**Safe Changes**

Safe changes clarify documentation, add non-breaking examples, introduce new
draft assets, improve traceability, or add validation expectations without
changing existing contracts.

**Risky Changes**

Risky changes affect asset organization, installation behavior, schema shape,
workflow references, skill boundaries, or governance rules. Risky changes
require explicit validation and may require a decision record.

**Breaking Changes**

Breaking changes remove or rename published assets, change required schema
fields, invalidate workflow references, alter skill contracts, or modify frozen
invariants. Breaking changes require approval, an architectural decision,
migration guidance, and validation of affected dependents.

## Validation Requirements

Every material change must be validated against
`docs/execution/VALIDATION_PROTOCOL.md`.

Minimum validation expectations:

- inspect the complete repository tree after structural changes
- confirm governed assets live in expected directories
- confirm references between documents, skills, workflows, and schemas resolve
- confirm no core asset requires a specific AI vendor
- confirm install-related behavior remains safe and reversible
- confirm relevant documentation and decisions are updated

Validation findings should be recorded in the command history or summarized in
the implementation output.

## Validation Enforcement

Validation is mandatory for material changes. Until validation scripts exist,
agents must perform protocol checks manually and report what was checked.

If validation uncovers a conflict between model documents, governance documents,
or existing assets, the conflict must be documented and resolved explicitly
before publication.

## Traceability Requirements

The following must be traceable:

- why major framework structures exist
- why skill, workflow, schema, adapter, or installation contracts change
- which risks are introduced, reduced, or accepted
- which validation expectations apply to a changed asset
- which command or work item introduced a material change
- whether a change is safe, risky, or breaking

Traceability is maintained through `AGENTS.md`, decision records, the risk
register, validation protocol, command history, and nearby model documentation.

## Traceability Enforcement

Material ROS changes must update command history. Architectural changes must
update the decision log. Risk changes must update the risk register.

Traceability cannot rely only on conversation history. Durable repository changes
must leave durable repository evidence.

## Release Readiness Criteria

A future release is not ready until:

- governed assets have documented contracts
- workflows reference existing skills and schemas
- schemas have compatibility and versioning expectations
- installation, upgrade, and removal behavior is safe
- adapter behavior is optional and isolated from core semantics
- validation expectations have been applied and recorded
- architectural decisions are current
- known risks are reviewed
- documentation is complete and discoverable
- the repository tree matches the documented model
