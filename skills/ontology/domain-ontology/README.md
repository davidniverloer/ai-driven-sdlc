# Domain Ontology

## Purpose

Domain Ontology establishes the authoritative language of the system space
before features, requirements, UX, architecture, or execution planning are
designed.

It challenges fuzzy, overlapping, colloquial, or unstable terminology and then
compiles a canonical ontology with mutually exclusive entity definitions,
actors, external systems, relationships, business invariants, and banned
synonyms.

This skill is agent-agnostic. It does not assume a specific AI vendor, editor,
CLI, or runtime.

## Capability

`ontology`

## Inputs

- `A-003 Wedge Definition`
- Approved Concept Interrogation Map
- Dialogue history from ontology alignment
- Global invariant rules when available

## Outputs

- `A-004 Canonical Domain Ontology`
- Core domain entity definitions
- Resource and noun definitions
- Actor profiles
- External system boundary definitions
- Logical and cardinal relationships
- Universal business invariants
- Synonym Blacklist

## Dependencies

- `process-trees/default.md`
- `PT-003 Wedge Definition`
- `skills/strategy/concept-interrogation/`
- Immutable source prompts under `source/`

## Process Tree Relationship

This skill is the canonical implementation package for:

```text
PT-004 Canonical Domain Ontology
```

It consumes `A-003 Wedge Definition` and strategic context, then produces
`A-004 Canonical Domain Ontology`.

The ontology output is reused by strategy, requirements, UX, and downstream
framework activities that require stable domain language.

## Protocol Shape

This is an A/B protocol skill.

Action A performs interactive terminology interrogation and alignment.

Action B compiles the formal Canonical Domain Ontology after linguistic
alignment is complete.

Original prompt sources are preserved verbatim under `source/`.
