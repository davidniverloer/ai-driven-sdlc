# Validation Protocol

The validation protocol defines expectations for reviewing governed framework
assets. It is a protocol, not an implementation. Validation scripts may be added
later, but agents must apply these checks manually when changing assets.

## Pre-Publication Validation

Before recommending a commit, publication, release, or handoff, agents must
validate:

- asset integrity
- workflow integrity
- schema integrity
- installation integrity
- repository integrity
- documentation integrity

Agents must also provide:

- compatibility impact assessment
- breaking-change assessment
- deprecation assessment
- validation evidence tied to modified files

If validation cannot be completed, the asset must remain unpublished and the gap
must be documented.

## Skill Integrity

Objective: ensure each skill is a coherent, reusable capability.

Validate:

- structure: skill files live under the correct capability group
- contracts: purpose, inputs, outputs, and expected artifacts are explicit
- dependencies: referenced skills, schemas, tools, or documents exist
- agent agnosticism: core skill content does not require a specific AI vendor
- lifecycle state: proposed, published, deprecated, or removed state is clear

Expectation: a skill can be understood and composed without reading a specific
agent implementation.

## Workflow Integrity

Objective: ensure workflows correctly orchestrate skills.

Validate:

- orchestration: workflow steps have clear order and decision points
- references: every referenced skill, schema, and artifact exists
- dependency chains: prerequisites and handoffs are explicit
- artifact passing: outputs from one step satisfy inputs for later steps
- recovery: workflow state can be inspected and resumed

Expectation: a workflow explains how capabilities are sequenced without
duplicating the reusable skill definitions.

## Schema Integrity

Objective: ensure machine-readable contracts remain stable and compatible.

Validate:

- compatibility: changes do not break known consumers without migration notes
- versioning: schema versions and compatibility intent are explicit
- contract stability: required fields, optional fields, and defaults are clear
- references: schemas referenced by skills, workflows, or installers exist
- evolution: breaking changes are documented in decisions

Expectation: automation can rely on schemas without hidden or unstable
semantics.

## Adapter Integrity

Objective: ensure optional integrations do not compromise core framework
neutrality.

Validate:

- optionality: the core framework works without the adapter
- boundary: adapter behavior does not redefine core skill, workflow, or schema
  semantics
- dependencies: vendor, editor, CLI, or runtime dependencies are explicit
- compatibility: supported external versions or assumptions are documented
- isolation: adapter-specific instructions do not leak into core assets

Expectation: adapters extend the framework for specific environments while the
core remains agent-agnostic and vendor-neutral.

## Process Tree Integrity

Objective: ensure the canonical Process Tree remains a complete and coherent
execution map.

Validate:

- `process-trees/default.md` exists
- every referenced skill exists or is marked proposed
- every node has required fields
- every node has a Repository Location
- every consumed artifact is produced by an earlier node or declared external
- every produced artifact has a downstream consumer or explicit terminal purpose
- no orphan nodes exist
- human gates are explicitly marked
- canonical trees are referenced in `process-trees/README.md`
- legacy references point to the canonical location

Expectation: `process-trees/default.md` accurately describes execution
order, artifact flow, dependencies, and human approval gates.

## Process Tree Validation

Objective: ensure every stored Process Tree is complete, discoverable, and safe
to use.

Validate:

- `process-trees/default.md` exists
- every process tree has Tree ID, Version, Status, Intended Use, and Source
  Basis
- every node follows the node contract
- every repository location is present
- every consumed artifact is produced earlier or declared external
- every produced artifact has a downstream consumer or terminal purpose
- canonical process trees are not overwritten without approval
- canonical trees are referenced in `process-trees/README.md`
- legacy references point to the canonical location
- `process-trees/README.md` references all process tree files

Expectation: process trees under `process-trees/` can be selected and compared
without ambiguity.

## Prompt Fidelity Validation

Objective: ensure submitted prompts and protocols remain faithful source
artifacts.

Validate:

- original prompts are preserved
- original wording is preserved
- original ordering is preserved
- original structure is preserved
- proposal packages keep immutable source copies under `original/`
- derived annotations, classifications, mappings, and proposals do not replace
  original source content

Any modification to original prompt content must fail validation unless explicit
human authorization exists and the original source artifact remains preserved.

Expectation: prompt lineage remains auditable, reproducible, and traceable from
source artifact to proposal.

