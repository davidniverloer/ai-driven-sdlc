# Agent Execution Contract

`AGENTS.md` is the authoritative execution contract for agents working in this
repository. It governs how ai-driven-sdlc is analyzed, modified, validated, and
evolved.

## Repository Mission

ai-driven-sdlc is an installable, agent-agnostic SDLC skill framework. It
transforms software engineering expertise into reusable, executable AI
capabilities that can be installed into software repositories through a local
`.ai-sdlc/` operating layer.

The repository itself is the product. It is not an application project, backend
service, frontend app, SaaS product, or single-agent automation bundle.

The framework serves developers, technical leads, and autonomous or
semi-autonomous coding agents that need structured software delivery workflows
without being locked to one AI vendor, editor, CLI, or orchestration runtime.

It exists to help agents move from raw concept through problem compression,
ontology, requirements, UX reasoning, architecture, execution planning, and
governed implementation while preserving traceability and engineering judgment.

## Architectural Principles

**Agent-Agnostic Design**

Core assets must not assume Codex, Claude Code, Cursor, or any other specific AI
tool. Agent-specific integrations may exist only as optional adapters outside
the core contracts.

**Capability-Oriented Skills**

Skills are grouped by capability, not by SDLC phase. A requirements skill belongs
to `skills/requirements/` even if a workflow uses it during planning,
governance, or implementation review.

**Workflow-Driven Orchestration**

Workflows compose skills into phase-like sequences. Workflows own sequencing,
handoffs, and artifact flow; skills own reusable capability behavior.

**Schema-First Evolution**

Durable contracts should be expressed as schemas before automation depends on
them. Schema changes must consider compatibility, migration, and downstream
consumers.

**Installation Safety**

Installation must be safe for new and existing repositories. Installers and
uninstallers must preview changes, avoid silent overwrites, preserve user files,
and make removal predictable.

**Backward Compatibility**

Published skill, workflow, schema, installation, and adapter contracts should not
be broken casually. Breaking changes require explicit decisions, migration notes,
and validation expectations.

**Composability**

Framework assets should be modular and reusable. Skills should be independently
understandable; workflows should compose existing skills rather than duplicating
them.

**Traceability**

Major changes must be traceable to decisions, risks, validation expectations,
and command history. Future agents should be able to explain why a structure
exists and how it is expected to evolve.

## Execution Rules

**Repository-First Reasoning**

Before changing the framework, inspect the existing repository structure and
nearby documentation. Follow established models unless a documented decision
justifies changing them.

**Explicit Architectural Decisions**

Material changes to framework structure, contracts, lifecycle rules, or
governance must be recorded in `docs/execution/DECISIONS.md`.

**No Silent Assumptions**

If a change depends on an unstated convention, document that convention or leave
the change out. Do not encode hidden behavior into core assets.

**No Silent Conflict Resolution**

When framework documents conflict, do not quietly choose one. Preserve evidence
of the conflict, resolve it explicitly, and record the decision.

**Documentation Before Implementation**

Define the model before implementing skills, workflows, schemas, adapters,
installers, or validators. This repository should not accumulate behavior that
has no documented contract.

**Validation Before Publication**

Before treating an asset as publishable, validate its structure, references,
contracts, compatibility, and documentation according to
`docs/execution/VALIDATION_PROTOCOL.md`.

**Protected Git Operations Require Approval**

Agents may propose protected git, GitHub, and worktree operations, but must not
execute them without explicit approval through the approval block defined in
`docs/execution/GIT_GOVERNANCE.md`.

Protected operations include `git add`, `git commit`, `git push`,
`git checkout`, `git switch`, `git branch -d`, `git reset`, `git restore`,
`git clean`, `git stash`, `git merge`, `git rebase`, `git tag`,
`git worktree add`, `git worktree remove`, `gh pr create`, and `gh pr merge`.

**Atomic Commit Recommendations**

Commit recommendations must have exactly one atomic change objective. They must
identify modified assets, validation results, and compatibility impact before
suggesting a commit.

## Protected Assets

