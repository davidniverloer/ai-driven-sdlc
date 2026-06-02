# /skill-create

## Command

```text
/skill-create
```

## Purpose

`/skill-create` activates Skill Intake Mode and converts the following submitted
prompt or protocol into a proposed ai-driven-sdlc skill package.

The command generates skill proposals only. It does not create canonical skills
directly.

## Activation Rule

The first non-empty line, after trimming leading and trailing whitespace, must
be exactly:

```text
/skill-create
```

Natural-language trigger detection is forbidden.

Agents may correct activation-line formatting only, such as trailing spaces or
extra blank lines before `/skill-create`. This normalization applies only to the
command line. It must not alter submitted source prompts or protocols.

## Supported Inputs

The command supports:

- single prompt
- A/B protocol
- multi-step protocol
- workflow-like protocol
- capability-like protocol

## Execution Pipeline

```text
/skill-create
↓
Prompt Preservation
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
```

## Generated Proposal Location

Generated proposals must be placed under:

```text
proposals/skills/<capability>/<proposed-skill-id>/
```

The capability and proposed skill ID must be derived through governed
classification and repository mapping. They must not be silently invented.

## Generated Files

The command generates:

- `proposal.yaml`
- `classification.md`
- `repository-placement.md`
- `process-tree-impact.md`
- `similarity-analysis.md`
- `approval-checklist.md`
- `validation-report.md`
- `source/`

## Source Preservation Rule

All submitted prompts must be stored verbatim under `source/`.

Activation-line formatting normalization is not source prompt rewriting.

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
- simplify
- merge
- paraphrase
- reinterpret

submitted prompts.

## Non-Goals

The command must not:

- create canonical skills
- promote skills
- modify approved skills
- modify approved workflows
- modify canonical Process Trees
- bypass validation
- bypass governance