## Protocol Classification Validation

Objective: ensure protocol submissions are classified and packaged without
violating prompt fidelity.

Validate:

- protocol type is correctly assigned
- A/B pair integrity is preserved
- prompt ordering is preserved
- prompt fidelity is preserved
- protocol packaging rules are respected
- classification ambiguity is documented instead of resolved by rewriting source
  prompts

Expectation: protocol recognition identifies single prompts, A/B protocols,
multi-step protocols, workflow protocols, and capability protocols without
modifying source material.

## Proposal Validation

Objective: ensure framework contributions are reviewed before becoming
canonical assets.

Validate:

- proposal category exists
- proposal structure is valid
- proposal lifecycle state is valid
- proposal ownership exists
- promotion readiness requirements are met
- source material is preserved when applicable
- Process Tree impact is assessed when applicable
- validation evidence is recorded
- approval requirements are identified before promotion

Expectation: new framework contributions enter through proposals and do not
modify approved assets directly.

## Skill Proposal Validation

Objective: ensure proposed skills satisfy the Skill Proposal Model before review
or promotion.

Validate:

- proposal package completeness
- prompt fidelity
- classification completeness
- repository placement completeness
- process tree impact completeness
- approval checklist completeness
- required `proposal.yaml` metadata is present
- source prompts are preserved under `source/`

Expectation: no proposed skill may bypass the required package structure,
prompt preservation, repository placement report, Process Tree impact report, or
approval checklist.

## Skill Intake Validation

Objective: ensure new expertise is compiled into proposals without bypassing
governance.

Skill Intake Validation is mandatory and is defined in
`docs/framework/SKILL_INTAKE_VALIDATION.md`.

Validate:

- protocol classification exists
- capability classification exists
- repository mapping exists
- process tree mapping exists
- proposal package completeness
- prompt fidelity
- approved assets were not modified directly
- validation report exists before promotion consideration

Expectation: every accepted intake produces a governed proposal package with
classification, mapping, Process Tree impact, and preserved source prompts.

## Process Tree Integration Validation

Objective: ensure proposed skills have a valid relationship to the execution
model before promotion.

Validate:

- proposed skill has `process-tree-impact.md`
- affected tree is identified
- affected node is identified or new node is proposed
- consumed artifacts are declared
- produced artifacts are declared
- approval gate impact is declared
- execution order impact is declared
- canonical tree modifications require approval
- terminal or out-of-tree classification is explicit when no placement is
  proposed

Expectation: no proposed skill may be promoted without valid Process Tree
placement or explicit terminal classification.

## Promotion Readiness Validation

Objective: ensure validated proposals are ready for promotion consideration.

Validate:

- proposal validation complete
- process tree review complete
- governance review complete
- repository placement approved
- prompt fidelity verified
- compatibility impact assessed
- approval checklist complete
- promotion authority identified

Expectation: no proposal enters promotion review without validation evidence,
Process Tree review, governance review, approved placement, and verified prompt
fidelity.

## Skill Lifecycle Validation

Objective: ensure every skill or proposal is in a valid lifecycle state and only
uses allowed transitions.

Validate:

- every skill or proposal has a valid lifecycle state
- transitions are allowed
- canonical skills are not modified directly
- deprecated skills retain replacement references where applicable
- rejected proposals preserve rejection rationale
- archived skills preserve source lineage and deprecation history

Expectation: skill state changes are explicit, governed, and traceable.

## Skill Registry Validation

Objective: ensure skills are discoverable and traceable through the authoritative
registry.

Validate:

- canonical skills have registry entries
- registry entries have valid lifecycle states
- repository locations exist
- Process Tree references exist
- dependencies are declared
- deprecated skills retain replacement references where applicable
- archived skills remain discoverable

Expectation: registry entries accurately reflect skill lifecycle, repository
placement, Process Tree relationships, and dependencies.

## Skill Diff Validation

Objective: ensure skill comparisons are complete, traceable, and safe for
promotion, versioning, and Process Tree review.

Validate:

- diff category exists
- similarity outcome exists
- version impact exists
- promotion impact exists
- Process Tree impact exists
- compared assets are identified
- prompt fidelity is preserved

Expectation: every required Skill Diff analysis classifies change impact before
promotion and does not rewrite, normalize, optimize, or reinterpret source
prompts.

## Repository Mapping Validation

