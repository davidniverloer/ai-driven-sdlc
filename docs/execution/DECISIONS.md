# Architectural Decision Log

Architectural decisions record why the framework changed, not just what changed.
Use this log for material changes to framework structure, contracts, governance,
compatibility, installation behavior, adapters, schemas, skills, or workflows.

## ADR Template

```text
## ADR-0000: Title

Date: YYYY-MM-DD
Status: Proposed | Accepted | Superseded | Deprecated

### Context

What situation, constraint, or problem created the need for a decision?

### Decision

What decision was made?

### Consequences

What becomes easier, harder, required, prohibited, or deferred because of this
decision?
```

## ADR-0001: Create the Repository Operating System

Date: 2026-06-02
Status: Accepted

### Context

ai-driven-sdlc is a framework repository whose future value depends on stable
governance, traceability, validation, and architectural control. The repository
will eventually contain skills, workflows, schemas, adapters, installation
mechanisms, governance systems, validation systems, and documentation.

Without an explicit operating model, future agents could introduce vendor
assumptions, phase-based skill organization, unsafe installation behavior,
schema drift, workflow drift, or undocumented structural changes.

### Decision

Create a Repository Operating System in `docs/execution/` and make `AGENTS.md`
the authoritative execution contract for future agents. The ROS defines governed
asset types, evolution rules, change management categories, validation
requirements, traceability expectations, and release readiness criteria.

### Consequences

Future framework changes must be evaluated against the ROS. Major architectural
changes require decision records. Validation expectations apply even before
automation exists. The repository now has a governance layer that protects
agent-agnostic design, capability-oriented skills, workflow orchestration,
schema-first evolution, installation safety, and traceability.

## ADR-0002: Define Foundational Asset, Governance, and Lifecycle Models

Date: 2026-06-02
Status: Accepted

### Context

The Repository Operating System needs explicit contracts for what kinds of
assets ai-driven-sdlc governs, how those assets evolve, and which governance
rules apply across asset types. Without standalone model documents, future
agents could treat skills, workflows, schemas, adapters, installation assets,
governance assets, and documentation assets inconsistently.

### Decision

Create `docs/framework/ASSET_MODEL.md`,
`docs/framework/GOVERNANCE_MODEL.md`, and
`docs/framework/LIFECYCLE_MODEL.md` as governance-level contracts. These
documents define the authoritative asset taxonomy, framework governance
principles, compatibility expectations, prohibited actions, and lifecycle states
for every governed asset type.

### Consequences

Future changes must identify the affected asset type and lifecycle state before
implementation. Publication requires validation evidence and a documented
contract. Governance and validation now explicitly cover documentation assets and
optional adapters in addition to skills, workflows, schemas, installation
assets, and repository integrity.

## ADR-0003: Add Asset Evolution and Protected Operation Governance

Date: 2026-06-02
Status: Accepted

### Context

ai-driven-sdlc will evolve through many framework asset changes, potentially
across multiple agents and worktrees. Without explicit asset evolution, git,
worktree, and coordination governance, agents could publish incompatible
changes, perform unsafe git operations, or create untraceable parallel work.

### Decision

Define asset evolution policy, git governance, worktree policy, and multi-agent
coordination rules under `docs/execution/`. Protected git, GitHub, and worktree
operations require explicit approval. Commit recommendations must be atomic and
must include validation and compatibility impact. Worktrees are named by asset
family, not feature convention.

### Consequences

Future agents must request approval before protected operations, classify asset
changes as safe, risky, or breaking, provide compatibility and deprecation
assessments before publication, and coordinate parallel work through explicit
ownership and handoff records.

## ADR-0004: Establish the Canonical Process Tree

Date: 2026-06-02
Status: Superseded by ADR-0006

### Context

ai-driven-sdlc needs a human-readable source of truth for ordered execution
across capabilities. Skills are grouped by capability and workflows orchestrate
skills, but future agents also need a canonical map showing what runs first,
what runs next, which artifacts flow between nodes, and where human approval
gates exist.

