# Skill Evolution Overview

## Architecture Summary

The Skill Evolution System is the governed path by which new expertise enters
ai-driven-sdlc.

It accepts prompts and protocols as source artifacts, preserves them verbatim,
classifies their protocol and capability type, maps them to repository and
Process locations, packages them as proposals, validates those proposals,
and prepares them for promotion review.

It is designed to let the framework expand itself safely while approved assets
remain stable.

## Lifecycle Summary

```text
Prompt / Protocol
↓
Skill Intake Compiler
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
Proposal Package
↓
Skill Intake Validation
↓
Promotion Review
↓
Canonical Skill
```

## Relationship Diagrams

### Source to Proposal

```text
source prompt
  -> prompt immutability
  -> protocol recognition
  -> skill intake compiler
  -> skill proposal package
```

### Proposal to Execution Model

```text
skill proposal
  -> repository-placement.md
  -> process-impact.md
  -> processes/default.md or experimental process
```

### Proposal to Promotion

```text
skill proposal
  -> validation-report.md
  -> approval checklist
  -> promotion review
  -> canonical skill
```

## Core Guarantees

- Source prompts remain verbatim.
- New contributions enter as proposals.
- Approved assets remain stable.
- Process impact is required for proposed skills.
- Validation happens before promotion consideration.
- Promotion requires governance approval.

## Related Framework Documents

- `PROMPT_IMMUTABILITY.md`: source prompt preservation.
- `AB_PROTOCOL_MODEL.md`: protocol classification.
- `SKILL_EVOLUTION_ENGINE.md`: evolution subsystem architecture.
- `SKILL_INTAKE_COMPILER.md`: intake path from protocol to proposal.
- `SKILL_INTAKE_VALIDATION.md`: validation layer before promotion.
- `SKILL_INTAKE_VALIDATION_REPORT.md`: validation report structure.
- `PROPOSAL_ARCHITECTURE.md`: proposal-first framework evolution.
- `PROPOSAL_LIFECYCLE.md`: proposal states and transitions.
- `SKILL_PROPOSAL_MODEL.md`: required package shape for proposed skills.
- `PROCESS_INTEGRATION_RULES.md`: Process placement rules.
- `processes/default.md`: active default canonical Process.
