# Repository Placement Model

This document defines the canonical structure of a Repository Placement Report.

The report records why a proposed asset belongs in a specific repository
location and whether that placement is safe to review, promote, or reject.

The canonical report filename is:

```text
repository-placement.md
```

## Required Report Structure

```text
# Repository Placement

## Asset Classification

## Capability

## Proposed Path

## Rationale

## Collisions

## Recommendation
```

## Asset Classification

Identify the asset being placed.

Include:

- asset name
- asset category
- lifecycle state
- source proposal when applicable
- whether the asset is new, existing, enhancement, duplicate, or replacement

Supported asset categories:

- skill
- workflow
- process tree
- schema
- adapter
- installation asset
- governance asset

## Capability

Identify the primary capability and secondary capabilities when relevant.

Include:

- primary capability
- secondary capabilities
- classification rationale
- ambiguity or confidence notes

Capability values should match the capability families defined in
`docs/framework/REPOSITORY_MAPPING_ENGINE.md`.

## Proposed Path

Identify the recommended repository path.

Include:

- proposed path
- whether the path exists
- whether the path must be created
- whether approval is required
- owning asset family
- canonical or proposal location

## Rationale

Explain why the path is recommended.

Include:

- capability rationale
- repository ownership rationale
- Process Tree relationship
- affected assets
- known alternatives considered

## Collisions

Record collision analysis.

Include:

- path conflicts
- naming conflicts
- ownership conflicts
- capability conflicts
- affected existing assets
- unresolved collision questions

If no collisions exist, state that explicitly.

## Recommendation

Provide one placement recommendation.

Recommended outcomes:

- New Asset
- Existing Asset
- Enhancement Candidate
- Duplicate Candidate
- Replacement Candidate
- Blocked Pending Clarification

The recommendation must explain required follow-up actions, governance review,
Process Tree review, and whether promotion may proceed.

## Governance Requirement

The report is evidence only. It does not authorize creating, overwriting,
moving, or deleting repository assets. Protected operations require separate
approval under repository governance.
