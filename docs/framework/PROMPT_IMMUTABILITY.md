# Prompt Immutability

## Purpose

Prompt Immutability exists to preserve author intent, traceability,
reproducibility, and auditability.

In ai-driven-sdlc, prompts and protocols are source assets. They may contain
expert judgment, sequencing logic, evaluation criteria, assumptions, or
comparison structures that must remain intact. If an agent rewrites, optimizes,
or reinterprets them, the framework can no longer prove what source material
entered the Skill Evolution Engine or why a later proposal was generated.

Prompt Immutability prevents:

- loss of author intent
- untraceable prompt drift
- hidden semantic changes
- unverifiable proposal lineage
- accidental merging of distinct protocols
- audit failures caused by modified source material

## Source Asset Definition

**Prompt**

A submitted instruction, question, task, rubric, or operating directive intended
to influence framework behavior or skill evolution.

**Protocol**

A submitted procedure, evaluation method, transformation sequence, or governance
instruction.

**A/B Protocol**

A paired or comparative protocol containing A and B prompt variants, comparison
criteria, or test conditions.

**Workflow Protocol**

A submitted sequence that describes how tasks, artifacts, skills, gates, or
handoffs should occur.

**Capability Protocol**

A submitted description of a reusable capability, reasoning pattern, skill
behavior, or domain-specific execution method.

All of these are source artifacts. They must be preserved verbatim.

## Allowed Transformations

The framework may:

- classify submitted prompts
- annotate submitted prompts externally
- tag submitted prompts
- map submitted prompts to repository or Process Tree locations
- package submitted prompts into proposals
- validate submitted prompts against governance
- version submitted prompts
- reference submitted prompts from proposals, decisions, or metadata

Allowed transformations must not alter the original prompt content.

## Forbidden Transformations

The framework may not:

- rewrite submitted prompts
- optimize submitted prompts
- improve submitted prompts
- simplify submitted prompts
- merge submitted prompts
- reinterpret submitted prompts
- paraphrase submitted prompts
- expand submitted prompts
- compress submitted prompts

Any exception requires explicit human authorization and must preserve the
original source artifact alongside any authorized derivative.

## Prompt Preservation Layer

The Prompt Preservation Layer is the governance boundary that protects source
prompts and protocols before the Skill Evolution Engine classifies or packages
them.

Responsibilities:

- preserve source prompts verbatim
- maintain source lineage
- maintain auditability
- maintain reproducibility
- distinguish original source artifacts from derived annotations or proposals
- ensure proposal packages include immutable originals

The layer does not improve prompts. It protects them.

## Traceability Rules

Every prompt entering the framework must preserve:

- source content
- source order
- source structure
- source wording

Derived metadata must reference the preserved source artifact instead of
replacing it.

If a prompt is split into multiple proposal concerns, the original full prompt
must still be stored unchanged.

If a prompt is related to another prompt, that relationship must be recorded
without changing either prompt.

## A/B Protocol Preservation

A prompts must remain unchanged.

B prompts must remain unchanged.

Relationships between A and B prompts must remain unchanged.

The framework may classify A/B protocols, tag their comparison purpose, map them
to proposal areas, and validate their preservation. The framework may not alter,
normalize, merge, rebalance, or rewrite either side of the comparison.

## Proposal Rules

Every proposal package must contain:

```text
original/
```

The `original/` directory must contain immutable copies of all submitted prompts
and protocols used as source material for the proposal.

Annotations, classifications, mappings, and proposal drafts must live outside
`original/` so the source record remains clean and auditable.

## Violation Examples

Allowed classification:

```text
Source prompt: "Create a rigorous UX review protocol for onboarding screens."
Classification: capability=ux, proposal_type=skill, likely_location=skills/ux/
```

The source prompt remains unchanged.

Forbidden rewriting:

```text
Original: "Create a rigorous UX review protocol for onboarding screens."
Modified: "Design a better onboarding UX audit method."
```

This changes wording and likely intent. It is not allowed.

Forbidden optimization:

```text
Original: "Compare protocol A and protocol B exactly as submitted."
Modified: "Compare the improved versions of protocol A and protocol B."
```

This alters the source protocol and invalidates traceability. It is not allowed.
