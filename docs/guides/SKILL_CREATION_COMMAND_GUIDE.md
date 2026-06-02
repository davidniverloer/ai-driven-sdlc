# Skill Creation Command Guide

## Overview

The Skill Creation Command is the user-facing entry point for turning submitted
prompts and protocols into ai-driven-sdlc skill proposals.

It exists so contributors can bring new expertise into the framework without
directly changing approved skills, approved workflows, or canonical Process
Trees. The command routes submissions through the Skill Evolution System, where
they are classified, mapped, packaged, validated, and given a promotion
recommendation.

The command creates proposal artifacts only. It does not create canonical
skills.

## Command

Use the exact trigger phrase:

```text
Compile the next protocol into an ai-driven-sdlc skill.
```

The prompt or protocol to be compiled should follow the trigger phrase.

## Supported Inputs

The command supports:

- single prompts
- A/B protocols
- multi-step protocols
- workflow protocols
- capability protocols

A single prompt is one source prompt that may become a proposed skill.

An A/B protocol contains two related prompts, such as a discovery prompt and a
synthesis prompt, that must remain separate and ordered.

A multi-step protocol contains an ordered procedure. The order is preserved as
source material.

A workflow protocol describes a sequence that may become a workflow component or
inform a future workflow.

A capability protocol describes reusable expertise that may map to one or more
framework capability families.

## What Happens Internally

```text
Protocol Submission
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
Proposal Package Generation
↓
Validation
↓
Promotion Recommendation
```

Protocol Submission: the contributor provides the source prompt or protocol.

Protocol Recognition: the framework determines whether the input is a single
prompt, A/B protocol, multi-step protocol, workflow protocol, or capability
protocol.

Capability Classification: the framework identifies the best-fit capability
family, such as strategy, requirements, UX, architecture, execution, governance,
or bootstrapping.

Repository Mapping: the framework determines where the proposed skill would
belong if it were later promoted.

Process Tree Mapping: the framework determines how the proposed skill relates to
the active canonical Process Tree.

Similarity Analysis: the framework checks whether the submission appears to be
new, an enhancement, a duplicate, a replacement, or a workflow component.

Proposal Package Generation: the framework creates proposal files under the
appropriate proposal location.

Validation: the framework checks prompt fidelity, classification, repository
mapping, Process Tree impact, and proposal completeness.

Promotion Recommendation: the framework recommends whether the proposal appears
ready for promotion consideration, should be revised, or should be blocked.

## Prompt Immutability

Submitted prompts are preserved verbatim.

The framework may:

- classify
- annotate
- map
- package
- validate

The framework may not:

- rewrite
- optimize
- improve
- reinterpret

submitted prompts.

Derived files may explain, classify, or map the prompts, but they do not replace
the original source prompt files.

## Example A/B Protocol

```text
Compile the next protocol into an ai-driven-sdlc skill.

A Prompt:
Interview stakeholders to identify the target user, the problem they are trying
to solve, the current workaround, constraints, risks, and success criteria.

B Prompt:
Synthesize the interview findings into a concise requirements brief with user
goals, non-goals, assumptions, open questions, and acceptance criteria.
```

The A prompt and B prompt enter the system as source prompts. They remain
separate, ordered, and immutable.

## Generated Outputs

The command generates a proposal package containing:

```text
proposal.yaml
classification.md
repository-placement.md
process-tree-impact.md
approval-checklist.md
source/
validation-report.md
```

`proposal.yaml` records proposal metadata, lifecycle state, capability,
repository target, and traceability fields.

`classification.md` explains protocol type and capability classification.

`repository-placement.md` explains where the proposed skill would live if
promoted and records placement rationale or collisions.

`process-tree-impact.md` explains how the proposed skill relates to Process Tree
nodes, branches, artifact flow, execution order, and approval gates.

`approval-checklist.md` records review expectations before promotion can be
considered.

`source/` contains immutable copies of the submitted source prompts and
protocols.

`validation-report.md` records validation results and blockers.

## Process Tree Integration

Every proposed skill must be checked against the active canonical Process Tree.

Process Tree placement determines when a skill would run, what artifacts it
would consume, what artifacts it would produce, and whether it affects approval
gates or execution order.

Process Tree impact analysis is required because repository placement alone
does not prove that a skill fits the framework execution model.

## Similarity Analysis

The command determines whether the submission appears to be:

- New Skill
- Enhancement Candidate
- Duplicate Candidate
- Replacement Candidate
- Workflow Component

New Skill means the submission appears to introduce a distinct capability.

Enhancement Candidate means the submission may extend an existing skill.

Duplicate Candidate means the submission may overlap too closely with an
existing skill.

Replacement Candidate means the submission may supersede an existing skill.

Workflow Component means the submission may be better treated as part of a
workflow rather than a standalone skill.

## Validation

Validation checks include:

- Prompt Fidelity Validation
- Capability Validation
- Repository Mapping Validation
- Process Tree Validation
- Proposal Validation

Validation confirms that the proposal package is complete enough for review and
that the command did not bypass governance or alter source prompts.

## Promotion Recommendation

The command generates a promotion recommendation.

The recommendation may indicate that the proposal is ready for promotion
consideration, should be revised, is blocked, or should not proceed as a
canonical skill.

The command does not promote skills.

The command does not create canonical skills.

Promotion requires separate governance review.

## Non-Goals

The command does not:

- modify approved skills
- modify approved workflows
- modify canonical Process Trees
- bypass governance
- bypass validation

It also does not rewrite, optimize, improve, reinterpret, or merge submitted
prompts.

## Best Practices

Submit the complete source prompt or protocol in the order it should be
preserved.

Label A/B prompts clearly when submitting an A/B protocol.

Include enough context for capability classification, such as intended audience,
problem, inputs, outputs, and expected use.

Avoid mixing unrelated protocols in one submission.

State known constraints, dependencies, and expected artifacts when available.

Do not pre-edit the prompt to fit framework terminology if that would change the
source material. The framework can classify and map the prompt externally while
preserving the original.
