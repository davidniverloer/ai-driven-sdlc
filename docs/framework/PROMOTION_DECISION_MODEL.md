# Promotion Decision Model

The Promotion Decision Model defines how Skill Promotion decisions are
structured and traced.

## Decision Inputs

Promotion decisions consume:

- proposal ID
- proposal package
- validation report
- lifecycle state
- repository placement report
- Process Tree impact report
- approval checklist
- compatibility assessment
- governance review
- prompt fidelity evidence

## Decision Outputs

Promotion decisions produce:

- promotion outcome
- recommendation rationale
- blockers
- warnings
- required approvals
- lifecycle transition
- canonical registration recommendation
- follow-up actions

## Recommendation Structure

Every promotion recommendation should include:

```text
# Promotion Recommendation

## Proposal

## Current Lifecycle State

## Validation Summary

## Repository Placement

## Process Tree Impact

## Compatibility Impact

## Governance Review

## Decision

## Rationale

## Warnings

## Blockers

## Required Approvals

## Lifecycle Transition

## Canonical Registration Recommendation

## Follow-Up Actions
```

Valid decisions:

- PROMOTE
- PROMOTE_WITH_WARNINGS
- REJECT
- DEFER

## Traceability Requirements

Every promotion decision must be traceable to:

- source proposal
- validation report
- approval authority
- decision date
- lifecycle transition
- affected canonical assets
- affected Process Tree nodes
- repository placement
- unresolved warnings or blockers

Promotion decisions must not rely only on conversation history. Durable
decisions require durable records.
