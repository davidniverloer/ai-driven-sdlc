# Skill Intake Dry Run

## Purpose

This dry run validates that the Skill Intake architecture can process a realistic
A/B protocol without implementing the Skill Intake Compiler or any automation.

The simulation checks whether the existing architecture can detect an intake
trigger, recognize an A/B protocol, classify capability, map repository
placement, map Process Tree impact, reason about similarity, describe proposal
package outputs, apply validation, and determine promotion readiness.

Outside the scope:

- no compiler implementation
- no automation
- no skill implementation
- no workflow implementation
- no schema implementation
- no generated proposal files

## Sample Input

Trigger:

```text
Compile the next protocol into an ai-driven-sdlc skill.
```

A Prompt: Discovery / Stress-Test

```text
Analyze the onboarding flow for a project management tool. Identify where a new
user may misunderstand workspace setup, invite flows, permissions, and first
task creation. Challenge assumptions about what the user already knows.
```

B Prompt: Synthesis / Formal Artifact

```text
Produce a UX onboarding-friction review protocol that lists user assumptions,
friction points, severity, evidence to collect, and recommended design checks.
Format the output as a repeatable skill proposal.
```

## Step 1 — Trigger Detection

Trigger recognized:

```text
Compile the next protocol into an ai-driven-sdlc skill.
```

Skill Intake Mode activated.

Expected behavior:

- preserve both submitted prompts verbatim
- begin protocol recognition
- do not rewrite or optimize source prompts
- do not modify approved skills, workflows, or Process Trees

## Step 2 — Protocol Recognition

Protocol Type:

```text
ab_protocol
```

Rationale:

- the A prompt performs discovery, stress-testing, and assumption challenge
- the B prompt performs synthesis into a formal repeatable artifact
- the relationship between A and B is ordered and meaningful

## Step 3 — Capability Classification

Capability:

```text
ux
```

Rationale:

- the protocol focuses on onboarding flow, user misunderstanding, permissions,
  first task creation, and design checks
- the intended output is a UX review protocol

Confidence:

```text
High
```

Secondary relationships:

- `requirements`, because onboarding assumptions may affect product
  requirements
- `governance`, because the output is a repeatable review protocol

## Step 4 — Repository Mapping

Proposed repository placement:

```text
skills/ux/onboarding-friction-review/
```

Placement rationale:

- the primary capability is UX
- the proposed skill is reusable across products with onboarding flows
- the skill reviews friction rather than implementing application behavior

Affected assets:

- possible future skill under `skills/ux/`
- possible proposal under `proposals/skills/`
- possible Process Tree mapping near UX reasoning nodes

## Step 5 — Process Tree Mapping

Affected Process Tree:

```text
process-trees/default.md
```

Affected node:

```text
PT-014 — Cognitive Friction
```

Placement recommendation:

```text
experimental extension after PT-014
```

Rationale:

- the proposed skill specializes onboarding friction analysis
- it consumes cognitive-friction and task-architecture style artifacts
- it may produce a targeted onboarding review artifact
- canonical placement should require approval because it would extend the
  default Process Tree

Expected artifact impact:

- consumes: A-014 Cognitive Friction Analysis, A-013 Task Architecture
- produces: proposed A-014a Onboarding Friction Review

Approval gate impact:

- no immediate new gate recommended
- canonical integration would require Process Tree approval

## Step 6 — Similarity Analysis

Outcome:

```text
Enhancement Candidate
```

Rationale:

- the proposed skill appears related to the existing canonical Cognitive
  Friction node
- it is narrower than the canonical UX friction capability
- it may be better treated as an extension or specialized sub-skill rather than
  a fully separate canonical node at first

Not selected:

- New Skill: possible, but too early without comparison to future UX skill
  inventory
- Duplicate Candidate: not enough evidence because the proposed onboarding scope
  is narrower and more operational

## Step 7 — Proposal Package Generation

Expected outputs only. No files are created in this simulation.

```text
proposal.yaml
classification.md
repository-placement.md
process-tree-impact.md
approval-checklist.md
source/
  discovery.original.md
  synthesis.original.md
```

Expected `proposal.yaml` highlights:

```text
proposal_id: skill-ux-onboarding-friction-review-v0.1.0
title: Onboarding Friction Review
capability: ux
protocol_type: ab_protocol
version: 0.1.0
status: Draft
proposed_repository_location: skills/ux/onboarding-friction-review/
process_tree_impact: experimental_extension
```

Source preservation:

- A prompt copied verbatim to `source/discovery.original.md`
- B prompt copied verbatim to `source/synthesis.original.md`
- derived reports live outside `source/`

## Step 8 — Validation

Prompt Fidelity Validation:

```text
PASS
```

Capability Validation:

```text
PASS
```

Repository Mapping Validation:

```text
PASS_WITH_WARNINGS
```

Expected warning:

- proposed location should be checked against future canonical UX skill registry

Process Tree Validation:

```text
PASS_WITH_WARNINGS
```

Expected warning:

- extension to canonical `process-trees/default.md` requires approval before
  canonical integration

Proposal Validation:

```text
PASS_WITH_WARNINGS
```

Expected warning:

- simulated package is structurally defined but not physically created

## Step 9 — Promotion Readiness

Readiness:

```text
Not ready for promotion
```

Blockers:

- no physical proposal package exists
- no validation report exists
- no approval record exists
- no canonical UX skill registry exists for similarity confirmation
- canonical Process Tree extension has not been approved

Recommendations:

- create the proposal package under `proposals/skills/`
- preserve A and B prompts under `source/`
- produce `validation-report.md`
- keep placement experimental until reviewed

## Step 10 — Architectural Findings

Strengths:

- the architecture can preserve A/B prompt fidelity
- protocol classification is clear
- capability classification has an obvious target
- repository mapping and Process Tree mapping are separable
- validation outcomes can express warnings without hiding blockers

Weaknesses:

- there is no canonical skill registry yet for similarity checks
- proposal package metadata is not schema-backed yet
- validation report structure exists but is not included in the Skill Proposal
  template yet

Gaps:

- no failed-intake record format
- no controlled vocabulary for Process Tree placement outcomes
- no schema for `proposal.yaml`
- no schema for `validation-report.md`
- no canonical registry for promoted skills

Future improvements:

- add schema-backed proposal metadata
- add validation report template to Skill Proposal packages
- define a Canonical Skill Registry
- define experimental-to-canonical Process Tree promotion rules
