# ai-driven-sdlc

ai-driven-sdlc is an installable, agent-agnostic SDLC skill framework.

It injects structured AI workflows into any software repository through a local
`.ai-sdlc/` operating layer. The framework helps local AI agents move from raw
concept to structured requirements, architecture, execution planning, and
governed implementation.

## Design Principles

- Skills are grouped by capability, not by SDLC phase.
- Workflows orchestrate skills into phase-like sequences.
- Skills stay agent-agnostic and avoid vendor-specific assumptions.
- Installation must be safe for new and existing repositories.
- The repository should remain lightweight until real project needs justify
  additional structure.

## Repository Layout

```text
docs/       Framework and execution documentation.
process-trees/ Markdown execution maps for supported SDLC paths.
schemas/    Placeholder area for future machine-readable contracts.
skills/     Capability-grouped skill families.
workflows/  Workflow definitions that compose skills.
install.sh  Safe placeholder installer entrypoint.
uninstall.sh Safe placeholder uninstaller entrypoint.
```

## Process Trees

Process Trees are Markdown source-of-truth execution maps for ai-driven-sdlc.
They define execution order, skill and workflow sequence, artifact dependencies,
approval gates, repository placement, and downstream handoffs.

ai-driven-sdlc supports multiple Process Trees because different projects may
need different SDLC paths, such as default full SDLC, lightweight MVP, UX-first,
architecture-first, repository-bootstrap-only, or enterprise-governed flows.

Process Trees live under:

```text
process-trees/<name>.md
```

The active default canonical Process Tree is:

```text
process-trees/default.md
```

Legacy references to `docs/framework/PROCESS_TREE.md` should be treated as
compatibility pointers only.

To create one, use the canonical trigger phrase:

```text
Create an ai-driven-sdlc process tree named: ux-first
```

The command specification is documented in
`docs/commands/create-process-tree.md`.

Official command documentation is indexed at:

```text
docs/commands/README.md
```

## Creating Skills

## /skill-create

`/skill-create` explicitly activates Skill Intake Mode and converts the
following submitted prompt or protocol into a proposed ai-driven-sdlc skill
package.

Generated proposals are created under:

```text
proposals/skills/<capability>/<proposed-skill-id>/
```

Submitted prompts are preserved verbatim under `source/`. Approved skills,
approved workflows, and canonical Process Trees are never modified directly.

How to use it:

```text
/skill-create

[A Prompt]

[B Prompt]
```

## Skill Creation Command

The Skill Creation Command guide explains how contributors can submit prompts
and protocols for skill proposal generation:

```text
docs/guides/SKILL_CREATION_COMMAND_GUIDE.md
```

Trigger phrase:

```text
Compile the next protocol into an ai-driven-sdlc skill.
```

### Command

```text
Compile the next protocol into an ai-driven-sdlc skill.
```

This command activates Skill Intake Mode and generates a governed skill proposal
package from a submitted prompt or protocol.

### Example

```text
Compile the next protocol into an ai-driven-sdlc skill.

[A Prompt]

[B Prompt]
```

### Expected Outcome

The command preserves submitted prompts verbatim, classifies the protocol,
determines capability, maps repository placement, maps Process Tree impact,
runs similarity analysis, generates a proposal package, validates the proposal,
and produces a promotion recommendation.

The command generates proposals only. It does not create canonical skills,
promote skills, modify approved skills, modify approved workflows, or modify
canonical Process Trees.

## Skill Evolution System

The Skill Evolution System is the governance path for turning new expertise into
future framework assets. It exists so ai-driven-sdlc can absorb prompts,
protocols, and engineering methods without destabilizing approved skills,
workflows, Process Trees, schemas, adapters, or installation assets.

The system solves a central framework problem: new expertise must be captured
and evaluated, but approved assets must remain stable. Contributions therefore
enter as proposals first, are validated, and only become canonical after
governance review.

## Skill Evolution Flow

```text
Prompt / Protocol
↓
Skill Intake Compiler
↓
Capability Classification
↓
Repository Mapping
↓
Process Tree Mapping
↓
Similarity Analysis
↓
Proposal Package
↓
Validation
↓
Promotion Review
↓
Canonical Skill
```

Stages:

- Prompt / Protocol: submitted source expertise.
- Skill Intake Compiler: official entry point for new expertise.
- Capability Classification: maps the submission to a capability family.
- Repository Mapping: proposes where the skill would live if promoted.
- Process Tree Mapping: identifies execution order, artifacts, and gates.
- Similarity Analysis: checks whether the proposal is new, duplicate,
  replacement, enhancement, or workflow-related.
- Proposal Package: packages metadata, reports, checks, and source prompts.
- Validation: checks prompt fidelity, package completeness, placement, Process
  Tree impact, and governance.
- Promotion Review: human/governance review before canonicalization.
- Canonical Skill: approved reusable skill under `skills/`.

## Prompt Immutability

Submitted prompts are source artifacts. The framework preserves them verbatim.

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

## Proposal-First Evolution

New contributions become proposals first. Approved assets remain stable.
Promotion occurs through governance, not direct modification.

Proposal intake zones live under:

```text
proposals/
```

Skill proposal templates live under:

```text
proposals/templates/skill-proposal-template/
```

## Process Tree Awareness

Every proposed skill is mapped to both repository placement and Process Tree
placement before promotion. Repository placement explains where the asset would
live. Process Tree placement explains when it runs, what it consumes, what it
produces, and whether it changes approval gates.

The active default canonical Process Tree is:

```text
process-trees/default.md
```

## Capability Classification

Capability families:

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

## Future Self-Expansion

ai-driven-sdlc is designed to absorb new expertise over time while preserving
approved assets. The Skill Evolution System gives future agents a governed path
to classify, package, validate, review, and promote new capabilities without
vendor lock-in or silent framework drift.

## Current Status

This repository currently contains only the lightweight foundation. It does not
yet include full skills, workflow definitions, schemas, a Process Tree CLI, or a
production installer.

## Next Step

Define the `.ai-sdlc/` installation layout and the minimal manifest schema that
future installers and workflows will use.
