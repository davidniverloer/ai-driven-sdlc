# /skill-create Guide

`/skill-create` is the explicit slash command for converting submitted prompts
or protocols into ai-driven-sdlc skill proposals.

It activates Skill Intake Mode. Everything after the `/skill-create` line is
treated as source material for the proposed skill.

## How to Use It

```text
/skill-create

[A Prompt]

[B Prompt]
```

The first non-empty line, after trimming leading and trailing whitespace, must
be exactly `/skill-create`.

Natural-language trigger detection is forbidden. If the first non-empty line is
not `/skill-create`, this slash command is not active.

Agents may fix formatting on the command line, such as a trailing space after
`/skill-create` or extra blank lines before the command. They may not reformat,
rewrite, or clean up the submitted prompt text that follows.

## What It Produces

The command creates a proposed skill package under:

```text
proposals/skills/<capability>/<proposed-skill-id>/
```

The proposal package contains:

- `proposal.yaml`
- `classification.md`
- `repository-placement.md`
- `process-impact.md`
- `similarity-analysis.md`
- `approval-checklist.md`
- `validation-report.md`
- `source/`

## Source Material

All submitted prompts and protocols are preserved verbatim under `source/`.

The command may classify, annotate, map, package, and validate the submission.
It may not rewrite, optimize, improve, simplify, merge, paraphrase, or
reinterpret submitted prompts.

## Supported Inputs

Use `/skill-create` for:

- single prompts
- A/B protocols
- multi-step protocols
- workflow-like protocols
- capability-like protocols

## What It Does Not Do

`/skill-create` does not create canonical skills, promote skills, modify
approved skills, modify approved workflows, modify canonical Processes,
bypass validation, or bypass governance.

The output is a skill proposal and promotion recommendation only.
