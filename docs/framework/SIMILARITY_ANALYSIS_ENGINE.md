# Similarity Analysis Engine

## Purpose

The Similarity Analysis Engine defines how proposed assets are compared against
existing framework assets before promotion is considered.

It exists to determine whether incoming work represents a new skill, an
enhancement, a duplicate, a replacement, a workflow component, or an
incompatible asset. This prevents duplicate canonical skills, unsafe
replacements, hidden capability overlap, repository conflicts, and Process
conflicts.

The engine supports governance by making comparison outcomes explicit,
traceable, and reviewable before approved assets are modified.

The Similarity Analysis Engine is a classification and comparison model. It does
not implement similarity algorithms, promote assets, modify approved assets, or
rewrite source prompts.

## Analysis Responsibilities

### Duplicate Detection

Identify when a proposed asset materially duplicates an existing framework
asset or canonical capability.

### Enhancement Detection

Identify when a proposed asset extends an existing skill or workflow while
preserving compatibility.

### Replacement Detection

Identify when a proposed asset is intended to supersede an existing canonical
skill or other governed asset.

### Capability Overlap Detection

Identify when a proposed asset overlaps with an existing capability family,
skill responsibility, workflow responsibility, or framework model boundary.

### Repository Overlap Detection

Identify when a proposed asset maps to an existing repository path, registry
entry, proposal package, or asset ownership area.

### Process Overlap Detection

Identify when a proposed asset affects existing Process nodes, branches,
artifact flow, execution order, or approval gates.

## Compared Asset Types

### Skills

Skills are the primary comparison target. Analysis should compare capability,
contract, inputs, outputs, dependencies, repository placement, lifecycle state,
and Process relationships.

### Workflows

Workflow comparison should identify overlapping orchestration, duplicated
execution paths, reused skill sequences, artifact handoffs, recovery behavior,
and approval gates.

### Processes

Process comparison should identify overlapping nodes, branches, artifact
flow, execution order, terminal outcomes, and human gates.

### Schemas

Schema comparison should identify contract overlap, version compatibility,
field-level responsibility, and downstream consumer impact. Full schema
comparison rules may be expanded once schemas are implemented.

### Adapters

Adapter comparison should identify overlapping integration targets, optional
dependency conflicts, vendor-specific assumptions, and leakage into core
framework semantics.

## Comparison Dimensions

### Capability Similarity

Compares the asset's purpose, capability family, responsibility boundary, and
domain coverage.

### Contract Similarity

Compares inputs, outputs, required artifacts, expected artifacts, completion
conditions, and compatibility boundaries.

### Dependency Similarity

Compares referenced skills, workflows, schemas, Process nodes, adapters,
external tools, and governance documents.

### Process Similarity

Compares Process nodes, branches, execution paths, artifact flow,
execution order, terminal classification, and approval gates.

### Artifact Similarity

Compares consumed artifacts, produced artifacts, handoff artifacts, validation
evidence, and required proposal outputs.

### Repository Placement Similarity

Compares repository paths, capability folders, proposal locations, canonical
locations, registry entries, and ownership boundaries.

### Lifecycle Similarity

Compares lifecycle state, promotion readiness, deprecation status, archive
status, replacement status, and proposal lineage.

## Similarity Outcomes

### Identical

Meaning: the proposed asset and existing asset have no material difference
across governed comparison dimensions.

Risk level: none.

Governance impact: no new asset should be created. Preserve existing references
and record the finding as evidence.

Promotion implications: promotion as a separate canonical asset should be
blocked as unnecessary.

### Equivalent

Meaning: differences exist but do not change capability, contract,
dependencies, repository placement, or Process behavior.

Risk level: low.

Governance impact: treat as clarification, metadata, or documentation work
unless a reviewer identifies a material change.

Promotion implications: promotion as a separate asset should usually be blocked;
patch-level update or proposal merge may be appropriate.

### Enhancement

Meaning: the proposal extends an existing asset while preserving compatibility
with current consumers and Process relationships.

Risk level: medium.

