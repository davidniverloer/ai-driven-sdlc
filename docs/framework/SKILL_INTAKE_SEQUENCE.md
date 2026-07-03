# Skill Intake Sequence

This document is the authoritative reference sequence for Skill Intake.

## Canonical Sequence

```text
Trigger
↓
Recognition
↓
Classification
↓
Repository Mapping
↓
Process Mapping
↓
Similarity Analysis
↓
Proposal Generation
↓
Validation
↓
Promotion Review
```

## Stage Definitions

**Trigger**

The agent receives a canonical Skill Intake trigger phrase and enters Skill
Intake Mode.

**Recognition**

The submitted content is recognized as a single prompt, A/B protocol,
multi-step protocol, workflow protocol, or capability protocol.

**Classification**

The intake is mapped to a capability family such as `strategy`, `requirements`,
`ux`, `architecture`, `execution`, `governance`, or `framework`.

**Repository Mapping**

The intake receives a proposed repository location. Placement must be explained
and must not be inferred silently.

**Process Mapping**

The intake is mapped to the relevant Process, affected node, proposed
placement, artifact impact, approval gate impact, and execution order impact.

**Similarity Analysis**

The intake is compared conceptually against existing framework assets and
classified as new, enhancement, duplicate, replacement, or workflow component.

**Proposal Generation**

The intake is packaged according to the relevant proposal model. Source prompts
remain verbatim under `source/`.

**Validation**

The package is validated for prompt fidelity, protocol classification,
capability classification, repository mapping, Process mapping, package
completeness, and governance compliance.

**Promotion Review**

Only validated proposals may be considered for promotion. Promotion requires
governance approval and does not occur automatically.

## Non-Goals

The sequence does not implement compiler logic, validation scripts, skill
execution, workflow execution, or promotion automation.
