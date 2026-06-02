# Similarity Analysis

## Compared Assets

Proposed asset:

- `proposals/skills/strategy/concept-interrogation-map/`

Existing framework assets:

- `process-trees/default.md` node `PT-002`
- `process-trees/default.md` node `PT-003`
- `skills/strategy/README.md`

## Comparison Dimensions

### Capability Similarity

High similarity with `PT-002` Concept Interrogation & Stress Testing.

Partial similarity with `PT-003` Wedge Definition because the protocol asks to
isolate and define a minimalist wedge.

### Contract Similarity

The proposal consumes a raw project concept and produces a strategic concept
analysis artifact. This is closely aligned with `PT-002`, but the proposed
artifact name and formal structure differ from the current `A-002 Interrogated
Concept Brief`.

### Dependency Similarity

The proposal depends on raw concept context, interactive dialogue, and global
invariant rules. The "global invariant rules" dependency is not yet represented
as a canonical framework dependency and should be reviewed.

### Process Tree Similarity

The proposal maps most directly to `PT-002` and may affect `PT-003` boundaries.

### Artifact Similarity

The proposed Concept Interrogation Map overlaps with `A-002 Interrogated Concept
Brief` and may also contain information currently expected in `A-003 Wedge
Definition`.

### Repository Placement Similarity

The proposal overlaps with the existing Process Tree repository location:

```text
skills/strategy/concept-interrogation/
```

### Lifecycle Similarity

The proposal is Draft. No canonical implementation currently exists in the
repository beyond capability placeholder documentation and Process Tree
placement.

## Similarity Outcome

Enhancement Candidate, resolved as initial canonical implementation

The user clarified that this proposal is the initial canonical skill package for
the existing `PT-002` concept interrogation location.

## Risk Assessment

Risk level: Low after promotion clarification.

Residual risk remains around the boundary between concept interrogation and
wedge definition. The promoted package preserves `PT-003` as a separate
downstream node.

## Recommendation

Promoted as the initial canonical package for:

```text
skills/strategy/concept-interrogation/
```

Recommended follow-up questions:

- How should "global invariant rules" be represented as a dependency?
- Should future examples demonstrate the boundary between `PT-002` and `PT-003`?
