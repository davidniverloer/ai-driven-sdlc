# Concept Interrogation

## Purpose

Concept Interrogation challenges a raw project concept before downstream SDLC
work begins.

It exposes unclear intent, hidden assumptions, behavioral risks, structural
risks, external constraints, infrastructure dependencies, and unresolved
strategic tensions. It also isolates the smallest meaningful entry point of
value, referred to as the Wedge.

This skill is agent-agnostic. It does not assume a specific AI vendor, editor,
CLI, or runtime.

## Capability

`strategy`

## Inputs

- `A-001 Raw Concept Intake Brief`
- External raw project concept
- User dialogue during concept interrogation
- Global invariant rules when available

## Outputs

- `A-002 Interrogated Concept Brief`
- Concept Interrogation Map
- Clarifying strategic questions
- Hidden risk and dependency findings
- Minimal Wedge scope
- Contradiction Index

## Dependencies

- `process-trees/default.md`
- `PT-001 Raw Concept Intake`
- `PT-003 Wedge Definition`
- Immutable source prompts under `source/`

## Process Tree Relationship

This skill is the canonical implementation package for:

```text
PT-002 Concept Interrogation & Stress Testing
```

It consumes `A-001 Raw Concept Intake Brief` and produces `A-002 Interrogated
Concept Brief`.

The output may inform `PT-003 Wedge Definition`, but it does not replace the
separate Wedge Definition node unless the Process Tree is changed through
governance.

## Protocol Shape

This is an A/B protocol skill.

Action A performs interactive strategic interrogation and clarifying question
generation.

Action B compiles the formal Concept Interrogation Map after strategic alignment
is complete.

Original prompt sources are preserved verbatim under `source/`.
