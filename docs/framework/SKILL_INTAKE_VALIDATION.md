# Skill Intake Validation

## Purpose

Skill Intake Validation is the mandatory validation layer between the Skill
Intake Compiler, proposal packages, and the Promotion Pipeline.

It exists because proposal generation alone does not make a proposed skill safe
to review, approve, or promote. A generated proposal must prove that it
preserves source prompts, uses a valid protocol classification, maps to a valid
capability, has a justified repository placement, has Process impact
analysis, satisfies proposal package requirements, and complies with governance.

Skill Intake Validation prevents:

- prompt fidelity loss
- invalid protocol classification
- incorrect capability mapping
- silent repository placement conflicts
- missing Process impact analysis
- incomplete proposal packages
- governance bypass
- direct modification of approved assets

It protects approved assets by validating proposals before they can advance
toward promotion.

## Validation Categories

### Prompt Fidelity Validation

Verify:

- source prompts exist
- source prompts are unchanged
- source ordering is preserved
- protocol structure is preserved

Prompt Fidelity Validation must fail if original source content was modified
without explicit human authorization and preserved original copies.

### Protocol Validation

Verify:

- protocol type exists
- protocol type is valid
- A/B relationships are preserved
- protocol classification is complete

Valid protocol types are defined in `docs/framework/AB_PROTOCOL_MODEL.md`.

### Capability Validation

Verify:

- capability is assigned
- capability is valid
- capability rationale exists

Capability assignments must use framework capability groups or explicitly mark a
framework-level proposal.

### Repository Placement Validation

Verify:

- repository location exists
- capability matches location
- placement rationale exists
- location conflicts are identified

Repository placement validation must not create or modify canonical assets.

### Process Validation

Verify:

- process impact exists
- affected nodes are identified
- artifacts are identified
- execution impact is identified

If a proposal has no valid Process placement, it must explicitly identify a
terminal or out-of-process classification.

### Proposal Package Validation

Verify:

- proposal package is complete
- mandatory files exist
- proposal metadata is complete

For Skill Proposals, mandatory files are defined in
`docs/framework/SKILL_PROPOSAL_MODEL.md`.

### Governance Validation

Verify:

- proposal complies with `AGENTS.md`
- proposal complies with Process Governance
- proposal complies with Proposal Architecture
- proposal does not modify approved assets directly
- proposal does not bypass validation, approval, or promotion governance

## Validation Outcomes

### PASS

All required validation categories pass. No blocking findings remain.

Required behavior:

- record validation evidence
- allow proposal to advance to promotion consideration
- preserve validation report with the proposal package

### PASS_WITH_WARNINGS

Required validation categories pass, but non-blocking warnings remain.

Required behavior:

- record warnings clearly
- allow review to continue
- require reviewer acknowledgment before promotion consideration
- prevent promotion if warnings indicate unresolved compatibility, Process,
  or governance risk

### FAIL

One or more required validation categories fail.

Required behavior:

- block promotion consideration
- record failures clearly
- identify remediation steps
- preserve source prompts unchanged
- do not modify approved assets

## Validation Report

Validation output must be recorded in:

```text
validation-report.md
```

Required sections:

- summary
- validation categories
- findings
- warnings
- failures
- recommendation

The report must be deterministic and traceable. It should state what was
checked, what passed, what failed, and what action is recommended.

## Failure Handling

**Prompt Fidelity Fails**

The proposal fails validation. Promotion consideration is blocked. Original
source prompts must be restored or re-ingested from preserved source material.

**Repository Placement Fails**

The proposal fails validation or receives blocking warnings. The placement must
be corrected, or the conflict must be explicitly resolved before promotion
consideration.

**Process Validation Fails**

The proposal fails validation when affected nodes, artifacts, execution impact,
or approval gate impact are missing or inconsistent. A valid Process
placement or explicit terminal classification is required.

**Proposal Package Validation Fails**

The proposal fails validation when mandatory files, metadata, source material,
or required reports are missing. The package must be completed before review can
advance.

## Promotion Eligibility

Promotion consideration is allowed only for:

- `PASS`
- `PASS_WITH_WARNINGS` when warnings are acknowledged and non-blocking

Promotion consideration is not allowed for:

- `FAIL`

Validation does not itself approve promotion. It only determines whether a
proposal is eligible for promotion consideration.
