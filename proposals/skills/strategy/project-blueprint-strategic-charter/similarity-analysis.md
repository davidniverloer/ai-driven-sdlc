# Similarity Analysis

## Compared Assets

Proposed asset:

- `proposals/skills/strategy/project-blueprint-strategic-charter/`

Existing framework assets:

- `process-trees/default.md` node `PT-005`
- `skills/strategy/README.md`
- `skills/strategy/concept-interrogation/`
- `skills/ontology/domain-ontology/`

## Comparison Dimensions

### Capability Similarity

High similarity with `PT-005` Strategic Charter.

### Contract Similarity

The proposal consumes interrogated concept, wedge, and ontology artifacts and
produces a strategic charter. This aligns with the `PT-005` contract.

### Dependency Similarity

The proposal depends on the frozen Domain Ontology, verified Concept
Interrogation Map, dialogue history, and global invariant rules. The first two
dependencies are now represented by canonical skills and Process Tree artifacts.
The "global invariant rules" dependency still needs formal representation.

### Process Tree Similarity

The proposal maps directly to `PT-005`.

### Artifact Similarity

The proposed Project Blueprint & Strategic Charter maps to `A-005 Strategic
Charter`, with additional structured sub-artifacts for risk register, Wedge
deployment scope, non-goals, and downstream constraints.

### Repository Placement Similarity

The proposal maps to the Process Tree-reserved location:

```text
skills/strategy/strategic-charter/
```

### Lifecycle Similarity

The proposal is Draft. No canonical package currently exists for
`skills/strategy/strategic-charter/`.

## Similarity Outcome

New Skill

Secondary framing: initial canonical package candidate for existing `PT-005`
placeholder location.

## Risk Assessment

Risk level: Low to Medium.

The proposal fits the existing Process Tree location. The main risks are the
unresolved representation of "global invariant rules" and the source label
`Action 1.1.B` appearing inside a Step 1.3 protocol.

## Recommendation

Proceed to promotion review when ready.

Recommended follow-up questions:

- Should the source label `Action 1.1.B` be treated as a harmless typo or a
  protocol identity issue?
- How should "global invariant rules" be represented as a dependency?
- Should the Risk & Mitigation Register become a mandatory Strategic Charter
  output section?
