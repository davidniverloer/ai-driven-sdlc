# Skill Creation Command

## Purpose

The Skill Creation Command is the official operational entry point into the
Skill Evolution System.

Its trigger phrase is:

```text
Compile the next protocol into an ai-driven-sdlc skill.
```

The command accepts source prompts and protocols, preserves them verbatim, and
generates governed skill proposal packages. It does not create canonical skills
or modify approved framework assets.

The command specification is documented in
`docs/commands/compile-next-protocol-into-skill.md`.

## Command Lifecycle

The command lifecycle is:

```text
Trigger Phrase
↓
Skill Intake Mode
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
Skill Intake Validation
↓
Promotion Recommendation
↓
Halt
```

The command halts after producing a promotion recommendation. Promotion requires
separate governance.

## Execution Responsibilities

The command is responsible for:

- recognizing supported protocol types
- preserving source prompts verbatim
- classifying capability
- mapping repository placement
- mapping Process Tree impact
- running similarity analysis
- generating a skill proposal package
- generating validation evidence
- producing a promotion recommendation

The command must generate:

```text
proposal.yaml
classification.md
repository-placement.md
process-tree-impact.md
approval-checklist.md
source/
validation-report.md
```

## Governance Boundaries

The command may:

- classify submissions
- annotate externally
- map repository placement
- map Process Tree impact
- package proposal artifacts
- validate proposal readiness
- recommend promotion disposition

The command may not:

- rewrite prompts
- optimize prompts
- improve prompts
- reinterpret prompts
- paraphrase prompts
- merge prompts
- create canonical skills
- promote skills
- modify approved skills
- modify approved workflows
- modify canonical Process Trees

The command is proposal-generating only.

## Relationship to the Skill Evolution Engine

The Skill Evolution Engine defines the broader path from raw expertise to
governed proposal and eventual canonical skill. The Skill Creation Command is
the first official command that enters that path.

Relationship to existing models:

- Protocol Recognition follows `docs/framework/AB_PROTOCOL_MODEL.md`.
- Prompt preservation follows `docs/framework/PROMPT_IMMUTABILITY.md`.
- Repository Mapping follows `docs/framework/REPOSITORY_MAPPING_ENGINE.md`.
- Process Tree Mapping follows
  `docs/framework/PROCESS_TREE_INTEGRATION_RULES.md`.
- Similarity Analysis follows
  `docs/framework/SIMILARITY_ANALYSIS_ENGINE.md`.
- Skill Intake follows `docs/framework/SKILL_INTAKE_COMPILER.md`.
- Validation follows `docs/framework/SKILL_INTAKE_VALIDATION.md` and
  `docs/execution/VALIDATION_PROTOCOL.md`.
- Promotion recommendation follows
  `docs/framework/SKILL_PROMOTION_ENGINE.md`.

## Output Contract

The command must report:

- detected protocol type
- detected capability
- repository location
- Process Tree impact
- similarity outcome
- proposal location
- validation outcome
- promotion recommendation

The output is a recommendation for review. It is not approval and does not
authorize canonical writes.
