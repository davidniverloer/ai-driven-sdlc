# Process Tree Impact Report

## Affected Tree

```text
process-trees/default.md
```

## Affected Node

`PT-004`

## Proposed Placement

`extends_existing_node`

## Creates New Node?

No

## Extends Existing Node?

Yes

## Introduces New Artifact?

No

## Introduces New Execution Path?

No

## Requires Process Tree Update?

No.

## Artifact Impact

### Consumed Artifacts

- `A-003 Wedge Definition`
- Strategic context from the approved Concept Interrogation Map
- Dialogue history from Action 1.2.A
- Global invariant rules, when available

### Produced Artifacts

- `A-004 Canonical Domain Ontology`
- Synonym Blacklist
- Domain entity and relationship definitions
- Actor and external system boundary definitions
- Universal business invariants

### Orphan Artifact Justification

No orphan artifact is expected. `A-004 Canonical Domain Ontology` is consumed by
downstream requirements, UX, and strategy nodes.

## Approval Gate Impact

No new human approval gate is proposed.

## Execution Order Impact

The proposal fits at `PT-004`, after Wedge Definition and before Strategic
Charter and requirements generation.

## Recommendation

Promoted as the initial canonical package for `PT-004`.

No canonical Process Tree update is required because `PT-004` already points to:

```text
skills/ontology/domain-ontology/
```