Governance impact: requires compatibility review, Skill Diff analysis, version
impact review, and affected asset review.

Promotion implications: may proceed as an enhancement candidate after review.

### Variant

Meaning: the proposal is related to an existing asset but has a distinct
context, constraint set, target use, or capability boundary.

Risk level: medium.

Governance impact: requires clear rationale for separate existence, repository
placement review, and Process relationship review.

Promotion implications: may proceed only when the distinction is explicit and
traceable.

### Replacement

Meaning: the proposal is intended to supersede an existing canonical asset.

Risk level: high.

Governance impact: requires deprecation planning, lifecycle transition review,
migration guidance, registry update planning, Skill Diff analysis, and Process
impact review.

Promotion implications: promotion requires explicit replacement approval.

### Duplicate

Meaning: the proposal materially duplicates an existing asset without a
governed reason to exist separately.

Risk level: high.

Governance impact: requires duplicate handling. The proposal should be merged,
rejected, or reclassified as an enhancement, variant, or replacement.

Promotion implications: promotion as a separate canonical asset must be blocked
unless governance approves a different outcome.

### Incompatible

Meaning: the proposal conflicts with existing contracts, dependencies,
capability ownership, repository placement, Process behavior, lifecycle
state, or prompt fidelity requirements.

Risk level: critical.

Governance impact: requires blocker resolution or rejection.

Promotion implications: promotion must be blocked until incompatibility is
resolved and revalidated.

## Duplicate Detection Rules

A proposal should be considered a duplicate when it:

- has the same primary capability and substantially the same contract as an
  existing skill
- produces the same outputs for the same inputs without a distinct governed use
  case
- maps to the same repository ownership and Process role without a
  replacement or enhancement rationale
- duplicates workflow orchestration without a distinct execution path
- repeats an existing schema, adapter, or governance role without a new
  compatibility boundary

Duplicate findings must be recorded, not silently resolved.

## Enhancement Detection Rules

A proposal should be considered an enhancement when it:

- adds compatible behavior to an existing asset
- preserves existing inputs and outputs
- preserves existing artifact flow
- preserves existing Process execution order unless a compatible extension
  is proposed
- does not require consumers to migrate immediately
- has a clear relationship to an existing canonical asset

Enhancements require compatibility review and version impact review before
promotion.

## Replacement Detection Rules

A proposal should be considered a replacement when it:

- explicitly claims to supersede an existing canonical skill
- removes or changes the expected contract of an existing skill
- changes the canonical Process role of an existing skill
- introduces a preferred capability that makes the existing asset deprecated
- requires migration from an existing asset

Replacement has deprecation implications: the replaced asset must receive a
deprecation record before it can be archived.

Replacement has lifecycle implications: the proposed asset must pass proposal,
validation, promotion, registry, and lifecycle governance before becoming
canonical.

Replacement has Process implications: affected nodes, branches, artifact
flow, execution order, and approval gates must be reviewed before promotion.

## Incompatibility Rules

A proposal is incompatible when it:

- violates prompt fidelity
- conflicts with an existing canonical contract
- changes artifact flow without Process approval
- depends on missing or prohibited assets
- introduces vendor lock-in into core assets
- maps to an owned repository location without approval
- conflicts with lifecycle rules
- creates unresolved duplicate or replacement ambiguity

Incompatible proposals must be blocked, deferred, or rejected with recorded
rationale.

## Similarity Report

The canonical report filename is:

```text
similarity-analysis.md
```

Required sections:

- compared assets
- comparison dimensions
- similarity outcome
- risk assessment
- recommendation

The canonical report structure is defined in
`docs/framework/SIMILARITY_REPORT_MODEL.md`.

## Prompt Fidelity Rules

The Similarity Analysis Engine may compare:

- metadata
- contracts
- dependencies
- Process relationships

The engine may not:

- rewrite prompts
- normalize prompts
- optimize prompts

Prompt source artifacts remain immutable.

Similarity reports may reference prompt source locations for traceability, but
they must not replace source prompts with rewritten summaries or optimized
versions.
