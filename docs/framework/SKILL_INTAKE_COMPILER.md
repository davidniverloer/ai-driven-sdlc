# Skill Intake Compiler

## Purpose

The Skill Intake Compiler is the official entry point through which new
expertise enters ai-driven-sdlc.

It exists to transform submitted prompts and protocols into governed proposal
packages without improving, rewriting, or directly promoting source material. It
is part of the Skill Evolution Engine and implements the intake path from raw
expertise to reviewable proposal.

The compiler does not implement skills. It does not modify approved skills,
approved workflows, or canonical Process Trees. Its responsibility is to
classify, map, package, validate, and propose while preserving source prompts
exactly.

## Trigger Mechanism

Canonical trigger phrases:

```text
Compile the next protocol into an ai-driven-sdlc skill.
Compile the next protocol into an ai-driven-sdlc workflow.
Compile the next protocol into an ai-driven-sdlc capability.
```

When a future agent receives one of these trigger phrases, it enters Skill
Intake Mode.

Skill Intake Mode means the agent must:

- preserve the submitted source prompt or protocol verbatim
- classify the protocol type
- classify the target capability
- map proposed repository placement
- map Process Tree impact
- perform similarity analysis
- generate a proposal package
- validate the proposal against governance

Skill Intake Mode does not authorize direct changes to approved skills,
approved workflows, or canonical Process Trees.

## Accepted Inputs

The Skill Intake Compiler accepts:

- single prompt
- A/B protocol
- multi-step protocol
- workflow protocol
- capability protocol

Unsupported inputs must fail intake rather than be silently reshaped.

## Intake Pipeline

```text
Input
↓
Protocol Recognition
↓
Capability Classification
↓
Repository Mapping
↓
Process Tree Mapping
↓
Similarity Analysis
↓
Proposal Generation
↓
Governance Validation
↓
Proposal Package
```

Each stage produces metadata or proposal artifacts. No stage may alter original
source prompts.

## Capability Classification

Incoming content must be mapped into one or more framework capability groups:

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

Expected behavior:

- identify the best-fit capability group
- identify secondary capability relationships when relevant
- document confidence level
- document classification rationale
- document ambiguity instead of resolving it by rewriting source material

The compiler does not implement classification algorithms. It defines the
expected classification contract.

## Repository Mapping

Repository mapping determines where a proposed skill, workflow, or capability
would live if promoted.

The authoritative repository placement model is defined in
`docs/framework/REPOSITORY_MAPPING_ENGINE.md`.

The compiler must:

- identify target capability
- identify target repository location
- generate placement rationale
- identify affected assets
- identify naming or location conflicts

The compiler must never infer placement silently. Every placement must be
documented in `repository-placement.md`.

Repository mapping is a proposal step. It must not create or modify canonical
assets directly.

## Process Tree Mapping

Process Tree mapping determines how the proposed asset relates to the execution
model.

The compiler must:

- identify affected nodes
- identify new nodes
- identify new branches
- identify consumed artifacts
- identify produced artifacts
- identify approval gate impact
- identify execution impact

Process Tree mapping must be documented in `process-tree-impact.md`.

Canonical Process Trees must not be modified directly during intake. If changes
are required, the compiler must record the proposed impact and required approval.

## Similarity Analysis

Similarity analysis compares the submitted source material and proposed asset
against existing framework assets.

The authoritative source for similarity determination is
`docs/framework/SIMILARITY_ANALYSIS_ENGINE.md`.

Possible outcomes:

- New Skill
- Enhancement Candidate
- Duplicate Candidate
- Replacement Candidate
- Workflow Component

Similarity analysis may identify relationships, overlap, risks, or reuse
opportunities. It must not modify approved assets.

## Proposal Generation

The compiler must produce a proposal package using the relevant proposal model.

For skill intake, the compiler must produce:

```text
proposal.yaml
classification.md
repository-placement.md
process-tree-impact.md
approval-checklist.md
source/
```

The `source/` directory must contain immutable copies of submitted prompts and
protocols. Derived reports must live outside `source/`.

## Prompt Fidelity

The compiler must preserve source prompts verbatim.

The compiler may:

- classify
- annotate externally
- map
- package

The compiler may never:

- rewrite
- optimize
- improve
- reinterpret
- paraphrase

submitted prompts.

Prompt fidelity requirements from `docs/framework/PROMPT_IMMUTABILITY.md` apply
to every intake.

## Failure Conditions

Proposal generation must fail when:

- protocol type is unsupported
- classification is too ambiguous to package responsibly
- repository placement conflicts with an existing asset
- Process Tree placement conflicts with execution order or artifact flow
- prompt fidelity cannot be verified
- required proposal package artifacts cannot be produced
- governance validation fails
- intake would require modifying an approved asset directly

Failures must be reported as intake findings, not resolved by rewriting prompts
or silently changing placement.