The following assets are protected because they define framework behavior or
governance:

- `skills/`: capability definitions and future executable skill contracts
- `workflows/`: orchestration definitions and phase-like delivery sequences
- `schemas/`: machine-readable contracts and compatibility boundaries
- `adapters/`: future optional agent or tool integration layers
- installation assets: installer, uninstaller, manifests, and upgrade metadata
- governance assets: `AGENTS.md`, `docs/execution/`, command history, decisions,
  risk register, and validation protocol
- documentation assets: framework model documents, README files, and asset-local
  documentation

## Process Governance

ai-driven-sdlc supports multiple Processes. Processes live under
`processes/` and are Markdown source-of-truth execution maps.

`processes/default.md` is the active default canonical Process.
`process-trees/default.md` is a legacy compatibility pointer.
`docs/framework/PROCESS_MODEL.md` is the current process model.

Agents must inspect `processes/default.md` before creating or modifying
skills or workflows. They must update the relevant Process whenever
execution order, repository placement, artifact dependencies, or approval gates
change.

Approved skills must not be modified directly unless explicitly authorized. New
skills must be placed into the Process as proposed nodes or canonical nodes
according to governance rules.

Agents must use `processes/templates/process-template.md` when creating
new Processes. Agents must update `processes/README.md` when adding a
process. Agents must update `README.md` when adding a canonical or recommended
process.

Agents must not overwrite canonical Processes without explicit approval.
New Processes must be created as separate files under `processes/`.
Process changes must be recorded in command history.

Future agents must follow `docs/execution/PROCESS_POLICY.md` to decide when
Process updates are required, how to record them, and how to report Process
impact.

## Skill Evolution Engine

The Skill Evolution Engine governs how new expertise enters ai-driven-sdlc as
skill proposals. Its architecture is defined in
`docs/framework/SKILL_EVOLUTION_ENGINE.md`.

The engine is responsible for intake, classification, repository mapping,
Process mapping, proposal generation, proposal validation, and promotion
preparation. It does not implement skills, rewrite prompts, or modify approved
skills.

Submitted prompts are source artifacts. Source prompts must be preserved
verbatim. Agents may classify, annotate, map, and package submitted prompts.
Agents may not rewrite, optimize, improve, or reinterpret submitted prompts.

The Skill Evolution Engine must remain Process aware. New skill proposals
must identify where they belong in the relevant Process and whether they
affect execution order, repository placement, artifact dependencies, or approval
gates.

Approved skills are protected assets. Agents may analyze approved skills,
compare proposed skills against them, and prepare promotion packages, but must
not modify approved skills directly without explicit human authorization.

## Skill Intake Compiler

The Skill Intake Compiler is the official entry point for new expertise. Its
specification is defined in `docs/framework/SKILL_INTAKE_COMPILER.md`.

New expertise enters as proposals. The compiler may classify, map, package,
validate, and propose submitted prompts and protocols, but it must preserve
prompt fidelity.

Approved assets remain immutable. The compiler must not directly modify approved
skills, approved workflows, or canonical Processes.

## Skill Intake Validation

No proposal may advance without validation. Skill Intake Validation is defined in
`docs/framework/SKILL_INTAKE_VALIDATION.md`.

Validation must occur before promotion consideration. Validation may never modify
source prompts. Validation must remain deterministic and traceable.

Validation results must be recorded in a validation report. A failed validation
blocks promotion consideration.

## Skill Promotion Engine

Validated proposals enter promotion evaluation through the Skill Promotion
Engine, defined in `docs/framework/SKILL_PROMOTION_ENGINE.md`.

Canonical admission requires governance. Approved skills remain immutable.
Promotion never alters source prompts.

The Skill Promotion Engine may evaluate readiness and recommend promotion, but
it must not bypass validation, bypass approval, modify approved skills, or
modify canonical Processes directly.

## Skill Promotion Policy

Promotion requires governance. Skill Promotion Policy is defined in
`docs/framework/SKILL_PROMOTION_POLICY.md`.

