# Skill Model

## What is a Skill

A skill is the atomic executable capability of ai-driven-sdlc.

It captures a reusable unit of software engineering reasoning or execution that
an AI agent can apply within a repository. A skill should be useful across
multiple workflows and should not depend on one specific AI vendor, editor, CLI,
or runtime.

## Skill Characteristics

**Purpose**

A skill must state the capability it provides and the engineering problem it
helps solve.

**Inputs**

A skill must define what context, artifacts, files, decisions, or prior outputs
it expects before use.

**Outputs**

A skill must define the artifacts, decisions, summaries, plans, or validation
results it produces.

**Contracts**

A skill contract defines required inputs, expected outputs, lifecycle state,
compatibility expectations, and safety constraints.

**Dependencies**

A skill must identify other skills, schemas, workflows, documents, or external
tools it depends on. Core skills should avoid mandatory vendor-specific
dependencies.

**Discovery Protocol**

A skill should be discoverable by capability group, name, purpose, lifecycle
state, and contract. Future manifests should make discovery machine-readable.

**Synthesis Protocol**

A skill should explain how it turns inputs into outputs. The synthesis protocol
should be portable enough for different agents to execute without relying on
vendor-specific prompt syntax.

## Capability-Oriented Organization

Skills are grouped by capability rather than SDLC phase because the same
capability can appear in multiple phases.

For example, requirements reasoning may be used during initial planning,
architecture review, implementation validation, or change impact analysis.
Putting that skill in a phase folder would make it harder to reuse and would
encourage duplication.

Initial capability groups:

- `strategy`
- `ontology`
- `requirements`
- `ux`
- `architecture`
- `execution`
- `devex`
- `governance`
- `bootstrapping`

## Skill Lifecycle

**Proposal**

Define the need, capability group, intended inputs, intended outputs, and
expected consumers before creating the skill.

**Creation**

Create the smallest coherent skill definition that satisfies the proposed
contract. Avoid embedding workflow sequencing in the skill.

**Validation**

Validate structure, contracts, dependencies, agent agnosticism, and references
according to `docs/execution/VALIDATION_PROTOCOL.md`.

**Publication**

Publish the skill only when its contract is documented and it can be composed by
workflows without hidden assumptions.

**Deprecation**

Deprecate before removing or replacing a skill. Document the replacement path,
affected workflows, and migration guidance.
