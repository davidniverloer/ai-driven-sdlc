# Process Tree Integration Rules

## Purpose

Skill proposals must be mapped to Process Trees because repository placement
alone does not explain how a skill participates in ai-driven-sdlc execution.

A proposed skill must have a relationship to execution order, artifact flow,
approval gates, canonical Process Trees, and experimental Process Trees. Without
Process Tree integration, the framework cannot determine when the skill runs,
what it consumes, what it produces, or whether it affects downstream handoffs.

Process Tree Integration Rules ensure every proposed skill can be evaluated
against the execution model before review, promotion, or canonicalization.

## Integration Questions

Every skill proposal must answer:

- Does this create a new Process Tree node?
- Does this extend an existing node?
- Does this replace an existing node?
- Does this introduce a new branch?
- Does this introduce a new artifact?
- Does this change execution order?
- Does this affect approval gates?
- Does this apply to canonical trees, experimental trees, or both?

Unanswered questions must be treated as unresolved proposal risk.

## Node Placement Rules

A proposed skill should be placed in a Process Tree using one of these placement
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

Use when the proposed skill belongs in an experimental Process Tree before it is
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
`process-tree-impact.md` report.

Artifact names should match existing Process Tree terminology when possible. New
artifact names must explain why existing artifacts are insufficient.

## Canonical vs Experimental Tree Rules

Canonical trees require stricter approval because they define recommended or
approved framework execution paths.

Experimental trees may accept proposals more easily when the change is clearly
marked experimental and does not modify canonical execution.

Canonical trees must not be modified directly without explicit approval.

Skill proposals that affect canonical trees must include:

- affected canonical tree
- affected node or proposed new node
- artifact impact
- approval gate impact
- execution order impact
- compatibility impact
- approval requirement

Skill proposals that affect only experimental trees must still preserve artifact
flow and prompt fidelity, but may carry unresolved questions as experimental
risks.

## Process Tree Impact Report

Every skill proposal must include `process-tree-impact.md`.

The report must include:

- affected tree
- affected node
- proposed placement
- artifact impact
- approval gate impact
- execution order impact
- recommendation

Recommended structure:

```text
# Process Tree Impact Report

## Affected Tree

## Affected Node

## Proposed Placement

## Artifact Impact

## Approval Gate Impact

## Execution Order Impact

## Recommendation
```

If no Process Tree placement is required, the report must explicitly classify
the proposal as terminal or out-of-tree and explain why.

## Process Tree Update Requirements

`process-trees/default.md` or another `process-trees/*.md` file must be updated
when a proposal:

- creates a new Process Tree node
- extends an existing node
- replaces an existing node
- introduces a new branch
- introduces a new artifact
- changes execution order
- changes repository placement
- changes approval gates
- changes consumed or produced artifacts
- promotes an experimental placement into a canonical tree

`docs/framework/PROCESS_TREE.md` is a legacy compatibility pointer. It must not
be updated as the canonical tree.
