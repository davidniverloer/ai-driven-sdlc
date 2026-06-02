# Skill Lifecycle

## Purpose

A formal skill lifecycle exists so ai-driven-sdlc can govern how skills move
from incoming protocol to proposed asset to canonical framework capability.

The lifecycle protects approved assets, makes state transitions explicit,
preserves source history, supports validation, and prevents agents from
silently modifying canonical skills.

## Lifecycle States

- Draft
- Proposed
- Validated
- Approved
- Promoted
- Canonical
- Deprecated
- Archived
- Rejected

## State Definitions

### Draft

Meaning: a skill proposal is being assembled and may be incomplete.

Allowed location: `proposals/skills/`.

Allowed modifications: proposal author may complete package files and source
references. Source prompts must remain immutable.

Required validations: prompt preservation checks when source material is added.

Transition conditions: may move to Proposed when required proposal structure,
ownership, and purpose are present.

### Proposed

Meaning: a skill proposal is ready for review.

Allowed location: `proposals/skills/`.

Allowed modifications: reviewers may request clarifications, metadata updates,
and mapping updates. Source prompts must not be rewritten.

Required validations: proposal package completeness, protocol classification,
capability classification, repository placement, and Process Tree impact.

Transition conditions: may move to Validated when required validations pass. May
move to Rejected when review determines the proposal should not continue.

### Validated

Meaning: the proposal has passed required validation.

Allowed location: `proposals/skills/`.

Allowed modifications: only validation evidence, review notes, approval records,
and promotion readiness updates.

Required validations: Skill Intake Validation, Skill Proposal Validation, Process
Tree Integration Validation, and Promotion Readiness Validation.

Transition conditions: may move to Approved when governance approval is granted.
May move to Rejected if validation or review uncovers non-remediated blockers.

### Approved

Meaning: the proposal is approved for promotion planning.

Allowed location: `proposals/skills/`.

Allowed modifications: promotion plan, approval records, and canonical
registration planning.

Required validations: approval record and promotion readiness checks.

Transition conditions: may move to Promoted when promotion actions are completed
under governance.

### Promoted

Meaning: the approved proposal has been applied to canonical skill locations.

Allowed location: proposal remains in `proposals/skills/`; canonical asset is
created or updated under `skills/` only through approved promotion.

Allowed modifications: post-promotion evidence, registry references, and
validation records.

Required validations: post-promotion validation and canonical registration
checks.

Transition conditions: may move to Canonical when canonical registration and
post-promotion validation are complete.

### Canonical

Meaning: the skill is an approved framework asset.

Allowed location: `skills/<capability>/<skill-name>/`.

Allowed modifications: immutable by default. Changes must enter as new
proposals unless explicit human authorization allows direct modification.

Required validations: canonical asset validation, Process Tree reference
validation, and registry validation once the registry exists.

Transition conditions: may move to Deprecated when replacement, retirement, or
supersession is approved.

### Deprecated

Meaning: the canonical skill remains preserved but is no longer recommended for
new use.

Allowed location: canonical skill location plus deprecation metadata or registry
reference.

Allowed modifications: deprecation notices, replacement references, migration
guidance, and Process Tree updates.

Required validations: replacement reference validation when applicable, Process
Tree reference review, and documentation consistency checks.

Transition conditions: may move to Archived when it is no longer active in any
Process Tree or dependency path and preservation requirements are satisfied.

### Archived

Meaning: the skill is retained for history and traceability but no longer active.

Allowed location: future archive location or canonical registry archival
reference. The archive location must be defined before archival is performed.

Allowed modifications: archival metadata only.

Required validations: source lineage preservation, deprecation history,
replacement references, and Process Tree detachment.

Transition conditions: terminal state unless explicitly restored through a new
proposal.

### Rejected

Meaning: a proposal has been declined and will not be promoted in its current
form.

Allowed location: `proposals/skills/` with rejection record.

Allowed modifications: rejection rationale, review notes, and closure metadata.
Source prompts remain immutable.

Required validations: rejection reason and source preservation.

Transition conditions: terminal for that proposal version. A new proposal may be
created if the source material is reconsidered.

## State Transition Model

Allowed primary transitions:

```text
Draft → Proposed
Proposed → Validated
Validated → Approved
Approved → Promoted
Promoted → Canonical
Canonical → Deprecated
Deprecated → Archived
```

Rejection paths:

```text
Draft → Rejected
Proposed → Rejected
Validated → Rejected
Approved → Rejected
```

Restoration or revival from Deprecated or Archived requires a new proposal.

## Canonical Skill Rules

- canonical skills are approved framework assets
- canonical skills are immutable by default
- changes to canonical skills must enter as proposals
- prompt source artifacts remain immutable
- canonical skills must maintain Process Tree and registry references when
  applicable
- canonical lifecycle state must be reflected in the Skill Registry once the
  registry exists

## Deprecation Rules

A skill may be deprecated when:

- it is replaced by a better canonical skill
- its capability is no longer recommended
- its Process Tree role changes
- it becomes incompatible with current governance or schema expectations
- it is superseded by a workflow or broader capability

Deprecation must document:

- deprecation reason
- replacement skill or explicit statement that none exists
- migration guidance
- affected Process Tree nodes
- affected workflows or proposals
- date and approval reference

Process Tree references must be updated or marked deprecated. A deprecated skill
must not remain silently active in a canonical Process Tree.

The Skill Registry must be updated when a skill enters Deprecated state.

## Archive Rules

A skill may be archived when:

- it is deprecated
- no active canonical Process Tree depends on it
- replacement or removal guidance is documented
- source lineage and decision history are preserved

Archived skills must preserve:

- source proposal reference
- source prompt references
- deprecation record
- replacement guidance
- validation and approval history
- Process Tree removal or detachment evidence

The Skill Registry must retain archived skill references so archived skills
remain discoverable.

## Rejection Rules

A proposal may be rejected when:

- prompt fidelity cannot be verified
- protocol classification is invalid or unsupported
- repository placement conflicts cannot be resolved
- Process Tree placement is invalid
- proposal duplicates an existing asset without useful differentiation
- governance validation fails
- approval is denied

Rejection must be recorded with:

- rejection reason
- reviewer or approver
- date
- affected proposal ID
- remediation guidance when applicable

Rejected proposals remain preserved for traceability. Source prompts must remain
unchanged.
