# Compile the Next Protocol Into a Skill

## Command Name

Compile the next protocol into an ai-driven-sdlc skill.

## Purpose

This command transforms a submitted prompt or protocol into an ai-driven-sdlc
skill proposal package.

Use it when a user has source expertise, a prompt, an A/B protocol, a multi-step
procedure, a workflow-oriented protocol, or a capability protocol that should be
evaluated as a future framework skill.

The command solves the intake problem: new expertise needs a governed path into
the framework, but approved skills, approved workflows, and canonical Processes
must remain stable. The command generates proposals only.

## Trigger Phrase

The exact trigger phrase is:

```text
Compile the next protocol into an ai-driven-sdlc skill.
```

This trigger phrase activates Skill Intake Mode.

## Supported Inputs

The command supports:

- single prompt
- A/B protocol
- multi-step protocol
- workflow protocol
- capability protocol

Unsupported inputs must fail intake or be recorded as blocked. They must not be
silently reshaped into supported inputs.

## Execution Pipeline

```text
Trigger Phrase
↓
Protocol Recognition
↓
Capability Classification
↓
Repository Mapping
↓
Process Mapping
↓
Similarity Analysis
↓
Proposal Package Generation
↓
Skill Intake Validation
↓
Promotion Recommendation
```

The command must halt after promotion recommendation.

## Prompt Fidelity Rules

The command must preserve source prompts verbatim.

The command may:

- classify
- annotate
- map
- package
- validate

The command may not:

- rewrite
- optimize
- improve
- reinterpret
- paraphrase
- merge

submitted prompts.

Source prompt copies must remain separate from derived reports, metadata,
classification, repository placement, Process impact, validation findings,
and promotion recommendations.

## Repository Placement Rules

The command must:

- determine capability
- determine repository location
- generate `repository-placement.md`

Repository placement is governed by
`docs/framework/REPOSITORY_MAPPING_ENGINE.md`.

The command must not create canonical skills directly.

## Process Rules

The command must:

- inspect the active canonical Process
- determine Process impact
- generate `process-impact.md`

The active canonical Process is:

```text
processes/default.md
```

The command must not modify canonical Processes directly.

## Similarity Analysis Rules

The command must determine whether the submission is:

- New Skill
- Enhancement Candidate
- Duplicate Candidate
- Replacement Candidate
- Workflow Component

Similarity analysis is governed by
`docs/framework/SIMILARITY_ANALYSIS_ENGINE.md`.

## Proposal Package Generation

The command must generate the following inside the appropriate proposal
location:

```text
proposal.yaml
classification.md
repository-placement.md
process-impact.md
approval-checklist.md
source/
validation-report.md
```

The proposal location must be determined by repository mapping. Source prompts
must be preserved under `source/`.

## Validation Requirements

The command must invoke:

- Prompt Fidelity Validation
- Capability Validation
- Repository Mapping Validation
- Process Validation
- Proposal Validation

Validation failures must be reported. They must not be resolved by rewriting
source prompts or modifying approved assets.

## Output Requirements

The command must output:

- detected protocol type
- detected capability
- repository location
- Process impact
- similarity outcome
- proposal location
- validation outcome
- promotion recommendation

The command must halt after recommendation.

## Explicit Non-Goals

The command must not:

- create canonical skills
- promote skills
- modify approved skills
- modify approved workflows
- modify canonical Processes
