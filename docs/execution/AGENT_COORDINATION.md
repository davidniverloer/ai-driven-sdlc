# Agent Coordination

Multiple agents may evolve framework assets simultaneously only when ownership,
dependencies, and compatibility impact are explicit.

## Coordination Rules

- Declare ownership before modifying an asset family.
- Disclose dependencies on other active work.
- Avoid overlapping writes to the same governed asset without coordination.
- Review compatibility impact across skills, workflows, schemas, adapters, and
  installers before publication.
- Leave handoff records when work affects downstream agents.

## Simultaneous Evolution

**Skills**

Agents may work on different capability groups in parallel. Shared schemas,
workflow references, or governance rules must be disclosed.

**Workflows**

Agents may work on different workflows in parallel only when referenced skills
and artifact contracts are stable or explicitly coordinated.

**Schemas**

Schema work is high-impact. Agents must disclose all known downstream consumers
and avoid incompatible changes without approval.

**Installers**

Installer work must disclose file ownership, manifest expectations, backup
behavior, and removal behavior because it can affect user repositories.

## Compatibility Review

Before handoff or publication, agents must state whether the work is compatible,
risky, or breaking. Risky and breaking work requires decision records and
explicit review.

## Agent Handoff Template

```text
Agent Handoff

Owner:
Worktree:
Asset Family:
Files Modified:
Objective:
Current State:
Dependencies:
Compatibility Impact:
Validation Performed:
Known Risks:
Open Questions:
Recommended Next Action:
```