### Decision

Create `docs/framework/PROCESS_TREE.md` as the canonical Markdown Process Tree
and `docs/execution/PROCESS_TREE_POLICY.md` as the governance policy for Process
Tree maintenance. Require future agents to check and update the Process Tree
when execution order, dependencies, artifacts, skill or workflow contracts, or
human gates change.

### Consequences

Process Tree maintenance is now mandatory governance. Future skill and workflow
changes must include Process Tree impact analysis. Process Tree changes must be
recorded in command history and validated through Process Tree Integrity checks.

Supersession note: ADR-0006 moves the active default canonical Process Tree from
`docs/framework/PROCESS_TREE.md` to `process-trees/default.md`.

## ADR-0005: Support Multiple Stored Process Trees

Date: 2026-06-02
Status: Accepted

### Context

ai-driven-sdlc must support different SDLC execution paths for different project
contexts, including default full SDLC, lightweight MVP, UX-first,
architecture-first, repository-bootstrap-only, and enterprise-governed paths.
The existing framework-level Process Tree defines a canonical execution map, but
future agents need a storage and creation model for multiple selectable Process
Trees.

### Decision

Create `process-trees/` as the storage location for Markdown Process Trees,
including `process-trees/default.md` and
`process-trees/templates/process-tree-template.md`. Define the lightweight
command specification `docs/commands/create-process-tree.md` with the trigger
phrase `Create an ai-driven-sdlc process tree named: <name>`.

### Consequences

Future agents can create draft or experimental Process Trees without modifying
core skills or workflows. Canonical Process Trees must not be overwritten
without explicit approval. `process-trees/README.md` becomes the registry for
stored Process Trees, and the main `README.md` must be updated when a canonical
or recommended tree is added.

## ADR-0006: Activate the Default Stored Process Tree

Date: 2026-06-02
Status: Accepted

### Context

The framework now supports multiple Process Trees under `process-trees/`, but
the full generated canonical Process Tree still lived at
`docs/framework/PROCESS_TREE.md` while `process-trees/default.md` contained only
a placeholder summary. Future agents need one unambiguous active default
canonical Process Tree path.

### Decision

Migrate the richer generated Process Tree from `docs/framework/PROCESS_TREE.md`
into `process-trees/default.md`, add required Process Tree metadata, and replace
the old framework document with a legacy compatibility pointer.

### Consequences

`process-trees/default.md` is now the active default canonical Process Tree.
`docs/framework/PROCESS_TREE.md` must be treated as legacy only. Governance,
validation, and README references must direct future agents to the stored
default Process Tree.

## ADR-0007: Establish the Skill Evolution Engine Architecture

Date: 2026-06-02
Status: Accepted

### Context

ai-driven-sdlc needs a safe way to accept new prompts, protocols, and external
expertise without allowing agents to rewrite source material or modify approved
skills directly. Future framework evolution requires a governed path from source
artifact to skill proposal to validated promotion package.

### Decision

Create `docs/framework/SKILL_EVOLUTION_ENGINE.md` as the foundational
architecture for skill evolution. The engine preserves submitted prompts as
source artifacts, classifies them, maps them to repository and Process Tree
locations, generates proposals, validates proposals, and prepares promotion
packages. It does not implement skills or modify approved assets.

### Consequences

New expertise must enter the framework through proposal-first evolution.
Submitted prompts must be preserved verbatim. Agents may classify, annotate,
map, and package prompts, but may not rewrite, optimize, improve, or reinterpret
them. Approved skills remain immutable unless explicit human authorization is
granted.

## ADR-0008: Establish Prompt Immutability Governance

Date: 2026-06-02
Status: Accepted

### Context

The Skill Evolution Engine accepts submitted prompts and protocols as source
material for skill proposals. If agents rewrite, optimize, improve,
reinterpret, merge, paraphrase, expand, or compress that source material, the
framework loses auditability, reproducibility, traceability, and author intent.

### Decision

