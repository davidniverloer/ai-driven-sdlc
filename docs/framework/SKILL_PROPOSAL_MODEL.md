# Skill Proposal Model

## Purpose

A Skill Proposal is a governed package that describes a proposed new skill or
skill change before it can become canonical.

Skill Proposals exist so ai-driven-sdlc can accept new expertise without
modifying approved skills directly. They connect source prompts, protocol
classification, repository placement, Process Tree impact, validation evidence,
and approval readiness into one reviewable package.

Process Tree impact is governed by
`docs/framework/PROCESS_TREE_INTEGRATION_RULES.md`.

Skill Proposals differ from Canonical Skills:

- a Skill Proposal is draft or review-stage material under `proposals/`
- a Canonical Skill is an approved framework asset under `skills/`
- a Skill Proposal may describe or recommend a skill
- a Skill Proposal must not be treated as an executable canonical skill
- a Skill Proposal must be validated and approved before promotion

## Skill Proposal Package

The canonical structure of a skill proposal is:

```text
<proposal-id>/
  proposal.yaml
  classification.md
  repository-placement.md
  process-tree-impact.md
  approval-checklist.md
  source/
    README.md
    <submitted-prompts>.original.md
```

At minimum, every Skill Proposal package must contain:

- `proposal.yaml`
- `classification.md`
- `repository-placement.md`
- `process-tree-impact.md`
- `approval-checklist.md`
- `source/`
- `source/README.md`

The package is a proposal contract, not an implementation schema.

## proposal.yaml Contract

`proposal.yaml` must contain required metadata:

- `proposal_id`
- `title`
- `capability`
- `protocol_type`
- `version`
- `status`
- `source_basis`
- `proposed_repository_location`
- `process_tree_impact`
- `created_date`

This document defines the contract only. It does not define a formal schema yet.

Expected values:

- `proposal_id`: stable proposal identifier
- `title`: human-readable proposal title
- `capability`: target capability group such as `ux`, `strategy`, or
  `requirements`
- `protocol_type`: `single_prompt`, `ab_protocol`, `multi_step_protocol`,
  `workflow_protocol`, or `capability_protocol`
- `version`: proposal package version
- `status`: lifecycle state
- `source_basis`: source prompt, protocol, command, or submission reference
- `proposed_repository_location`: proposed future path under `skills/`
- `process_tree_impact`: none, update_required, proposed_node, or other
  documented impact status
- `created_date`: ISO date

## Source Prompt Preservation

`source/` must contain immutable copies of all submitted prompts.

Examples:

```text
source/discovery.original.md
source/synthesis.original.md
```

or:

```text
source/prompt.original.md
```

The original wording must never be altered. Source prompt order, structure,
formatting, and relationships must be preserved according to Prompt
Immutability Governance.

Derived notes, classifications, mappings, or proposal drafts must not be stored
inside source originals.

## Classification Report

`classification.md` must contain:

- capability classification
- protocol classification
- proposal category
- confidence level
- rationale

The classification report may describe source prompts but must not rewrite or
reinterpret them.

## Repository Placement Report

`repository-placement.md` must explain:

- selected capability
- selected repository path
- placement rationale
- affected assets

The report proposes placement only. It must not create or modify canonical skill
files directly.

## Process Tree Impact Report

`process-tree-impact.md` must answer:

- Does this create a new node?
- Does this extend an existing node?
- Does this introduce a new artifact?
- Does this introduce a new execution path?
- Does `PROCESS_TREE.md` require updates?

When the active canonical Process Tree is affected, the report should reference
`process-trees/default.md`. Legacy references to `docs/framework/PROCESS_TREE.md`
must be treated as compatibility pointers only.

The report must follow the Process Tree Integration Rules. No Skill Proposal may
be promoted without a valid Process Tree placement or an explicit terminal or
out-of-tree classification.

## Approval Checklist

`approval-checklist.md` must contain:

- prompt fidelity verification
- capability verification
- repository placement verification
- process tree verification
- governance verification
- validation verification

The checklist must make unresolved items visible. A proposal with unresolved
approval checklist items is not promotion-ready.

## Proposal States

Proposal states align with `docs/framework/SKILL_LIFECYCLE.md`.

**Draft**

The proposal package is being assembled and may be incomplete.

**Proposed**

The proposal has enough structure for review.

**Validated**

The proposal has passed applicable validation checks.

**Approved**

The proposal has explicit governance approval for promotion.

**Promoted**

The approved proposal has been applied to canonical asset locations.

**Rejected**

The proposal has been reviewed and declined. Rejected proposals should preserve
their source material and rejection rationale.

## Proposal Readiness Requirements

Before promotion, a Skill Proposal must have:

- complete required package files
- valid proposal metadata
- preserved source prompts under `source/`
- protocol classification
- capability classification
- repository placement report
- Process Tree impact report
- valid Process Tree placement or explicit terminal classification
- approval checklist
- prompt fidelity verification
- compatibility assessment
- validation evidence
- explicit governance approval
- promotion plan
- rollback or remediation notes