Canonical assets are protected. Promotion never modifies source prompts.
Promotion must be traceable to proposal ID, validation report, promotion
decision, approval authority, and lifecycle transition.

## Skill Lifecycle Governance

Every skill must have a lifecycle state. Skill lifecycle governance is defined in
`docs/framework/SKILL_LIFECYCLE.md`.

Lifecycle transitions must be documented. Canonical skills are immutable by
default. Deprecated skills must preserve history, replacement references when
applicable, source lineage, validation evidence, and Process reference
status.

## Canonical Skill Registry

The Canonical Skill Registry is the authoritative skill inventory. Its
architecture is defined in `docs/framework/SKILL_REGISTRY.md`.

Canonical skills must appear in the registry. Deprecated skills must remain
traceable. Archived skills must remain discoverable.

Agents must not treat `skills/` directory presence alone as sufficient proof of
canonical status. Registry status and lifecycle state must be checked.

## Prompt Immutability

Submitted prompts are source artifacts. Source prompts must remain verbatim.
Prompt Immutability is defined in `docs/framework/PROMPT_IMMUTABILITY.md`.

Agents may:

- classify submitted prompts
- annotate submitted prompts externally
- map submitted prompts
- package submitted prompts
- validate submitted prompts

Agents may not:

- rewrite submitted prompts
- optimize submitted prompts
- improve submitted prompts
- reinterpret submitted prompts
- merge submitted prompts
- paraphrase submitted prompts

Any exception requires explicit human authorization and must preserve the
original source prompt alongside any authorized derivative.

## A/B Protocol Recognition

A/B protocols are first-class framework assets. The recognition model is defined
in `docs/framework/AB_PROTOCOL_MODEL.md`.

Protocol recognition is classification only. Recognition may classify, annotate
externally, map, package, and validate protocol submissions, but it may never
modify source prompts.

A/B relationships must be preserved. A prompts, B prompts, their ordering, their
wording, their structure, and their relationship must remain unchanged.

## Proposal Governance

All new framework contributions enter as proposals. Proposal architecture is
defined in `docs/framework/PROPOSAL_ARCHITECTURE.md`, and proposal lifecycle is
defined in `docs/framework/PROPOSAL_LIFECYCLE.md`.

Approved assets remain immutable. New skills, workflows, Processes, schemas,
adapters, and installation assets must be proposed, validated, approved, and
promoted before they become canonical.

Promotion requires validation. Promotion requires governance approval. Agents
must not bypass proposal review, bypass validation, or directly modify approved
assets through proposal work.

## Skill Diff Governance

Skill Diff governance is defined in `docs/framework/SKILL_DIFF_MODEL.md`.

Diffs must preserve prompt fidelity. Agents may compare skill metadata,
contracts, dependencies, repository placement, Process placement, lifecycle
state, and version, but must not rewrite, normalize, optimize, or reinterpret
source prompts.

Diffs must be traceable to compared assets, evidence, diff category, similarity
outcome, version impact, promotion impact, Process impact, and
recommendation.

Promotion review must classify diff impact before a proposal is promoted,
replaced, merged, rejected as duplicate, or treated as incompatible.

## Repository Mapping Governance

Repository Mapping governance is defined in
`docs/framework/REPOSITORY_MAPPING_ENGINE.md`.

Repository placement must be traceable. Placement recommendations must identify
asset classification, capability, proposed path, rationale, collisions, Process
relationship, affected assets, and recommendation.

Repository placement must be deterministic. Agents must use documented asset
categories and capability locations instead of inventing paths or silently
inferring placement.

Repository placement must not overwrite approved assets. Collision findings must
be reported and resolved through proposal, promotion, or protected operation
governance.

Repository placement must align with Processes. A proposed location is not
sufficient for promotion unless the related Process nodes, branches,
execution paths, or terminal classification are documented.

## Similarity Analysis Governance

Similarity Analysis governance is defined in
`docs/framework/SIMILARITY_ANALYSIS_ENGINE.md`.

Similarity analysis is mandatory before promotion. Proposed assets must be
compared against existing framework assets when promotion is being considered.

