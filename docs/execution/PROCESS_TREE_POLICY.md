# Process Tree Policy

The Process Tree policy defines when and how agents must update Process Trees
under `process-trees/`.

## When Process Tree Updates Are Required

A Process Tree update is required whenever an agent:

- creates a new skill
- creates a new workflow
- changes a skill input contract
- changes a skill output contract
- changes workflow execution order
- changes artifact dependencies
- adds a human approval gate
- removes a human approval gate
- adds a new capability category
- deprecates a skill or workflow
- introduces a new SDLC execution path

## When Process Tree Updates Are Not Required

A Process Tree update is not required for:

- typo fixes
- documentation wording improvements
- internal formatting changes
- examples that do not affect execution
- non-contractual README edits

## Process Tree Update Procedure

Future agents must:

1. Inspect `process-trees/default.md` and any relevant alternate Process Tree.
2. Determine whether their change affects execution order, artifacts,
   dependencies, or gates.
3. If yes, update the relevant Process Tree under `process-trees/`.
4. Record the reason for the update.
5. Update command history.
6. Include Process Tree impact in their final report.

## Review Expectations

Process Tree updates must be reviewed for:

- node contract completeness
- artifact flow consistency
- proposed versus canonical node status
- approval gate clarity
- downstream workflow and skill impact
- compatibility with `docs/execution/VALIDATION_PROTOCOL.md`

## Proposal Impact

If a proposal changes execution order, repository placement, artifacts, or
approval gates, a Process Tree impact analysis must be generated.

Repository placement is part of Process Tree impact analysis. A proposed
repository location must be checked against related Process Tree nodes,
branches, execution paths, artifact flow, and approval gates.

The impact analysis must identify:

- affected Process Tree files
- affected nodes
- affected repository placement
- consumed artifact changes
- produced artifact changes
- approval gate changes
- downstream handoff changes
- whether the change is safe, risky, or breaking

## Skill Proposal Integration

Every skill proposal must include Process Tree impact analysis.

No skill may be promoted without a valid Process Tree placement or explicit
terminal classification.

Skill proposal Process Tree impact analysis must identify affected trees,
affected nodes or proposed new nodes, artifact flow, approval gate impact,
execution order impact, and whether canonical tree approval is required.

## Skill Intake Integration

Every accepted intake must produce Process Tree impact analysis.

If intake cannot determine Process Tree impact, proposal generation must fail or
record the intake as blocked until the mapping can be clarified. Accepted intake
must not bypass Process Tree mapping.