Create `docs/framework/PROMPT_IMMUTABILITY.md` and make Prompt Immutability a
permanent architectural constraint. Submitted prompts and protocols are source
artifacts. Agents may classify, annotate externally, tag, map, package,
validate, version, and reference them, but may not alter their original content
without explicit human authorization.

### Consequences

Every prompt-derived proposal must preserve immutable original source material.
Prompt Fidelity Validation applies to proposal packages and Skill Evolution
Engine work. Any unauthorized modification of original prompt content fails
validation.

## ADR-0009: Establish the A/B Protocol Recognition Model

Date: 2026-06-02
Status: Accepted

### Context

Many prompts and protocols entering ai-driven-sdlc follow recognizable
structures, including standalone prompts, A/B prompt pairs, multi-step
protocols, workflow protocols, and capability protocols. The Skill Intake
Compiler needs a standard way to classify these submissions without modifying
source prompts.

### Decision

Create `docs/framework/AB_PROTOCOL_MODEL.md` as the classification standard for
protocol recognition. A/B protocols are first-class framework assets.
Recognition may classify and package protocols, but it must preserve prompt
ordering, wording, structure, and relationships.

### Consequences

Protocol classification can inform repository mapping, Process Tree mapping, and
proposal packaging without making final placement decisions or modifying source
material. Protocol Classification Validation now applies to prompt-derived
proposal work.

## ADR-0010: Establish Proposal Architecture

Date: 2026-06-02
Status: Accepted

### Context

ai-driven-sdlc evolves through new skills, workflows, Process Trees, schemas,
adapters, and installation assets. Allowing contributions to modify approved
assets directly would undermine stability, validation, traceability, and
governance.

### Decision

Create `proposals/` as the official intake zone for framework evolution and
define Proposal Architecture and Proposal Lifecycle under `docs/framework/`.
All new framework contributions must enter as proposals before validation,
approval, promotion, and canonicalization.

### Consequences

Approved assets remain stable. New contributions must identify category,
ownership, lifecycle state, validation evidence, Process Tree impact,
compatibility impact, and promotion readiness before becoming canonical.

## ADR-0011: Establish the Skill Proposal Model

Date: 2026-06-02
Status: Accepted

### Context

The Proposal Architecture defines how framework contributions enter
ai-driven-sdlc, but proposed skills need a specific package contract that can be
used by the Skill Intake Compiler, Process Tree governance, Promotion Engine,
and future Canonical Skill Registry.

### Decision

Create `docs/framework/SKILL_PROPOSAL_MODEL.md` and
`proposals/templates/skill-proposal-template/` as the canonical Skill Proposal
contract and template package. Every Skill Proposal must include proposal
metadata, classification, repository placement, Process Tree impact, approval
checklist, and immutable source prompt copies.

### Consequences

Proposed skills now have a required structure before validation, review,
promotion, or canonicalization. Skill Proposal Validation applies to proposed
skills. Source prompts remain immutable and must be preserved under `source/`.

## ADR-0012: Establish Process Tree Integration Rules

Date: 2026-06-02
Status: Accepted

### Context

Skill proposals need more than repository placement. A proposed skill must also
have a clear relationship to the execution model of ai-driven-sdlc, including
execution order, artifact flow, approval gates, canonical Process Trees, and
experimental Process Trees.

### Decision

Create `docs/framework/PROCESS_TREE_INTEGRATION_RULES.md` and require every
Skill Proposal to include `process-tree-impact.md`. No skill may be promoted
without valid Process Tree placement or explicit terminal classification.

### Consequences

Skill Proposal validation now includes Process Tree Integration Validation.
Process Tree-impacting proposals must identify affected trees, nodes, artifacts,
approval gates, execution order impact, and whether canonical tree approval is
required.

## ADR-0013: Establish the Skill Intake Compiler Specification

Date: 2026-06-02
Status: Accepted

### Context

The framework needs an official entry point for transforming submitted prompts
and protocols into proposal packages. Without a Skill Intake Compiler
specification, future agents could classify, map, package, or propose new
expertise inconsistently or bypass prompt fidelity and proposal governance.

