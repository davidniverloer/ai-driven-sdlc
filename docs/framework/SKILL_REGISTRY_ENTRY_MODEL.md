# Skill Registry Entry Model

This document defines the standard structure of a Skill Registry entry.

It is a contract, not an implementation schema.

## Entry Structure

Every entry must include:

```text
Skill ID:
Name:
Capability:
Lifecycle State:
Repository Location:
Process Tree Nodes:
Current Version:
Status:
Source Proposal:
Dependencies:
```

## Field Definitions

**Skill ID**

Stable identifier for the skill.

**Name**

Human-readable skill name.

**Capability**

Capability family such as `strategy`, `requirements`, `ux`, `architecture`, or
`framework`.

**Lifecycle State**

Current state from `docs/framework/SKILL_LIFECYCLE.md`.

**Repository Location**

Path to the canonical skill under `skills/` or proposed skill under
`proposals/skills/`.

**Process Tree Nodes**

Process Tree file and node references related to the skill.

**Current Version**

Current skill version. Versioning rules are defined separately.

**Status**

Short operational status such as active, deprecated, archived, proposed, or
blocked.

**Source Proposal**

Proposal ID or path that introduced or last materially changed the skill.

**Dependencies**

Related skills, workflows, schemas, Process Tree nodes, or external dependencies
that affect use or validation.

## Recommended Markdown Entry Shape

```text
## <Skill ID> — <Name>

**Capability:** <capability>
**Lifecycle State:** <state>
**Repository Location:** <path>
**Process Tree Nodes:** <tree/node refs>
**Current Version:** <version>
**Status:** <status>
**Source Proposal:** <proposal-id or path>
**Dependencies:** <dependencies or none>
```

## Traceability Requirements

Entries must preserve references to:

- source proposal
- validation evidence
- promotion decision
- lifecycle transition
- Process Tree impact
- replacement skill when deprecated
- archive reference when archived
