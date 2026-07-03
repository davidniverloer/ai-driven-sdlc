# Skill Promotion Engine

## Purpose

The Skill Promotion Engine is the framework subsystem responsible for
determining whether validated skill proposals may become canonical framework
assets.

It exists because validation alone does not admit a skill into the canonical
framework. A proposal may be structurally valid but still require governance
approval, compatibility review, Process review, repository placement
approval, and canonical registration planning.

The Skill Promotion Engine differs from the Skill Intake Compiler:

- the Skill Intake Compiler transforms submitted prompts and protocols into
  proposal packages
- the Skill Promotion Engine evaluates validated proposals for canonical
  admission

The engine governs promotion orchestration. It does not implement skills, modify
source prompts, or bypass governance.

The authoritative promotion policy is defined in
`docs/framework/SKILL_PROMOTION_POLICY.md`.

## Responsibilities

**Promotion Evaluation**

Assess whether a validated proposal is eligible to become a canonical skill.

**Approval Readiness Determination**

Determine whether required approvals, review evidence, and governance gates are
complete.

**Compatibility Assessment**

Evaluate whether promotion would affect existing skills, workflows, Process
Processes, schemas, installation assets, adapters, or governance contracts.

**Canonical Skill Registration**

Recommend whether and how the proposed skill should be registered as canonical
after approval.

**Lifecycle State Transitions**

Coordinate proposal state movement from Validated to Approved, Promoted, and
Canonical according to Proposal Lifecycle governance.

Lifecycle state movement must also comply with
`docs/framework/SKILL_LIFECYCLE.md`.

## Inputs

The Skill Promotion Engine consumes:

- validated skill proposals
- validation reports
- Process impact reports
- repository placement reports
- governance reports
- approval checklists
- compatibility assessments
- source prompt preservation evidence

## Outputs

The Skill Promotion Engine produces:

- promotion recommendation
- promotion rejection
- promotion blockers
- canonical registration recommendation
- required approval list
- post-promotion validation expectations

## Promotion Pipeline

```text
Proposal
↓
Validation
↓
Promotion Evaluation
↓
Approval
↓
Canonical Registration
```

## Promotion Criteria

Promotion requires:

- prompt fidelity verified
- proposal validation passed
- repository placement approved
- Process impact reviewed
- governance compliance verified
- compatibility impact assessed
- breaking-change impact assessed
- deprecation impact assessed when applicable
- approval checklist complete
- promotion authority identified
- post-promotion validation expectations defined

Promotion cannot proceed when any blocking validation failure remains.

## Promotion Outcomes

### PROMOTE

All required promotion criteria are satisfied.

Expected behavior:

- record promotion recommendation
- identify canonical registration target
- require approval before protected operations or canonical asset changes
- prepare post-promotion validation
- move lifecycle state toward Approved, Promoted, and Canonical according to
  `docs/framework/SKILL_LIFECYCLE.md`

### PROMOTE_WITH_WARNINGS

Promotion criteria are satisfied, but non-blocking warnings remain.

Expected behavior:

- record warnings
- require reviewer acknowledgment
- identify why warnings are non-blocking
- proceed only with governance approval
- preserve lifecycle state until approval conditions are satisfied

### REJECT

Promotion criteria are not satisfied or blockers remain.

Expected behavior:

- record rejection rationale
- identify blockers
- preserve proposal and source artifacts
- do not modify canonical assets
- recommend revision, revalidation, or closure
- move or keep lifecycle state as Rejected when governance decides the proposal
  should not continue

## Promotion Boundaries

The engine may:

- evaluate proposals
- validate promotion readiness
- recommend promotion
- recommend rejection
- identify blockers
- recommend canonical registration

The engine may not:

- modify source prompts
- modify approved skills
- bypass governance
- bypass validation
- execute protected git operations without approval
- alter canonical Processes directly

## Canonical Skill Admission

A skill becomes canonical only after:

- proposal validation is complete
- promotion evaluation recommends admission
- required governance approval is recorded
- repository placement is approved
- Process impact is approved or explicitly terminal
- canonical registration requirements are satisfied
- protected operations, if any, are approved separately
- post-promotion validation is completed

Canonical admission must update the relevant registry or index once the
Canonical Skill Registry exists.

Promotion must update the Skill Registry when a skill becomes canonical,
deprecated, archived, or otherwise changes registry-visible lifecycle state.

## Relationship to Skill Registry

The Canonical Skill Registry will track approved canonical skills.

The Skill Promotion Engine does not replace the registry. It recommends
registration and provides the evidence required for admission. Once the registry
exists, promotion packages must identify:

- canonical skill ID
- canonical skill location
- source proposal ID
- promotion decision
- approval record
- Process relationship
- validation evidence

## Future Automation Boundaries

Future automation may:

- assemble promotion evidence
- check required fields
- compare proposal state against lifecycle rules
- generate promotion recommendation drafts
- prepare registry update proposals

Future automation may never:

- modify source prompts
- bypass validation
- bypass approval
- silently register canonical skills
- overwrite approved skills
- modify canonical Processes without approval
- perform protected git operations without approval