### Decision

Create `docs/framework/SKILL_INTAKE_COMPILER.md` as the canonical specification
for Skill Intake Mode. The compiler recognizes trigger phrases, accepts defined
protocol categories, classifies capability, maps repository placement, maps
Process Tree impact, performs similarity analysis, generates proposal packages,
and validates governance without modifying source prompts or approved assets.

### Consequences

New expertise has a defined intake path. Every accepted intake must preserve
prompt fidelity, produce repository mapping, produce Process Tree impact
analysis, and generate a governed proposal package. Approved skills, approved
workflows, and canonical Process Trees remain immutable during intake.

## ADR-0014: Establish Skill Intake Validation

Date: 2026-06-02
Status: Accepted

### Context

The Skill Intake Compiler can generate proposal packages, but generation alone
does not prove a proposal is safe to advance toward promotion. Proposals need a
mandatory validation layer that checks prompt fidelity, protocol classification,
capability assignment, repository placement, Process Tree impact, package
completeness, and governance compliance.

### Decision

Create `docs/framework/SKILL_INTAKE_VALIDATION.md` and
`docs/framework/SKILL_INTAKE_VALIDATION_REPORT.md` as the validation
architecture and standard report structure between Skill Intake Compiler output
and promotion consideration.

### Consequences

No proposal may advance without validation. Validation may never modify source
prompts. Validation outcomes are PASS, PASS_WITH_WARNINGS, and FAIL. Failed
validation blocks promotion consideration.

## ADR-0015: Establish the Skill Promotion Engine

Date: 2026-06-02
Status: Accepted

### Context

Validated Skill Proposals need a governed promotion path before they can become
canonical skills. Validation proves proposal readiness, but canonical admission
also requires promotion evaluation, approval, compatibility assessment, Process
Tree review, repository placement approval, and registration planning.

### Decision

Create `docs/framework/SKILL_PROMOTION_ENGINE.md` and
`docs/framework/SKILL_PROMOTION_SEQUENCE.md` as the promotion architecture and
authoritative promotion flow for validated Skill Proposals.

### Consequences

Validated proposals now enter promotion evaluation before canonical admission.
Promotion outcomes are PROMOTE, PROMOTE_WITH_WARNINGS, and REJECT. Promotion may
recommend canonical registration, but must not alter source prompts, bypass
governance, bypass validation, or modify approved assets directly.

## ADR-0016: Establish the Skill Lifecycle Model

Date: 2026-06-02
Status: Accepted

### Context

The framework needs a clear lifecycle for every skill and skill proposal as it
moves from incoming protocol to proposed asset to validated proposal to
canonical framework capability. Without lifecycle states and transitions, agents
could promote, deprecate, archive, or reject skills inconsistently.

### Decision

Create `docs/framework/SKILL_LIFECYCLE.md` as the official skill lifecycle
model. The model defines Draft, Proposed, Validated, Approved, Promoted,
Canonical, Deprecated, Archived, and Rejected states, with allowed transitions
and governance expectations.

### Consequences

Every skill or skill proposal must have a valid lifecycle state. Canonical skills
are immutable by default. Deprecated and archived skills must preserve history.
Lifecycle validation now applies to skills and proposals.

## ADR-0017: Establish the Skill Promotion Policy

Date: 2026-06-02
Status: Accepted

### Context

The Skill Promotion Engine defines the promotion mechanism, but ai-driven-sdlc
also needs explicit governance rules for who may approve promotion, what may be
promoted, when promotion is allowed, when it is forbidden, and how canonical
assets remain protected.

### Decision

Create `docs/framework/SKILL_PROMOTION_POLICY.md` and
`docs/framework/PROMOTION_DECISION_MODEL.md` as the official policy and decision
model for promotion governance.

### Consequences

