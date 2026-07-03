# Skill Package Contract

## Purpose

A Skill Package is the canonical repository structure for an approved skill.
It contains the skill's metadata, human-readable contract, output expectations,
source prompts, examples, and governance relationships.

A canonical structure exists so every admitted skill can be discovered,
validated, versioned, promoted, mapped to Processes, registered, and evolved
without depending on a specific agent or vendor.

The contract solves:

- canonical package consistency
- source prompt preservation
- promotion evidence alignment
- versioning traceability
- Process integration
- repository mapping clarity
- registry compatibility
- validation readiness

This document defines the package contract only. It does not define schemas,
implement skills, or create executable templates.

## Canonical Skill Package Structure

Every canonical skill package must include:

```text
skill.yaml
README.md
output-contract.md
source/
examples/
```

Required package roles:

- `skill.yaml` records required metadata and governance relationships.
- `README.md` explains the skill contract for humans and agents.
- `output-contract.md` defines expected outputs, artifact expectations, and
  validation expectations.
- `source/` preserves immutable source prompts and protocols.
- `examples/` contains required example input and output artifacts or
  placeholders for reviewed examples.

Additional files may be proposed later, but the minimum structure is mandatory
for canonical skills.

## Protocol-Aware Packaging

### Single Prompt Skills

Single prompt skills must preserve the original prompt under `source/` as an
immutable source artifact. The package must distinguish the original source from
derived metadata, README content, examples, and output contracts.

### A/B Protocol Skills

A/B protocol skills must preserve each original prompt separately and retain
the relationship between the two prompts. The A/B structure must not be merged,
rewritten, or normalized.

### Multi-Step Skills

Multi-step skills must preserve the original ordered source material. Package
metadata may describe steps, but it must not replace the source sequence.

### Workflow Component Skills

Workflow component skills must declare their intended workflow or Process
relationship without duplicating workflow orchestration. The package must make
the skill's own inputs, outputs, and artifact handoffs clear.

## A/B Skill Structure

A/B skill packages must include:

```text
source/discovery.original.md
source/synthesis.original.md
```

Original prompts remain immutable. Original prompts remain authoritative.
Generated metadata, classification, summaries, examples, and README content
never replace source prompts.

If an A/B protocol uses different labels than discovery and synthesis, the
package may add explanatory metadata, but it must preserve the original prompt
files and relationship without rewriting them.

## skill.yaml Contract

Every `skill.yaml` must include:

- `skill_id`
- `name`
- `capability`
- `protocol_type`
- `lifecycle_state`
- `version`
- `repository_location`
- `process_nodes`
- `dependencies`
- `source_proposal`

This is a metadata contract, not a schema definition.

Expected metadata intent:

- `skill_id`: stable canonical identifier.
- `name`: human-readable skill name.
- `capability`: primary capability family.
- `protocol_type`: source protocol type, such as single prompt, A/B protocol,
  multi-step, or workflow component.
- `lifecycle_state`: current lifecycle state.
- `version`: current skill version.
- `repository_location`: canonical repository path.
- `process_nodes`: related Process nodes or terminal classification.
- `dependencies`: required skills, workflows, schemas, documents, or tools.
- `source_proposal`: proposal that introduced or last materially changed the
  canonical package.

## README.md Contract

Every package `README.md` must include:

- purpose
- capability
- inputs
- outputs
- dependencies
- Process relationship

The README must describe the skill as an agent-agnostic capability. It must not
assume Codex, Claude, Cursor, or another vendor-specific implementation.

## output-contract.md

Every `output-contract.md` must define:

- expected outputs
- artifact expectations
- validation expectations

Expected outputs describe what the skill should produce. Artifact expectations
describe the files, reports, decisions, or handoff material the skill is
expected to generate. Validation expectations describe how a reviewer or future
validator can determine whether the output satisfies the skill contract.

## examples/

The `examples/` directory must define requirements for:

- example input
- example output

Examples are documentation artifacts only unless future governance defines
otherwise. They must not implement the skill, modify source prompts, or replace
validation evidence.

## Source Prompt Preservation

The `source/` directory must contain immutable source prompts and protocols.

The package may never:

- rewrite prompts
- optimize prompts
- improve prompts
- reinterpret prompts

Source prompts remain authoritative. Derived metadata, classification,
repository placement reports, similarity reports, Skill Diff reports, and
examples must remain separate from immutable source prompts.

## Repository Placement Requirements

Canonical skill packages must live under the capability folder approved by the
Repository Mapping Engine.

Packages must relate to:

- capability folders
- Process nodes
- canonical registry

The package `repository_location` must match its repository path. Its
`capability` must align with the owning capability folder or include an approved
exception. Its `process_nodes` must identify related Process nodes or
explicitly state terminal or out-of-process classification. Canonical registration
requires package contract compliance.

## Lifecycle Requirements

Lifecycle state affects package expectations:

- Proposed packages may be incomplete but must identify missing contract items.
- Validated packages must contain enough structure for promotion review.
- Promoted packages must be ready for canonical admission.
- Canonical packages must satisfy this contract.
- Deprecated packages must preserve source prompts, migration guidance, and
  replacement references when applicable.
- Archived packages must remain discoverable and preserve history.

Lifecycle state must be reflected in `skill.yaml`, the Skill Registry, and
promotion or lifecycle records.

## Validation Requirements

A valid canonical skill package must contain:

- required files
- required metadata
- immutable source prompts
- README contract sections
- output contract sections
- example input and output requirements
- repository placement alignment
- Process references or terminal classification
- lifecycle state
- source proposal reference
- dependency declarations
- registry compatibility

Validation expectations are defined in
`docs/framework/SKILL_PACKAGE_VALIDATION_MODEL.md`.
