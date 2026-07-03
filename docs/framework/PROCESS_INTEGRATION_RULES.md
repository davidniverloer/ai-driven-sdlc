# Process Integration Rules

## Purpose

Skill proposals must be mapped to Processes because repository placement
alone does not explain how a skill participates in ai-driven-sdlc execution.

A proposed skill must have a relationship to execution order, artifact flow,
approval gates, canonical Processes, and experimental Processes. Without
Process integration, the framework cannot determine when the skill runs,
what it consumes, what it produces, or whether it affects downstream handoffs.

Process Integration Rules ensure every proposed skill can be evaluated
against the execution model before review, promotion, or canonicalization.

## Integration Questions

Every skill proposal must answer:

- Does this create a new Process node?
- Does this extend an existing node?
- Does this replace an existing node?
- Does this introduce a new branch?
- Does this introduce a new artifact?
- Does this change execution order?
- Does this affect approval gates?
- Does this apply to canonical processes, experimental processes, or both?

Unanswered questions must be treated as unresolved proposal risk.

## Node Placement Rules

A proposed skill should be placed in a Process using one of these placement
relationships:

**Before an Existing Node**

Use when the proposed skill must produce context or artifacts required by an
existing node.

**After an Existing Node**

Use when the proposed skill consumes artifacts from an existing node and extends
the downstream execution path.

**Parallel to an Existing Node**

Use when the proposed skill can run alongside another node and later converge
through shared artifacts or validation.

**As a Branch**

Use when the proposed skill creates a conditional or alternate execution path.
Branches must define entry criteria and convergence or terminal behavior.

**As a Replacement Candidate**

Use when the proposed skill may replace an existing node. Replacement candidates
must identify compatibility impact, migration needs, and approval requirements.

**As an Experimental Extension**

Use when the proposed skill belongs in an experimental Process before it is
eligible for canonical placement.

## Artifact Flow Rules

Proposed skills must declare:

- consumed artifacts
- produced artifacts
- external inputs
- terminal outputs

Consumed artifacts must be produced by an earlier node or declared external.
Produced artifacts must have a downstream consumer or an explicit terminal
purpose.

No orphan artifacts are allowed unless explicitly justified in the
`process-impact.md` report.

Artifact names should match existing Process terminology when possible. New
artifact names must explain why existing artifacts are insufficient.

## Canonical vs Experimental Process Rules

Canonical processes require stricter approval because they define recommended or
approved framework execution paths.

Experimental processes may accept proposals more easily when the change is clearly
marked experimental and does not modify canonical execution.

Canonical processes must not be modified directly without explicit approval.

Skill proposals that affect canonical processes must include:

- affected canonical process
- affected node or proposed new node
- artifact impact
- approval gate impact
- execution order impact
- compatibility impact
- approval requirement

Skill proposals that affect only experimental processes must still preserve artifact
flow and prompt fidelity, but may carry unresolved questions as experimental
risks.

## Process Impact Report

Every skill proposal must include `process-impact.md`.

The report must include:

- affected process
- affected node
- proposed placement
- artifact impact
- approval gate impact
- execution order impact
- recommendation

Recommended structure:

```text
# Process Impact Report

## Affected Process

## Affected Node

## Proposed Placement

## Artifact Impact

## Approval Gate Impact

## Execution Order Impact

## Recommendation
```

If no Process placement is required, the report must explicitly classify
the proposal as terminal or out-of-process and explain why.

## Process Update Requirements

`processes/default.md` or another `processes/*.md` file must be updated
when a proposal:

- creates a new Process node
- extends an existing node
- replaces an existing node
- introduces a new branch
- introduces a new artifact
- changes execution order
- changes repository placement
- changes approval gates
- changes consumed or produced artifacts
- promotes an experimental placement into a canonical process

`docs/framework/PROCESS_MODEL.md` is a legacy compatibility pointer. It must not
be updated as the canonical process.