Duplicate detection is mandatory. Agents must not promote a proposed skill,
workflow, Process, schema, or adapter without checking whether it
duplicates, enhances, replaces, or conflicts with an existing asset.

Prompt fidelity must be preserved. Similarity analysis may compare metadata,
contracts, dependencies, repository placement, lifecycle state, artifacts, and
Process relationships, but it must not rewrite, normalize, optimize, or
reinterpret source prompts.

Similarity analysis must be traceable to compared assets, comparison
dimensions, similarity outcome, risk assessment, and recommendation.

## Skill Package Contract

Every canonical skill must conform to the Skill Package Contract defined in
`docs/framework/SKILL_PACKAGE_CONTRACT.md`.

Source prompts remain immutable. Canonical skill packages must preserve source
prompts and protocols under `source/` without rewriting, optimizing, improving,
normalizing, or reinterpreting them.

Package structure is mandatory. Canonical skills must include required package
files, required metadata, output contract expectations, source prompt
preservation, examples, repository placement, Process references,
lifecycle state, dependencies, and source proposal traceability.

## Skill Creation Command

`Compile the next protocol into an ai-driven-sdlc skill.` is the official entry
point into the Skill Evolution System.

The command activates Skill Intake Mode and generates governed skill proposal
packages only.

All submitted prompts must remain immutable. The command may classify, annotate
externally, map, package, and validate, but it must not rewrite, optimize,
improve, reinterpret, paraphrase, or merge submitted prompts.

The command must not create canonical skills, promote skills, modify approved
skills, modify approved workflows, or modify canonical Processes.

## Slash Command Governance

`/skill-create` is the official skill intake command.

Slash commands must appear as the first non-empty line.

Agents may normalize activation-line formatting only, such as trimming leading
or trailing whitespace around `/skill-create`.

Natural-language trigger detection is forbidden.

`/skill-create` generates proposals only.

`/skill-create` must preserve submitted prompts verbatim.

`/skill-create` must never modify approved assets directly.

## Skill Proposal Contract

Every Skill Proposal must conform to the Skill Proposal Model defined in
`docs/framework/SKILL_PROPOSAL_MODEL.md`.

No Skill Proposal may bypass the required package structure. Skill Proposal
packages must include proposal metadata, classification, repository placement,
Process impact, approval checklist, and immutable source prompt copies.

## Prohibited Actions

Agents must not:

- arbitrarily restructure the framework without an architectural decision
- break skill contracts without approval, migration notes, and validation
- break workflow contracts without approval, migration notes, and validation
- introduce vendor-specific assumptions into core framework assets
- modify frozen invariants without explicit approval
- delete governance artifacts without justification
- overwrite user files during install or upgrade behavior without backup
- implement full skills, workflows, schemas, adapters, or installers before the
  relevant model is documented
- execute protected git, GitHub, or worktree operations without explicit
  approval
- combine unrelated asset-family changes into a single commit recommendation
- rewrite, optimize, improve, or reinterpret submitted source prompts
- use the Skill Evolution Engine to bypass proposal, validation, approval, or
  Process governance
- bypass proposal governance for new framework contributions
- bypass the Skill Proposal package structure for proposed skills

## Future Agent Expectations

Future agents should analyze the repository as a framework, not as an
application. They should identify the governed asset type they are modifying,
read the relevant model document, and check current decisions and risks before
making changes.

When modifying the framework, agents should keep changes scoped, preserve
agent-agnostic contracts, update nearby documentation, and record material
decisions. They should prefer additive evolution until compatibility policy and
versioning are fully defined.

When validating changes, agents should inspect the repository tree, confirm
references resolve, check that governance files remain consistent, and document
known gaps. Validation scripts may be added later, but the protocol applies
immediately.

When evolving the framework, agents should treat traceability as part of the
work. A future maintainer should be able to connect each major change to its
objective, decision record, risk posture, and validation expectations.

When coordinating with other agents, agents should declare ownership of asset
families, disclose dependencies, record compatibility concerns, and leave a
handoff record using `docs/execution/AGENT_COORDINATION.md`.
