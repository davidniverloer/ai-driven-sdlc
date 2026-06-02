# Proposal Architecture

## Purpose

Proposals exist because ai-driven-sdlc must evolve without destabilizing
approved assets.

Approved framework assets remain stable. New expertise, protocols, Process Tree
changes, schemas, adapters, workflows, and installation changes must not enter
the framework directly. They first become proposals so they can be reviewed,
validated, traced, and approved before promotion.

Proposal Architecture creates a controlled path from source material to
canonical asset. It supports future automation by the Skill Evolution Engine
while preserving human approval, validation, prompt immutability, and Process
Tree governance.

## Proposal Categories

### Skill Proposal

A proposed new skill or change to a skill. Skill proposals must identify
capability group, source material, repository placement, Process Tree impact,
similar existing skills, validation requirements, and promotion readiness.

### Workflow Proposal

A proposed new workflow or workflow change. Workflow proposals must identify
orchestration intent, referenced skills, artifact handoffs, dependency chains,
approval gates, validation requirements, and Process Tree impact.

### Process Tree Proposal

A proposed new Process Tree or Process Tree change. Process Tree proposals must
identify execution order, repository placement, artifacts, approval gates,
affected canonical trees, and validation requirements.

### Schema Proposal

A proposed schema or schema change. Schema proposals must identify contract
purpose, versioning, compatibility impact, migration expectations, validation
rules, and affected consumers.

### Adapter Proposal

A proposed adapter or adapter change. Adapter proposals must identify optional
integration behavior, external dependencies, supported tools, isolation from
core semantics, and validation expectations.

### Installation Proposal

A proposed installer, uninstaller, upgrade, manifest, or removal behavior.
Installation proposals must identify file ownership, backup behavior, safety
rules, rollback expectations, and compatibility impact.

## Proposal Lifecycle

```text
Draft
↓
Proposed
↓
Validated
↓
Approved
↓
Promoted
↓
Canonical
```

**Draft**

The proposal is being assembled. It may be incomplete and must not be promoted.

**Proposed**

The proposal has enough structure to be reviewed.

**Validated**

The proposal has passed applicable validation checks.

**Approved**

The proposal has explicit governance approval for promotion.

**Promoted**

The approved proposal has been applied to the canonical asset area.

**Canonical**

The promoted asset is now an approved framework asset and is no longer governed
as a proposal.

## Proposal Ownership

**Proposal Author**

Creates or assembles the proposal and records source material, intent, and
initial mapping.

**Proposal Reviewer**

Reviews structure, consistency, compatibility, Process Tree impact, and
validation evidence.

**Proposal Approver**

Grants explicit approval for promotion when governance requirements are met.

**Promotion Authority**

Executes or authorizes the move from proposal to canonical asset. Promotion
authority must respect protected operation governance and cannot bypass
validation.

## Proposal Boundaries

Proposals may:

- preserve and reference source material
- describe proposed assets
- classify asset category and lifecycle state
- map proposed repository placement
- map Process Tree impact
- identify validation requirements
- document compatibility impact
- prepare promotion packages

Proposals may not:

- directly modify approved assets
- bypass proposal review
- bypass validation
- bypass human approval when required
- overwrite canonical Process Trees
- rewrite source prompts or protocols
- publish themselves as canonical assets

## Proposal Storage Model

Proposal assets live under:

```text
proposals/
```

Category-specific intake zones:

```text
proposals/skills/
proposals/workflows/
proposals/process-trees/
proposals/schemas/
proposals/adapters/
proposals/installers/
```

Each proposal should keep source material, metadata, validation evidence, and
promotion readiness notes together. Future schemas should define the exact
package shape.

## Proposal Naming Convention

Proposal identifiers should be stable, lowercase, and category-scoped.

Recommended shape:

```text
<category>-<short-name>-v<major>.<minor>.<patch>
```

Examples:

```text
skill-ux-friction-analysis-v0.1.0
workflow-governed-implementation-v0.1.0
process-tree-ux-first-v0.1.0
schema-skill-manifest-v0.1.0
adapter-codex-v0.1.0
installer-core-v0.1.0
```

Proposal files or directories should include the proposal ID and lifecycle state
in metadata. Version `0.x` indicates draft or pre-canonical proposal maturity.

## Proposal Promotion Readiness

A proposal may become canonical only when:

- proposal category is clear
- lifecycle state is valid
- ownership is documented
- source material is preserved
- repository placement is defined
- Process Tree impact is assessed
- compatibility impact is assessed
- breaking-change impact is assessed
- deprecation impact is assessed when applicable
- validation evidence is complete
- approval is recorded
- promotion steps are explicit
- rollback or remediation expectations are documented
