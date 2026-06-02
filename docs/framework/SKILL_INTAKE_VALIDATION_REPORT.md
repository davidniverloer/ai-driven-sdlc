# Skill Intake Validation Report

This document defines the standard structure for `validation-report.md` files
created during Skill Intake Validation.

The report records validation evidence for a proposal package. It must be
deterministic, traceable, and separate from source prompts.

## Required Structure

```text
# Validation Report

## Summary

## Validation Categories

## Findings

## Warnings

## Failures

## Recommendation
```

## Summary

The summary must state:

- proposal ID
- proposal title
- validation date
- validator
- validation outcome: PASS, PASS_WITH_WARNINGS, or FAIL
- whether promotion consideration is allowed

## Validation Categories

The report must cover:

- Prompt Fidelity Validation
- Protocol Validation
- Capability Validation
- Repository Placement Validation
- Process Tree Validation
- Proposal Package Validation
- Governance Validation

Each category should record:

- status
- evidence checked
- result
- notes

## Findings

Findings describe validation observations that are not warnings or failures.

Examples:

- source prompts are present under `source/`
- protocol type is `ab_protocol`
- proposed repository location matches capability
- Process Tree impact report identifies affected nodes

## Warnings

Warnings describe non-blocking issues that require reviewer attention.

Examples:

- classification confidence is medium
- similar skill exists but does not appear duplicative
- Process Tree impact is limited to an experimental tree

Warnings must state whether they block promotion consideration.

## Failures

Failures describe blocking validation issues.

Examples:

- source prompt wording changed
- `proposal.yaml` missing required metadata
- repository placement conflicts with an existing asset
- Process Tree impact report is missing
- approval checklist is incomplete

Failures block promotion consideration.

## Recommendation

The recommendation must be one of:

- advance to review
- advance to promotion consideration
- revise proposal
- reject proposal
- re-run intake

The recommendation must explain why and reference any blocking failures or
non-blocking warnings.
