# Proposal Lifecycle

## Lifecycle States

```text
Draft
↓
Proposed
↓
Validated
↓
Approved
↓
Promoted
↓
Canonical
```

## Draft

The proposal is being assembled.

Requirements:

- category identified when possible
- source material preserved
- open questions recorded

Transition to Proposed:

- proposal purpose is clear
- owner is identified
- category is assigned

## Proposed

The proposal is ready for review.

Requirements:

- proposal category exists
- lifecycle state is recorded
- repository placement is proposed
- Process Tree impact is assessed
- ownership is documented

Transition to Validated:

- applicable validation checks pass
- compatibility impact is documented
- breaking-change and deprecation impact are documented

## Validated

The proposal has passed required validation.

Requirements:

- validation evidence recorded
- unresolved risks documented
- promotion readiness reviewed

Transition to Approved:

- explicit governance approval is recorded
- required human approval gates are satisfied

## Approved

The proposal is authorized for promotion.

Requirements:

- approval record exists
- promotion authority is identified
- promotion plan is explicit
- protected operations, if any, are approved separately

Transition to Promoted:

- canonical asset changes are applied according to governance
- command history is updated
- post-promotion validation is performed

## Promoted

The approved proposal has been applied to canonical asset locations.

Requirements:

- canonical files exist in the expected location
- proposal references the promotion result
- validation evidence is updated

Transition to Canonical:

- promoted asset passes canonical validation
- documentation and indexes are updated

## Canonical

The promoted asset is now an approved framework asset.

Requirements:

- canonical asset is governed by the relevant asset model
- future changes must enter through proposal governance unless explicitly
  authorized

## Approval Requirements

Approval is required before promotion. Approval must identify:

- approver
- approved proposal ID
- approved scope
- compatibility impact
- breaking-change impact
- Process Tree impact
- validation evidence

## Promotion Requirements

Promotion requires:

- valid lifecycle state
- documented ownership
- complete validation evidence
- approval record
- promotion plan
- command history update
- post-promotion validation
- rollback or remediation guidance