Promotion decisions must evaluate eligibility, governance compliance, Process
Tree review, canonical asset protection, prompt fidelity, and traceability.
Promotion outcomes now include PROMOTE, PROMOTE_WITH_WARNINGS, REJECT, and
DEFER.

## ADR-0018: Establish the Canonical Skill Registry

Date: 2026-06-02
Status: Accepted

### Context

ai-driven-sdlc needs a single authoritative inventory of approved skills,
canonical skills, deprecated skills, archived skills, capability ownership,
repository locations, and Process Tree relationships. Directory presence alone
is not enough to prove a skill is canonical or discoverable.

### Decision

Create `docs/framework/SKILL_REGISTRY.md` and
`docs/framework/SKILL_REGISTRY_ENTRY_MODEL.md` as the registry architecture and
entry contract. The registry indexes skills; it does not store them.

### Consequences

Canonical skills must appear in the registry. Deprecated skills must remain
traceable. Archived skills must remain discoverable. Promotion and lifecycle
transitions must update registry-visible state.

## ADR-0019: Establish the Skill Diff Model

Date: 2026-06-02
Status: Accepted

### Context

ai-driven-sdlc needs a governed way to compare skills before promotion,
replacement, versioning, duplicate detection, compatibility review, and Process
Tree update. Without a diff model, agents could treat equivalent, enhanced,
duplicate, replacement, or incompatible skills inconsistently.

### Decision

Create `docs/framework/SKILL_DIFF_MODEL.md` and
`docs/framework/SKILL_DIFF_REPORT_MODEL.md` as the comparison architecture and
report structure for skill diffs. Create `docs/framework/SKILL_VERSIONING.md`
to define version impact expectations derived from Skill Diff categories.

### Consequences

Skill comparison must classify diff category, similarity outcome, version
impact, promotion impact, and Process Tree impact before promotion when a
comparable skill exists. Diff analysis may compare metadata, contracts,
dependencies, placement, lifecycle, and version, but must not rewrite,
normalize, optimize, or reinterpret source prompts.

## ADR-0020: Establish the Repository Mapping Engine

Date: 2026-06-02
Status: Accepted

### Context

ai-driven-sdlc needs deterministic repository placement recommendations for
proposed skills, workflows, Process Trees, schemas, adapters, installation
assets, and governance assets. Without a mapping engine, agents could create
arbitrary paths, infer placement silently, collide with approved assets, or
separate repository placement from Process Tree impact.

### Decision

Create `docs/framework/REPOSITORY_MAPPING_ENGINE.md` and
`docs/framework/REPOSITORY_PLACEMENT_MODEL.md` as the repository placement
architecture and canonical placement report structure.

### Consequences

Repository mapping is a governed recommendation layer. Placement must be
traceable, deterministic, collision-aware, and aligned with Process Trees.
Mapping may recommend repository locations, but it must not create arbitrary
paths, silently infer placement, overwrite approved assets, or bypass proposal
and promotion governance.

## ADR-0021: Establish the Similarity Analysis Engine

Date: 2026-06-02
Status: Accepted

### Context

ai-driven-sdlc needs a governed way to determine whether an incoming proposal is
new, equivalent, an enhancement, a variant, a replacement, a duplicate, or
incompatible before promotion is considered. Without similarity analysis, agents
could promote duplicates, miss replacements, overlook capability overlap, or
modify approved assets without sufficient comparison evidence.

### Decision

Create `docs/framework/SIMILARITY_ANALYSIS_ENGINE.md` and
`docs/framework/SIMILARITY_REPORT_MODEL.md` as the comparison architecture and
canonical report model for similarity analysis.

### Consequences

Similarity analysis is mandatory before promotion. Duplicate detection is
mandatory. Similarity reports must identify compared assets, evaluate comparison
dimensions, classify a similarity outcome, assess risk, and provide a
recommendation. Similarity analysis may compare metadata, contracts,
dependencies, repository placement, lifecycle state, artifacts, and Process Tree
relationships, but must not rewrite, normalize, optimize, reinterpret prompts,
or modify approved assets.

