# Framework Model

This directory defines the conceptual model of ai-driven-sdlc.

The framework model explains what the repository contains and how those assets
relate to one another. The execution governance in `docs/execution/` explains
how those assets are changed, validated, and traced over time.

## Documents

- `AB_PROTOCOL_MODEL.md` defines classification standards for single prompts,
  A/B protocols, multi-step protocols, workflow protocols, and capability
  protocols.
- `ASSET_MODEL.md` defines the governed framework asset taxonomy.
- `GOVERNANCE_MODEL.md` defines principles, evolution rules, compatibility
  expectations, and prohibited actions.
- `LIFECYCLE_MODEL.md` defines proposal, creation, validation, publication,
  maintenance, and deprecation states for all asset types.
- `PROCESS_TREE.md` is a legacy compatibility pointer to the active canonical
  Process Tree at `process-trees/default.md`.
- `PROCESS_TREE_INTEGRATION_RULES.md` defines how skill proposals map to Process
  Trees.
- `PROMOTION_DECISION_MODEL.md` defines promotion decision inputs, outputs,
  recommendation structure, and traceability requirements.
- `PROMPT_IMMUTABILITY.md` defines preservation rules for prompts and protocols
  as source artifacts.
- `PROPOSAL_ARCHITECTURE.md` defines how new framework contributions enter as
  proposals.
- `PROPOSAL_LIFECYCLE.md` defines proposal states, transitions, approvals, and
  promotion requirements.
- `REPOSITORY_MAPPING_ENGINE.md` defines deterministic repository placement
  recommendations for governed framework assets.
- `REPOSITORY_PLACEMENT_MODEL.md` defines the canonical repository placement
  report structure.
- `SIMILARITY_ANALYSIS_ENGINE.md` defines comparison rules for detecting new,
  equivalent, enhanced, variant, replacement, duplicate, or incompatible
  proposed assets.
- `SIMILARITY_REPORT_MODEL.md` defines the canonical similarity analysis report
  structure.
- `SKILL_EVOLUTION_OVERVIEW.md` summarizes how the Skill Evolution System works.
- `SKILL_EVOLUTION_ENGINE.md` defines how new prompts and protocols become
  governed skill proposals.
- `SKILL_CREATION_COMMAND.md` defines the official skill creation command
  lifecycle, responsibilities, boundaries, and relationship to the Skill
  Evolution System.
- `SKILL_DIFF_MODEL.md` defines how skill differences are classified for
  duplicate detection, enhancement detection, replacement review, version
  impact, promotion, compatibility, and Process Tree analysis.
- `SKILL_DIFF_REPORT_MODEL.md` defines the canonical Skill Diff Report
  structure.
- `SKILL_PROPOSAL_MODEL.md` defines the canonical package contract for proposed
  skills.
- `SKILL_INTAKE_COMPILER.md` defines the intake path from submitted protocol to
  proposal package.
- `SKILL_INTAKE_DRY_RUN.md` simulates Skill Intake behavior against a realistic
  A/B protocol.
- `SKILL_INTAKE_SEQUENCE.md` defines the authoritative intake sequence.
- `SKILL_INTAKE_VALIDATION.md` defines mandatory validation between intake and
  promotion consideration.
- `SKILL_INTAKE_VALIDATION_REPORT.md` defines the standard validation report
  structure.
- `SKILL_LIFECYCLE.md` defines skill and skill proposal states, transitions, and
  governance expectations.
- `SKILL_MODEL.md` defines skills as atomic executable capabilities.
- `SKILL_PACKAGE_CONTRACT.md` defines the required canonical package structure
  for admitted skills.
- `SKILL_PACKAGE_VALIDATION_MODEL.md` defines validation expectations for
  canonical skill packages.
- `SKILL_PROMOTION_ENGINE.md` defines promotion evaluation for validated skill
  proposals.
- `SKILL_PROMOTION_POLICY.md` defines governance rules for promotion decisions.
- `SKILL_PROMOTION_SEQUENCE.md` defines the authoritative promotion flow.
- `SKILL_REGISTRY.md` defines the authoritative inventory for framework skills.
- `SKILL_REGISTRY_ENTRY_MODEL.md` defines the standard structure for registry
  entries.
- `SKILL_VERSIONING.md` defines skill version impact expectations derived from
  Skill Diff categories.
- `WORKFLOW_MODEL.md` defines workflows as orchestrations of skills.
- `INSTALLATION_MODEL.md` defines how the framework should install into new and
  existing repositories.
- `../commands/README.md` indexes official user-facing command specifications.
- `../commands/compile-next-protocol-into-skill.md` documents the user-facing
  command for compiling a submitted protocol into a skill proposal.
- `../guides/SKILL_CREATION_COMMAND_GUIDE.md` explains the Skill Creation
  Command for contributors.

## Relationship Between Documents

The A/B Protocol Model classifies submitted prompt structures. The asset model
defines what the framework governs. The governance model defines how changes are
controlled. The lifecycle model defines maturity states. The active default
Process Tree at `process-trees/default.md` defines canonical execution order and
artifact flow. Process Tree Integration Rules define how skill proposals relate
to that execution model. Prompt Immutability protects submitted prompts and
protocols as source artifacts. Proposal Architecture defines the review and
promotion path for new framework contributions. The Repository Mapping Engine
defines deterministic, traceable placement recommendations for proposed assets.
The Similarity Analysis Engine classifies proposed assets as new, equivalent,
enhancements, variants, replacements, duplicates, or incompatible before
promotion. The Skill Creation Command is the official command entry point into
the Skill Evolution System. The Skill Evolution Overview summarizes the full
path from source prompt to canonical skill. The Skill Evolution Engine defines
how new expertise enters the framework as governed proposals. The Skill
Proposal Model defines the required package shape for proposed skills. The
skill intake compiler defines how submitted protocols are compiled into
proposal packages. The Skill Intake Sequence defines the canonical intake
order, and the Skill Intake Dry Run validates that architecture against a
realistic A/B protocol example. Skill Intake Validation defines the mandatory
checks before promotion consideration. The skill model defines reusable
capabilities. The Skill Diff Model classifies differences between skills before
promotion, replacement, duplicate handling, compatibility review, versioning, or
Process Tree change. The Skill Lifecycle defines state transitions from draft
proposal to canonical, deprecated, archived, or rejected. The Skill Package
Contract defines the required structure for admitted canonical skills. The Skill
Promotion Engine defines how validated proposals are evaluated for canonical
admission. The Skill Promotion Policy controls promotion decisions, and the
Promotion Decision Model defines decision records. The Skill Registry indexes
canonical, deprecated, archived, and proposed skills. Skill Versioning records
version impact based on Skill Diff categories. The workflow model defines how
those capabilities are sequenced. The installation model defines how framework
assets reach target repositories safely.

Together, these documents keep ai-driven-sdlc agent-agnostic, composable, and
safe to evolve.

## Current Boundary

This repository currently defines the operating model only. It does not yet
implement full skills, full workflows, full schemas, adapters, validation
scripts, or production installation behavior.
