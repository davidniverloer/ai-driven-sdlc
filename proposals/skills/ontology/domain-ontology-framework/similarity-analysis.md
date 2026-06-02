# Similarity Analysis

## Compared Assets

Proposed asset:

- `proposals/skills/ontology/domain-ontology-framework/`

Existing framework assets:

- `process-trees/default.md` node `PT-004`
- `skills/ontology/README.md`
- `skills/strategy/concept-interrogation/`

## Comparison Dimensions

### Capability Similarity

High similarity with `PT-004` Canonical Domain Ontology.

### Contract Similarity

The proposal consumes strategic/wedge context and produces authoritative domain
language. This is aligned with the `PT-004` contract.

### Dependency Similarity

The proposal depends on an approved Concept Interrogation Map and global
invariant rules. The Concept Interrogation dependency is now represented by the
canonical `skills/strategy/concept-interrogation/` package. The global invariant
rules dependency still needs formal representation.

### Process Tree Similarity

The proposal maps directly to `PT-004`.

### Artifact Similarity

The proposed output matches `A-004 Canonical Domain Ontology`, with explicit
sub-artifacts including the Synonym Blacklist, invariants, entities,
relationships, actors, and external systems.

### Repository Placement Similarity

The proposal maps to the Process Tree-reserved location:

```text
skills/ontology/domain-ontology/
```

### Lifecycle Similarity

The proposal is Draft. No canonical package currently exists for
`skills/ontology/domain-ontology/`.

## Similarity Outcome

New Skill, promoted as initial canonical implementation

Secondary framing: initial canonical package candidate for existing `PT-004`
placeholder location.

## Risk Assessment

Risk level: Low after promotion approval.

The proposal fits the existing Process Tree location. The remaining warning is
the undefined status of "global invariant rules" as a dependency.

## Recommendation

Promoted as the initial canonical package for:

```text
skills/ontology/domain-ontology/
```

Recommended follow-up questions:

- How should "global invariant rules" be represented as a dependency?
- Should the Synonym Blacklist be a required section of all domain ontology
  outputs?
- Should examples demonstrate accepted and rejected terminology?