## ADR-0022: Establish the Canonical Skill Package Contract

Date: 2026-06-02
Status: Accepted

### Context

ai-driven-sdlc needs a single authoritative package structure for canonical
skills. Without a package contract, canonical skills could be admitted with
inconsistent metadata, missing source prompts, unclear output expectations,
weak Process Tree relationships, incomplete repository mapping, or insufficient
validation evidence.

### Decision

Create `docs/framework/SKILL_PACKAGE_CONTRACT.md` and
`docs/framework/SKILL_PACKAGE_VALIDATION_MODEL.md` as the canonical package
contract and validation model for admitted skills. Create
`templates/skill-package/README.md` as a future template descriptor without
instantiating actual skill templates.

### Consequences

Every canonical skill must conform to the Skill Package Contract. Canonical
registration and promotion require package contract compliance. Source prompts
remain immutable and must be preserved under `source/`. Package structure is
mandatory, but schemas, skill implementations, and executable templates remain
out of scope until separately governed.

## ADR-0023: Establish the Skill Creation Command

Date: 2026-06-02
Status: Accepted

### Context

ai-driven-sdlc needs its first operational command so users can submit prompts
and protocols to the Skill Evolution System. The command must provide a clear
entry point for proposal generation while protecting approved skills, approved
workflows, canonical Process Trees, and source prompt fidelity.

### Decision

Create `docs/commands/compile-next-protocol-into-skill.md` as the user-facing
command specification and `docs/framework/SKILL_CREATION_COMMAND.md` as the
authoritative framework model for the command.

### Consequences

`Compile the next protocol into an ai-driven-sdlc skill.` is the official entry
point into Skill Intake Mode. The command generates proposal packages,
validation evidence, and promotion recommendations only. It must preserve
submitted prompts verbatim and must not create canonical skills, promote skills,
modify approved skills, modify approved workflows, or modify canonical Process
Trees.

## ADR-0024: Establish the Command Index

Date: 2026-06-02
Status: Accepted

### Context

ai-driven-sdlc now has official user-facing command specifications, starting
with the Skill Creation Command. Users and future agents need a lightweight
index for command discovery, but installed `.ai-sdlc/` command manifests are not
yet governed.

### Decision

Create `docs/commands/README.md` as the documentation index for official
commands.

### Consequences

Official commands are discoverable from a single documentation index. The index
does not define installation behavior, command automation, machine-readable
trigger metadata, or an installed `.ai-sdlc/` manifest. Those remain out of
scope until installation layout and manifest governance are defined.

## ADR-0025: Establish /skill-create

Date: 2026-06-02
Status: Accepted

### Context

ai-driven-sdlc needs an explicit slash command for skill intake so users and
agents can activate proposal generation deterministically. Natural-language
trigger detection can be ambiguous, especially when submitted prompts contain
phrases that resemble commands.

### Decision

Create `docs/commands/skill-create.md` and
`docs/guides/SKILL_CREATE_COMMAND.md` for `/skill-create`. The first non-empty
line must be exactly `/skill-create`; natural-language trigger detection is
forbidden.

### Consequences

`/skill-create` is the official slash command for skill intake. It generates
skill proposals only, preserves submitted prompts verbatim, and must never
create canonical skills, promote skills, modify approved skills, modify
approved workflows, modify canonical Process Trees, bypass validation, or bypass
governance.

## ADR-0026: Establish Beginner Onboarding and Safe First Installer

Date: 2026-07-03
Status: Accepted

### Context

ai-driven-sdlc had substantial framework architecture but lacked a clear
non-expert onboarding path. The README was too focused on internals, and
`install.sh` was still a placeholder, preventing users from installing a local
`.ai-sdlc/` operating layer and trying the framework safely.

### Decision

Rewrite `README.md` around user onboarding, create
`docs/guides/GETTING_STARTED.md`, and implement a conservative first installer
in `install.sh`.

The installer supports:

