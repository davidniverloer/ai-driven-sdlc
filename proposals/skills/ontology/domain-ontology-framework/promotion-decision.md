# Promotion Recommendation

## Proposal

`skill-ontology-domain-ontology-framework`

## Current Lifecycle State

Draft

## Validation Summary

The proposal validated as `PASS_WITH_WARNINGS`. The warning concerned the
unresolved representation of "global invariant rules" as a dependency.

The user approved promotion:

```text
Promote it
```

## Repository Placement

Canonical location:

```text
skills/ontology/domain-ontology/
```

## Process Tree Impact

Affected node:

```text
PT-004 Canonical Domain Ontology
```

No canonical Process Tree change is required because `PT-004` already points to
`skills/ontology/domain-ontology/`.

## Compatibility Impact

Compatible with the current Process Tree. The canonical package implements the
existing `PT-004` skill location and preserves `A-004 Canonical Domain Ontology`
as the Process Tree output.

## Governance Review

Human approval received in conversation:

```text
Promote it
```

## Decision

PROMOTE_WITH_WARNINGS

## Rationale

The proposal provides the initial canonical implementation package for the
existing `PT-004` skill location. It does not create a competing Process Tree
node and does not require modifying canonical Process Trees.

## Warnings

- "Global invariant rules" remain an unresolved dependency representation.
- Future governance should decide whether the Synonym Blacklist is mandatory
  for all ontology skill outputs.

## Blockers

None.

## Required Approvals

Human approval has been provided by the user.

## Lifecycle Transition

Draft proposal to Canonical skill.

## Canonical Registration Recommendation

Register as:

```text
ontology.domain-ontology
```

Canonical location:

```text
skills/ontology/domain-ontology/
```

## Follow-Up Actions

- Add a formal Skill Registry storage file once registry storage governance is
  defined.
- Define how global invariant rules should be represented as a dependency.
- Refine examples after the first real Canonical Domain Ontology output is
  produced.
