# Skill Diff Model

## Purpose

The Skill Diff Model defines how the framework determines how one skill differs
from another without changing either skill.

Skill diffs support evolution governance by making comparison explicit before a
proposal is promoted, replaced, versioned, deprecated, or connected to a Process
Tree. The model helps agents identify duplicate skills, compatible
enhancements, incompatible replacements, dependency changes, contract changes,
and Process Tree impacts before canonical assets are modified.

The diff model solves:

- duplicate detection
- enhancement detection
- replacement detection
- version impact analysis
- promotion decision support
- compatibility assessment
- Process Tree impact review

The Skill Diff Model is a governance model, not an algorithm. Future tooling may
automate parts of the comparison, but the comparison categories and reporting
requirements apply immediately.

## Diff Scope

Skill diffs may compare:

- skill metadata
- skill contracts
- inputs
- outputs
- dependencies
- repository placement
- Process Tree placement
- lifecycle state
- version

Skill diffs must explicitly exclude:

- prompt rewriting
- prompt normalization
- prompt optimization

Prompt source material remains immutable. Diff analysis may classify,
reference, or quote source prompt boundaries when needed for traceability, but
it must not rewrite or improve prompt content.

## Diff Categories

### No Change

Meaning: compared assets have no material differences in governed fields.

Impact: no version, promotion, repository, lifecycle, or Process Tree change is
required.

Risk level: none.

### Metadata Change

Meaning: identifiers, labels, descriptions, ownership, status text, or registry
metadata changed without altering the skill contract.

Impact: update registry and documentation references. Promotion review may be
limited to traceability and naming consistency.

Risk level: low.

### Documentation Change

Meaning: explanatory content changed without altering inputs, outputs,
dependencies, lifecycle state, or execution behavior.

Impact: validate that the documentation still matches the skill contract and
does not introduce hidden behavior.

Risk level: low.

### Dependency Change

Meaning: referenced skills, workflows, schemas, Process Tree nodes, adapters, or
external dependencies changed.

Impact: validate dependency existence, compatibility, and downstream consumers.
Promotion review must check whether the change affects execution safety.

Risk level: medium.

### Capability Change

Meaning: the skill's capability family, purpose, responsibility boundary, or
domain coverage changed.

Impact: reassess repository placement, registry capability, Process Tree fit,
and duplicate or replacement risk.

Risk level: medium to high.

### Contract Change

Meaning: skill inputs, outputs, required artifacts, expected artifacts, or
completion conditions changed.

Impact: validate every known consumer, Process Tree node, and workflow that
depends on the contract.

Risk level: high.

### Repository Placement Change

Meaning: the skill moves between folders, capability groups, proposal storage,
or canonical storage.

Impact: update registry location, references, documentation links, and any
Process Tree references that rely on repository path.

Risk level: medium.

### Process Tree Change

Meaning: the skill's relationship to Process Tree nodes, branches, artifact
flow, execution order, or approval gates changed.

Impact: perform Process Tree impact review before promotion or canonical
reference changes.

Risk level: high.

### Lifecycle Change

Meaning: the skill changes lifecycle state, such as Proposed, Validated,
Promoted, Canonical, Deprecated, Archived, or Rejected.

Impact: update lifecycle records, registry state, promotion records, and
traceability references.

Risk level: medium to high.

### Breaking Change

Meaning: a change invalidates existing consumers, changes required inputs,
removes outputs, removes dependencies that consumers need, changes artifact
flow, changes execution order incompatibly, or makes a previous skill behavior
unavailable.

Impact: major version impact, explicit promotion review, migration guidance,
replacement or deprecation planning, and Process Tree approval are required.

Risk level: critical.

## Similarity Outcomes

### Identical

Meaning: no governed differences exist.

Expected behavior: no new canonical skill should be created. Preserve existing
registry entry and record that no action is required.

### Equivalent

Meaning: differences exist but do not change capability, contract, dependencies,
or Process Tree behavior.

Expected behavior: prefer documentation, metadata, or patch-level update paths
over creating a new skill.

### Enhancement

Meaning: the compared asset adds useful capability while preserving existing
contract compatibility.

