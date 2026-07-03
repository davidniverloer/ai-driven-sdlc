# Repository Mapping Engine

## Purpose

The Repository Mapping Engine defines how proposed framework assets are mapped
to repository locations before promotion or canonical admission.

It exists because ai-driven-sdlc contains multiple governed asset families:
skills, workflows, Processes, schemas, adapters, installation assets, and
governance assets. Placement decisions must be deterministic, traceable, and
reviewable so agents do not create arbitrary paths, infer locations silently, or
modify approved assets without governance.

The engine solves:

- capability-to-path mapping
- repository placement recommendation
- path validation
- collision prevention
- Process placement consistency
- proposal traceability
- promotion readiness evidence

The Repository Mapping Engine is not an implementation algorithm. It defines the
rules and evidence required for placement recommendations.

## Mapping Responsibilities

### Capability Mapping

Determine the best-fit capability family for the proposed asset and identify
secondary capability relationships when relevant.

### Repository Placement

Recommend the repository path where the asset should live if approved. Placement
recommendations must be based on existing repository structure and documented
capability ownership.

### Path Validation

Check whether the proposed path exists, must be created by an approved proposal,
or conflicts with an existing asset.

### Collision Prevention

Identify path conflicts, naming conflicts, ownership conflicts, and capability
conflicts before promotion or canonical writes occur.

### Traceability

Record the classification, rationale, affected assets, Process
relationship, collision analysis, and recommendation in a placement report.

## Asset Categories

### Skills

Repository ownership: `skills/` for canonical skills and `proposals/skills/`
for proposed skills.

Skills are grouped by capability, not SDLC phase. A proposed skill must identify
its capability folder before promotion.

### Workflows

Repository ownership: `workflows/` for canonical workflows and
`proposals/workflows/` for proposed workflows.

Workflows orchestrate skills into execution sequences and should not duplicate
skill definitions.

### Processes

Repository ownership: `processes/` for canonical or governed Processes
and `proposals/processes/` for proposed process changes.

Processes define execution paths, branches, artifact flow, and approval
gates.

### Schemas

Repository ownership: `schemas/` for canonical schemas and `proposals/schemas/`
for proposed schemas.

Schemas define future machine-readable contracts and must not be introduced as
implicit behavior before schema governance is ready.

### Adapters

Repository ownership: future adapter locations under approved repository
structure and `proposals/adapters/` for proposed adapters.

Adapters are optional integration assets. They must not redefine core framework
semantics or introduce vendor lock-in to canonical skill and workflow models.

### Installation Assets

Repository ownership: root installation scripts such as `install.sh` and
`uninstall.sh`, future installer assets under approved installer locations, and
`proposals/installers/` for proposed installer changes.

Installation assets must be safe for new and existing repositories.

### Governance Assets

Repository ownership: `AGENTS.md`, `docs/execution/`, `docs/framework/`, and
`docs/commands/`.

Governance assets define operating rules, architectural models, validation
expectations, and command history. They should be updated when placement
decisions introduce material architectural rules.

## Capability Mapping Rules

Canonical skill capability path expectations:

| Capability | Expected Repository Path |
| --- | --- |
| strategy | `skills/strategy/` |
| ontology | `skills/ontology/` |
| requirements | `skills/requirements/` |
| ux | `skills/ux/` |
| architecture | `skills/architecture/` |
| execution | `skills/execution/` |
| devex | `skills/devex/` |
| governance | `skills/governance/` |
| bootstrapping | `skills/bootstrapping/` |
| framework | `docs/framework/` for framework models; future executable framework skills require an approved repository placement before a new folder is created |

Capability mapping must document:

- primary capability
- secondary capabilities when relevant
- confidence level or ambiguity
- rationale
- expected path
- Process relationship

Ambiguous capability mapping must be recorded as ambiguity. Agents must not
resolve ambiguity by silently choosing a convenient path.

## Repository Placement Outcomes

### New Asset

Meaning: the proposed asset does not collide with an existing canonical asset
and has a valid proposed location.

Expected behavior: continue proposal review and require approval before creating
canonical repository content.

### Existing Asset

Meaning: the proposed asset maps to an existing asset path or registry entry.

Expected behavior: compare against the existing asset, determine whether the
proposal is documentation, metadata, enhancement, replacement, or duplicate, and
avoid creating a new canonical asset by default.

### Enhancement Candidate

Meaning: the proposed asset appears to extend an existing asset without
requiring a new canonical location.

Expected behavior: require Skill Diff analysis, compatibility review, version
impact review, and promotion review before changing the existing asset.

### Duplicate Candidate

Meaning: the proposed asset appears to duplicate an existing asset or intended
repository role.

Expected behavior: block canonical placement as a separate asset unless
governance approves merge, replacement, or variant treatment.

### Replacement Candidate

Meaning: the proposed asset appears intended to supersede an existing asset.

Expected behavior: require replacement review, Skill Diff analysis, migration
guidance, deprecation planning, registry update planning, and Process
impact review.

## Collision Detection

Repository mapping must check:

- path conflicts: proposed path already exists or would overwrite an approved
  asset
- naming conflicts: proposed name conflicts with an existing asset, registry
  entry, proposal, or command history
- ownership conflicts: proposed asset belongs to a different asset family or
  governance owner
- capability conflicts: proposed capability does not match the target folder or
  creates ambiguous capability ownership

Collision findings must be recorded in the placement report. A collision must
not be resolved by overwriting approved assets.

## Placement Rationale

Every placement recommendation must explain:

- capability
- path
- Process relationship
- affected assets

Rationale should also identify whether the path exists, whether the path is
proposed, whether approval is required to create it, and whether any known
assets are affected.

## Repository Placement Report

The canonical report filename is:

```text
repository-placement.md
```

Required sections:

- asset classification
- capability
- proposed path
- rationale
- collisions
- recommendation

The canonical report structure is defined in
`docs/framework/REPOSITORY_PLACEMENT_MODEL.md`.

## Governance Rules

- placement must be traceable
- placement must be deterministic
- placement must not overwrite approved assets
- placement must align with Processes
- placement must identify collisions before promotion
- placement must be recorded before canonical asset creation

Repository mapping may recommend placement. It may not perform the write,
promote the asset, modify approved assets, or bypass protected operation
governance.

## Process Relationship

Repository placement and Process placement must agree.

Repository placement defines where an asset lives. Process placement
defines how the asset participates in execution.

Placement analysis must identify:

- related Process nodes
- related Process branches
- related execution paths
- consumed artifact relationships
- produced artifact relationships
- approval gate relationships
- terminal or out-of-process classification when no Process placement exists

A proposed repository location is not sufficient for promotion unless the
Process relationship is also valid or explicitly terminal.