- `./install.sh [--dry-run] /path/to/target-repository`
- creation of `.ai-sdlc/`
- backup of any existing `.ai-sdlc/`
- copying framework assets, commands, guides, Process Trees, skills, workflows,
  schemas, templates, and proposal templates
- writing an install manifest

### Consequences

The project is now locally installable as a documentation and operating-layer
package. The installer does not modify application code, install a daemon, run
AI commands automatically, implement schema validation, or provide production
upgrade behavior. Manifest-aware uninstall is addressed later in ADR-0027.
Machine-readable command manifests remain future work.

## ADR-0027: Establish Safe Manifest-Aware Uninstall

Date: 2026-07-03
Status: Accepted

### Context

The first installer can create `.ai-sdlc/`, but the uninstaller was still a
placeholder. Users need a safe way to remove the framework layer without risking
application code or user-modified files.

### Decision

Implement `uninstall.sh` as a conservative manifest-aware uninstaller.

The uninstaller supports:

- `./uninstall.sh [--dry-run] /path/to/target-repository`
- clean exit when `.ai-sdlc/` is absent
- refusal when `.ai-sdlc/manifest.txt` is missing
- moving `.ai-sdlc/` to `.ai-sdlc.removed-<timestamp>/`
- no changes outside `.ai-sdlc/`

### Consequences

Uninstall behavior is reversible and avoids destructive deletion. The first
version removes the installed framework layer by moving the whole directory
instead of deleting individual files. Future schema-backed manifests may allow
more granular uninstall behavior.

## ADR-0028: Add Remote Bootstrap Installer Entry Point

Date: 2026-07-03
Status: Accepted

### Context

The README exposed a one-line command that cloned ai-driven-sdlc into a
temporary directory and ran `install.sh`, but the command was too mechanical for
non-expert users. The project needs a readable one-line install path while
keeping the local installer as the authoritative implementation.

### Decision

Add `bootstrap.sh` as a thin remote entry point for installation.

The bootstrap script:

- is invoked by the README through `curl -fsSL .../bootstrap.sh | sh -s -- ...`
- clones ai-driven-sdlc into a temporary directory
- delegates all installation behavior to `install.sh`
- passes installer arguments through unchanged, including `--dry-run`
- cleans up the temporary clone after installation
- records the repository URL and ref in the install manifest through
  `AI_SDLC_INSTALL_SOURCE`

### Consequences

The public installation instruction is now easier to read and copy. Core install
behavior remains centralized in `install.sh`. The bootstrap URL only becomes
usable after `bootstrap.sh` is published on the target branch.

## ADR-0029: Default Install and Uninstall Target to Current Directory

Date: 2026-07-03
Status: Accepted

### Context

The install instructions still required users to pass `/path/to/your-project`.
That does not match the normal mental model for command-line installers: users
expect to `cd` into the project and run the command there.

### Decision

Default install and uninstall target paths to the current directory.

This applies to:

- `bootstrap.sh`
- `install.sh`
- `uninstall.sh`
- README install and uninstall examples
- getting started guide install and uninstall examples

Explicit target paths remain supported for users who want to install into a
different repository.

### Consequences

The public one-line install command is shorter and easier to understand.
Install and uninstall behavior remains safe because scripts still write only to
or move only the target repository's `.ai-sdlc/` directory.

## ADR-0030: Install the Uninstaller Inside the Operating Layer

Date: 2026-07-03
Status: Accepted

### Context

The README now supports a remote one-line install command. Users who install
that way do not have `./uninstall.sh` in their project root, so uninstall
instructions must point to an installed command that actually exists in the
target repository.

### Decision

Copy `uninstall.sh` into the installed `.ai-sdlc/` operating layer as
`.ai-sdlc/uninstall.sh`.

Document uninstall usage as:

```sh
.ai-sdlc/uninstall.sh
```

### Consequences

Every installed repository gets a local uninstall entry point. The uninstaller
still defaults to the current directory, requires `.ai-sdlc/manifest.txt`, and
moves `.ai-sdlc/` to a timestamped backup instead of deleting it.
