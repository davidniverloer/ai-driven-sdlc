# Skill Promotion Policy

## Purpose

Promotion governance exists because canonical skills are approved framework
assets. Once a skill becomes canonical, it can affect Processes, workflows,
future proposals, installation behavior, and downstream agents.

Promotion is controlled to prevent unstable or unreviewed proposals from
becoming framework capabilities. Canonical assets require protection because
silent overwrites, prompt fidelity violations, or unvalidated replacements would
break traceability and trust.

## Promotion Principles

**Proposal First**

New framework contributions must enter as proposals before promotion.

**Validation Before Promotion**

Promotion may not occur until required validation is complete.

**Process Awareness**

Promotion must account for Process placement, artifact flow, execution
order, and approval gates.

**Prompt Immutability**

Promotion must never modify source prompts or protocols.

**Canonical Asset Protection**

Canonical skills are immutable by default. Promotions may create canonical
assets, but may not silently overwrite existing canonical assets.

**Traceability**

Promotion decisions must be traceable to proposal ID, validation report,
approval authority, lifecycle transition, and affected assets.

## Promotion Eligibility

A proposal is eligible for promotion consideration only when:

- proposal exists
- validation passed
- lifecycle state is valid
- repository placement approved
- Process impact reviewed
- similarity analysis completed
- Skill Diff analysis completed when a comparable skill exists
- Skill Package Contract compliance verified for canonical admission
- governance compliance verified
- prompt fidelity verified
- compatibility impact assessed
- canonical asset conflicts resolved
- promotion authority identified

Eligibility does not itself promote the proposal. It only permits promotion
review.

## Promotion Authority

Promotion may be approved by:

- human reviewer
- governance workflow
- future approval engine

Authority rules:

- human approval is required until an approval engine is formally defined
- governance workflows may prepare recommendations but may not bypass approval
- future approval engines must preserve traceability and respect protected
  operation governance
- promotion authority must be recorded with the decision

## Promotion Outcomes

### PROMOTE

Meaning: the proposal satisfies promotion criteria and is approved for canonical
admission.

Consequences:

- promotion decision is recorded
- canonical registration may proceed under governance
- protected operations still require approval

Required follow-up actions:

- update canonical registry or index when available
- perform post-promotion validation
- update Process references when applicable

### PROMOTE_WITH_WARNINGS

Meaning: the proposal is approved for promotion with documented non-blocking
warnings.

Consequences:

- warnings remain visible
- reviewer acknowledgment is required
- promotion may proceed only if warnings are explicitly non-blocking

Required follow-up actions:

- record warnings
- record why warnings are accepted
- define follow-up remediation when needed

### REJECT

Meaning: the proposal must not be promoted.

Consequences:

- canonical assets remain unchanged
- proposal remains preserved
- rejection rationale is recorded

Required follow-up actions:

- record blockers
- preserve source artifacts
- recommend revision, closure, or new proposal

### DEFER

Meaning: the proposal is not rejected but is not ready for promotion decision.

Consequences:

- canonical assets remain unchanged
- proposal remains in its current lifecycle state or returns to a prior state
- unresolved dependencies or questions are recorded

Required follow-up actions:

- identify missing evidence
- identify responsible owner
- define conditions for reconsideration

## Forbidden Promotions

Promotion must be blocked when:

- prompt fidelity violation exists
- Process conflict is unresolved
- repository placement conflict is unresolved
- governance violation exists
- duplicate canonical asset would be created
- validation failed
- lifecycle transition is invalid
- approval authority is missing
- source artifacts are missing
- canonical asset overwrite would occur silently

## Canonical Asset Protection

Canonical skills are immutable by default.

Promotions may create new canonical assets when approved. Promotions may update
indexes or registries when required. Promotions may not silently overwrite
canonical assets or bypass proposal governance.

Any change to an existing canonical skill must enter as a new proposal unless
explicit human authorization allows a direct change.

## Replacement Rules

One skill may replace another only when replacement is explicit and approved.

Replacement requires:

- Skill Diff analysis showing a Replacement outcome
- deprecation record for the replaced skill
- compatibility assessment
- migration guidance
- Process impact review
- affected workflow review
- canonical registry update when available
- approval authority

The replaced skill must be marked Deprecated before it can be Archived. Process
references must be updated or explicitly marked deprecated.

## Promotion Traceability

Promotion records must include:

- proposal ID
- validation report
- Skill Diff Report when a comparable skill exists
- Similarity Analysis Report
- Skill Package Contract validation evidence
- promotion decision
- approval authority
- lifecycle transition
- repository placement
- Process impact
- compatibility impact
- canonical registration recommendation
- follow-up actions

## Skill Diff Review

Promotion review must use Skill Diff analysis when a proposed skill may overlap
with, enhance, replace, duplicate, or conflict with an existing skill.

Skill Diff analysis must classify:

- diff category
- similarity outcome
- version impact
- Process impact
- promotion impact

Promotion must be blocked or deferred when Skill Diff analysis is missing for a
known comparable skill, identifies an unresolved duplicate, or identifies an
unresolved incompatible change.

## Similarity Outcome Review

Promotion review must consider the Similarity Analysis outcome before deciding
whether a proposal may become canonical.

Similarity outcomes affect promotion as follows:

- Identical: block promotion as a separate asset.
- Equivalent: prefer merge, metadata, documentation, or patch-level handling.
- Enhancement: require compatibility, version, and affected asset review.
- Variant: require explicit rationale for separate canonical existence.
- Replacement: require replacement approval, deprecation planning, lifecycle
  review, and Process impact review.
- Duplicate: block promotion unless governance approves merge, variant, or
  replacement handling.
- Incompatible: block promotion until the incompatibility is resolved and
  revalidated.

## Skill Package Contract Review

Promotion to canonical skill requires Skill Package Contract compliance.

Promotion review must verify that the proposed canonical skill package contains
required files, required metadata, immutable source prompts, output contract
expectations, repository placement, Process references, lifecycle state,
dependencies, and source proposal traceability.

Promotion must be blocked or deferred when package structure is incomplete,
source prompts are missing, required metadata is missing, or source prompt
fidelity cannot be verified.