Objective: ensure repository placement recommendations are deterministic,
traceable, collision-aware, and aligned with Process Trees.

Validate:

- capability exists
- repository path exists or is proposed
- placement rationale exists
- collision analysis exists
- Process Tree relationship exists
- affected assets are identified
- approved assets are not overwritten

Expectation: repository mapping recommends placement without silently inferring
paths, creating arbitrary locations, or modifying approved assets.

## Similarity Analysis Validation

Objective: ensure proposed assets are compared against existing framework assets
before promotion.

Validate:

- compared assets identified
- comparison dimensions evaluated
- similarity outcome exists
- recommendation exists
- prompt fidelity preserved
- duplicate detection was performed

Expectation: similarity analysis classifies overlap, enhancement, replacement,
duplicate, variant, or incompatibility before promotion consideration.

## Skill Package Validation

Objective: ensure canonical skill packages satisfy the required package
contract before canonical admission.

Validate:

- required files exist
- required metadata exists
- source prompts exist
- Process Tree references exist
- lifecycle state exists
- package contract compliance exists
- output contract exists
- repository placement matches package location

Expectation: every canonical skill package conforms to
`docs/framework/SKILL_PACKAGE_CONTRACT.md` and preserves source prompts
verbatim.

## Skill Creation Command Validation

Objective: ensure the skill creation command generates governed proposals only
and preserves prompt fidelity.

Validate:

- protocol classification
- capability classification
- repository mapping
- Process Tree mapping
- similarity analysis
- proposal package generation
- prompt fidelity
- validation report generation
- promotion recommendation output

Expectation: `Compile the next protocol into an ai-driven-sdlc skill.` produces
a validated proposal package and promotion recommendation without creating
canonical skills or modifying approved assets.

## /skill-create Validation

Objective: ensure `/skill-create` activates only through the strict slash
command and generates governed proposals without altering source prompts.

Validate:

- first non-empty line, after trimming leading and trailing whitespace, is
  `/skill-create`
- activation-line normalization did not alter submitted source prompts
- submitted prompts are preserved verbatim
- protocol classification exists
- capability classification exists
- repository mapping exists
- Process Tree impact exists
- similarity analysis exists
- proposal package exists
- validation report exists

Expectation: `/skill-create` generates a proposal package only and does not
create canonical skills, promote skills, modify approved assets, bypass
validation, or bypass governance.

## Promotion Policy Validation

Objective: ensure promotion decisions comply with Skill Promotion Policy.

Validate:

- promotion eligibility
- governance compliance
- process tree review
- canonical asset protection
- traceability completeness
- prompt fidelity preservation
- lifecycle transition validity

Expectation: no proposal is promoted without eligibility, governance compliance,
Process Tree review, canonical asset protection, and durable traceability.

## Installation Integrity

Objective: ensure installation behavior is safe for new and existing
repositories.

Validate:

- safe installation: planned writes are previewed and scoped
- safe upgrades: existing `.ai-sdlc/` content is detected and preserved
- safe removal: only framework-owned files are removed
- backup behavior: overwrites require backup or explicit confirmation
- manifest behavior: installed assets can be traced to an installation manifest

Expectation: installing, upgrading, or uninstalling ai-driven-sdlc does not
silently damage user repositories.

## Repository Integrity

Objective: ensure repository structure remains coherent.

Validate:

- structure: governed assets live in expected top-level directories
- governance assets: `AGENTS.md` and `docs/execution/` remain present
- documentation consistency: model docs agree with execution governance
- tree validation: file tree is inspected after structural changes
- protected assets: deletions or moves are justified by decision records

Expectation: the repository remains recognizable as the ai-driven-sdlc
framework.

## Documentation Integrity

Objective: ensure users and agents can discover and understand framework rules.

Validate:

- completeness: changed concepts are documented in nearby docs
- consistency: docs do not contradict architecture principles
- discoverability: README files point to the right deeper documents
- traceability: major changes connect to decisions, risks, or command history
- specificity: docs define concrete expectations rather than vague intent

Expectation: future agents can reason from documentation before implementation.

## Commit Recommendation Validation

Before recommending a commit, agents must confirm:

- exactly one atomic change objective is represented
- modified asset types are identified
- validation results are summarized
- compatibility impact is stated
- breaking-change status is stated
- deprecation impact is stated
- protected operations are presented through the approval block in
  `GIT_GOVERNANCE.md`
