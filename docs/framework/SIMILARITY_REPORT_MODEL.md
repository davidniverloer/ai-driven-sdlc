# Similarity Report Model

This document defines the canonical structure of a Similarity Analysis Report.

The report records how a proposed asset compares with existing framework assets
and whether it should be treated as new, equivalent, an enhancement, a variant,
a replacement, a duplicate, or incompatible.

The canonical report filename is:

```text
similarity-analysis.md
```

## Required Report Structure

```text
# Similarity Analysis

## Compared Assets

## Comparison Dimensions

## Similarity Outcome

## Risk Assessment

## Recommendation
```

## Compared Assets

Identify every asset included in the comparison.

Include:

- proposed asset name
- proposed asset type
- proposed asset path or package location
- existing asset names
- existing asset paths
- lifecycle states
- registry entries when applicable
- source proposals when applicable

## Comparison Dimensions

Evaluate each relevant comparison dimension from
`docs/framework/SIMILARITY_ANALYSIS_ENGINE.md`.

Required dimensions for skill comparison:

- capability similarity
- contract similarity
- dependency similarity
- Process similarity
- artifact similarity
- repository placement similarity
- lifecycle similarity

Each dimension must include evidence, uncertainty, and unresolved questions when
applicable.

## Similarity Outcome

State one primary outcome.

Allowed outcomes:

- Identical
- Equivalent
- Enhancement
- Variant
- Replacement
- Duplicate
- Incompatible

If multiple outcomes appear plausible, record the ambiguity and explain why the
primary outcome was selected.

## Risk Assessment

Assess the risk created by the similarity outcome.

Include:

- risk level
- compatibility risk
- duplicate risk
- replacement risk
- repository placement risk
- Process risk
- prompt fidelity risk

## Recommendation

Recommend one next action.

Recommended actions:

- treat as new asset
- merge with existing asset proposal
- treat as enhancement
- treat as variant
- require replacement review
- block as duplicate
- reject as incompatible
- defer pending evidence

The recommendation must identify required follow-up evidence, governance review,
promotion impact, and Process review.

## Prompt Fidelity Requirement

Similarity reports must preserve prompt fidelity. They may reference immutable
source prompts but must not rewrite, normalize, optimize, or reinterpret them.