Expected behavior: consider minor version impact and promotion review focused on
compatibility, dependency, and Process Tree impact.

### Variant

Meaning: the compared asset solves a related problem but differs in capability
scope, context, constraints, or intended use.

Expected behavior: require capability classification, duplicate review, and
clear repository or registry distinction before promotion.

### Replacement

Meaning: the compared asset is intended to supersede another skill.

Expected behavior: require replacement approval, migration guidance,
deprecation planning, registry update, and Process Tree review.

### Duplicate

Meaning: the compared asset materially duplicates an existing skill without a
clear distinct purpose or approved variant rationale.

Expected behavior: block promotion as a separate canonical skill unless a
governance reviewer approves merge, replacement, or variant treatment.

### Incompatible

Meaning: the compared asset conflicts with the existing skill contract,
capability boundary, Process Tree role, dependencies, governance rules, or
prompt fidelity requirements.

Expected behavior: block promotion until incompatibility is resolved, or reject
the proposal with recorded rationale.

## Version Impact Rules

Version impact is derived from diff category and compatibility effect.

Major version impact applies when:

- Breaking Change occurs
- Contract Change breaks existing consumers
- Process Tree Change breaks execution order or artifact flow
- Capability Change changes the skill's core responsibility
- Replacement changes the expected canonical skill for existing consumers

Minor version impact applies when:

- Enhancement preserves compatibility
- Dependency Change adds compatible optional dependencies
- Capability Change expands scope without breaking existing use
- Process Tree Change adds compatible placement or optional branch support
- Lifecycle Change promotes a validated proposal into canonical use

Patch version impact applies when:

- Metadata Change does not alter behavior
- Documentation Change clarifies existing behavior
- Repository Placement Change does not affect consumers
- Dependency Change only corrects a reference without changing compatibility
- No Change is recorded for audit purposes

If a comparison includes multiple categories, use the highest applicable version
impact.

## Promotion Impact Rules

Diff categories affect promotion review as follows:

- No Change: promotion should usually be blocked as unnecessary unless the
  comparison is only audit evidence.
- Metadata Change: promotion may proceed with lightweight governance review.
- Documentation Change: promotion may proceed after documentation consistency
  validation.
- Dependency Change: promotion requires dependency and compatibility review.
- Capability Change: promotion requires capability classification, duplicate
  review, and registry placement review.
- Contract Change: promotion requires compatibility, consumer, workflow, and
  Process Tree review.
- Repository Placement Change: promotion requires repository placement approval
  and registry update.
- Process Tree Change: promotion requires Process Tree impact approval.
- Lifecycle Change: promotion requires lifecycle transition validation and
  registry state update.
- Breaking Change: promotion requires explicit approval, migration guidance,
  version impact review, and deprecation or replacement planning where
  applicable.

Promotion decisions must include the diff category, similarity outcome, version
impact, Process Tree impact, and recommendation.

## Process Tree Impact Rules

Diff analysis must evaluate how a change affects:

- nodes
- branches
- artifact flow
- execution order
- approval gates

A Process Tree impact exists when a skill change:

- adds, removes, or replaces a node relationship
- changes consumed artifacts
- changes produced artifacts
- changes branch conditions
- changes execution order
- changes terminal classification
- changes human approval gates
- changes downstream consumers

Any Process Tree Change, Contract Change, Capability Change, Dependency Change,
Replacement, or Breaking Change requires Process Tree review before promotion.

## Prompt Fidelity Rules

The Skill Diff Model may compare:

- metadata
- contracts
- dependencies
- Process Tree placement

The Skill Diff Model may not:

- rewrite prompts
- reinterpret prompts
- optimize prompts

Prompt content remains immutable.

Diff reports must preserve source prompt references and must not replace source
prompt artifacts with rewritten summaries.

## Diff Report Structure

The canonical report filename is:

```text
skill-diff-report.md
```

A Skill Diff Report must include:

- compared assets
- diff category
- similarity outcome
- version impact
- Process Tree impact
- promotion impact
- recommendation

The canonical report structure is defined in
`docs/framework/SKILL_DIFF_REPORT_MODEL.md`.
