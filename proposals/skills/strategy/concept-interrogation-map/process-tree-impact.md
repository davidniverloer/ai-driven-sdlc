# Process Tree Impact Report

## Affected Tree

```text
process-trees/default.md
```

## Affected Node

`PT-002`

Secondary relationship: `PT-003`

## Proposed Placement

`extends_existing_node`

## Creates New Node?

No

## Extends Existing Node?

Yes

## Introduces New Artifact?

Yes

## Introduces New Execution Path?

No

## Requires Process Tree Update?

No.

## Artifact Impact

### Consumed Artifacts

- `A-001 Raw Concept Intake Brief`
- External raw project concept
- Dialogue history from Action 1.1.A
- Global invariant rules, when available

### Produced Artifacts

- Concept Interrogation Map
- Wedge scope definition
- Contradiction Index

### Orphan Artifact Justification

The promoted skill preserves `A-002 Interrogated Concept Brief` as the Process
Tree output. The Concept Interrogation Map is treated as structured content
inside that artifact.

## Approval Gate Impact

No new human approval gate is proposed.

## Execution Order Impact

The proposal fits after `PT-001` Raw Concept Intake. It may extend `PT-002` and
may affect the boundary between `PT-002` and `PT-003`.

## Recommendation

Promoted as initial canonical package for `PT-002`.

No canonical Process Tree update is required because `PT-002` already points to:

```text
skills/strategy/concept-interrogation/
```

The boundary with `PT-003` should remain explicit in future refinements.
