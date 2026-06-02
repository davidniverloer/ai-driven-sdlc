# Workflow Model

## What is a Workflow

A workflow is an orchestration of skills.

It defines how capabilities are sequenced to move software delivery work from
one state to another. Workflows may look phase-like, but they should not contain
the reusable capability logic that belongs in skills.

## Workflow Responsibilities

A workflow is responsible for:

- defining the objective of the sequence
- selecting the skills to invoke
- ordering skill execution
- defining decision points
- passing artifacts between skills
- defining expected outputs
- identifying validation checkpoints
- making handoffs inspectable and recoverable

## Workflow Lifecycle

**Proposal**

Identify the delivery problem, expected entry state, expected exit state, and
skills likely to be composed.

**Creation**

Define the workflow as a readable orchestration before automation is added. Use
existing skills where possible.

**Validation**

Validate that every referenced skill, schema, artifact, and dependency exists.
Confirm artifact outputs satisfy later inputs.

**Publication**

Publish when the workflow is coherent, documented, and validated against its
references.

**Deprecation**

Deprecate workflows before removing or replacing them. Document successor
workflows and migration guidance.

## Workflow Composition Rules

- Compose skills rather than duplicating skill content.
- Keep sequencing in workflows and capability behavior in skills.
- Make each step's input and output explicit.
- Define decision points and branch conditions in plain language.
- Keep workflow definitions agent-agnostic.

## Dependency Rules

Workflow dependencies must be explicit. A workflow should identify required
skills, schemas, source artifacts, prior decisions, and expected repository
state.

Dependencies should be stable enough that a future validation tool can confirm
their existence and compatibility.

## Artifact Passing Rules

Artifact passing describes how one step's output becomes another step's input.

A workflow should identify:

- artifact name
- producing step
- consuming step
- expected format
- validation expectations
- persistence location when applicable

Artifact passing must be inspectable. Hidden conversational context should not be
the only place a workflow state exists.
