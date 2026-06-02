# Skill Diff Report Model

This document defines the canonical structure of a Skill Diff Report.

A Skill Diff Report records comparison results between two skill assets or
between a proposed skill and an existing canonical skill. It is governance
evidence for validation, promotion, versioning, registry updates, and Process
Tree review.

The canonical report filename is:

```text
skill-diff-report.md
```

## Required Report Structure

```text
# Skill Diff Report

## Compared Assets

## Diff Category

## Similarity Outcome

## Version Impact

## Process Tree Impact

## Promotion Impact

## Recommendation
```

## Compared Assets

This section must identify each compared asset.

Include:

- asset name
- asset type
- repository path
- lifecycle state
- current version when known
- source proposal when applicable
- registry entry when applicable

## Diff Category

This section must identify the primary diff category from
`docs/framework/SKILL_DIFF_MODEL.md`.

If multiple categories apply, list all categories and mark the highest-risk
category as primary.

Include:

- primary category
- secondary categories
- evidence summary
- affected fields

## Similarity Outcome

This section must identify the similarity outcome.

Allowed outcomes:

- Identical
- Equivalent
- Enhancement
- Variant
- Replacement
- Duplicate
- Incompatible

Include the rationale for the outcome and any duplicate or replacement evidence.

## Version Impact

This section must state the version impact.

Allowed impacts:

- Major
- Minor
- Patch
- None
- Undetermined

Include:

- highest applicable impact
- reason
- affected compatibility boundary
- unresolved versioning questions

## Process Tree Impact

This section must describe Process Tree effects.

Include:

- affected tree
- affected nodes
- affected branches
- consumed artifact changes
- produced artifact changes
- execution order changes
- approval gate changes
- terminal or out-of-tree classification when applicable

If no Process Tree impact exists, state that explicitly.

## Promotion Impact

This section must describe how the diff affects promotion.

Include:

- promotion eligibility effect
- required promotion review
- required governance review
- blockers
- warnings
- required follow-up evidence

## Recommendation

This section must recommend one outcome.

Recommended outcomes:

- no action
- update metadata
- update documentation
- treat as enhancement
- treat as variant
- merge with existing proposal
- block as duplicate
- promote with review
- defer pending evidence
- reject as incompatible
- replace existing skill with approval

The recommendation must be traceable to the diff category, similarity outcome,
version impact, Process Tree impact, and promotion impact.

## Prompt Fidelity Requirement

Skill Diff Reports must not rewrite, normalize, optimize, or reinterpret source
prompts. Reports may reference source prompt locations and quote minimal
evidence only when needed for traceability.
