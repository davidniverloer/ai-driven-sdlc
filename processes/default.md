# Default ai-driven-sdlc Process

**Process ID:** default
**Version:** 0.1.0
**Status:** Canonical
**Intended Use:** Default full ai-driven-sdlc lifecycle from raw concept to governed implementation.
**Source Basis:** Migrated from docs/framework/PROCESS_TREE.md.

## Purpose

The Process is the authoritative execution map of ai-driven-sdlc.

It defines execution order, artifact flow, future repository placement, and
governance boundaries. It is the single source of truth that allows future
agents to determine where a skill belongs, where a workflow belongs, what
artifacts a node consumes, what artifacts a node produces, and what node
executes next.

The Process is simple Markdown. Repository placement must never be inferred
from convention alone.

## Process Node Contract

Every node must use the following structure:

```text
## Node <number> — <name>

**Node ID:** <id>

**Type:** Skill | Workflow | Gate | Artifact

**Capability:** <capability>

**Repository Location:** <future repository path>

**Purpose:** <purpose>

**Consumes:** <artifacts>

**Produces:** <artifacts>

**Required Inputs:** <inputs>

**Completion Criteria:** <criteria>

**Human Approval Gate:** Yes | No

**Next Node(s):** <node ids>
```

## Canonical Execution Process

## Node 1 — Raw Concept Intake

**Node ID:** PT-001

**Type:** Workflow

**Capability:** intake

**Repository Location:** workflows/intake/raw-concept/

**Purpose:** Capture the raw user concept, initial intent, known constraints, and
available context.

**Consumes:** External raw concept.

**Produces:** A-001 Raw Concept Intake Brief.

**Required Inputs:** User concept, problem statement, opportunity statement, or
change intent.

**Completion Criteria:** Raw intent, context, constraints, assumptions, and open
questions are recorded.

**Human Approval Gate:** No

**Next Node(s):** PT-002

## Node 2 — Concept Interrogation & Stress Testing

**Node ID:** PT-002

**Type:** Skill

**Capability:** strategy

**Repository Location:** skills/strategy/concept-interrogation/

**Purpose:** Challenge the concept for ambiguity, hidden assumptions, weak logic,
risks, and unresolved strategic questions.

**Consumes:** A-001 Raw Concept Intake Brief.

**Produces:** A-002 Interrogated Concept Brief.

**Required Inputs:** Raw concept intake brief.

**Completion Criteria:** Concept assumptions, contradictions, risk areas,
clarifying questions, and refined problem boundaries are explicit.

**Human Approval Gate:** No

**Next Node(s):** PT-003

## Node 3 — Wedge Definition

**Node ID:** PT-003

**Type:** Skill

**Capability:** strategy

**Repository Location:** skills/strategy/wedge-definition/

**Purpose:** Define the smallest meaningful product or system wedge that can
prove the concept.

**Consumes:** A-002 Interrogated Concept Brief.

**Produces:** A-003 Wedge Definition.

**Required Inputs:** Interrogated concept brief and unresolved strategic
questions.

**Completion Criteria:** Initial wedge, excluded scope, success signal, and
adoption rationale are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-004

## Node 4 — Canonical Domain Ontology

**Node ID:** PT-004

**Type:** Skill

**Capability:** ontology

**Repository Location:** skills/ontology/domain-ontology/

**Purpose:** Establish canonical domain language, entities, relationships, and
semantic boundaries.

**Consumes:** A-003 Wedge Definition.

**Produces:** A-004 Canonical Domain Ontology.

**Required Inputs:** Wedge definition and strategic context.

**Completion Criteria:** Core entities, relationships, terms, synonyms,
ambiguities, and excluded concepts are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-005

## Node 5 — Strategic Charter

**Node ID:** PT-005

**Type:** Skill

**Capability:** strategy

**Repository Location:** skills/strategy/strategic-charter/

**Purpose:** Convert the interrogated concept, wedge, and ontology into a
strategic execution charter.

**Consumes:** A-002 Interrogated Concept Brief; A-003 Wedge Definition; A-004
Canonical Domain Ontology.

**Produces:** A-005 Strategic Charter.

**Required Inputs:** Interrogated concept, wedge definition, and domain ontology.

**Completion Criteria:** Goals, non-goals, success criteria, constraints,
stakeholders, and decision posture are explicit.

**Human Approval Gate:** Yes

**Next Node(s):** PT-006

## Node 6 — Business Requirements Document

**Node ID:** PT-006

**Type:** Skill

**Capability:** requirements

**Repository Location:** skills/requirements/brd-generation/

**Purpose:** Translate strategy into business needs, outcomes, rules,
stakeholders, and operating constraints.

**Consumes:** A-005 Strategic Charter; A-004 Canonical Domain Ontology.

**Produces:** A-006 Business Requirements Document.

**Required Inputs:** Approved strategic charter and domain ontology.

**Completion Criteria:** Business objectives, stakeholder needs, business rules,
constraints, risks, and measurable outcomes are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-007

## Node 7 — Product Requirements Document

**Node ID:** PT-007

**Type:** Skill

**Capability:** requirements

**Repository Location:** skills/requirements/prd-generation/

**Purpose:** Translate business requirements into product capabilities, user
outcomes, and product behavior boundaries.

**Consumes:** A-006 Business Requirements Document; A-004 Canonical Domain
Ontology.

**Produces:** A-007 Product Requirements Document.

**Required Inputs:** Business requirements and domain ontology.

**Completion Criteria:** Product goals, user scenarios, capabilities, non-goals,
acceptance boundaries, and product constraints are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-008

## Node 8 — Software Requirements Specification

**Node ID:** PT-008

**Type:** Skill

**Capability:** requirements

**Repository Location:** skills/requirements/srs-generation/

**Purpose:** Convert product requirements into software-facing functional,
non-functional, quality, and acceptance requirements.

**Consumes:** A-007 Product Requirements Document; A-004 Canonical Domain
Ontology.

**Produces:** A-008 Software Requirements Specification.

**Required Inputs:** Product requirements and domain ontology.

**Completion Criteria:** Functional requirements, non-functional requirements,
constraints, acceptance criteria, and traceability to product requirements are
documented.

**Human Approval Gate:** Yes

**Next Node(s):** PT-009

## Node 9 — UX Cognitive Environment

**Node ID:** PT-009

**Type:** Skill

**Capability:** ux

**Repository Location:** skills/ux/cognitive-environment/

**Purpose:** Define the cognitive context in which users encounter and reason
about the product.

**Consumes:** A-007 Product Requirements Document; A-008 Software Requirements
Specification.

**Produces:** A-009 UX Cognitive Environment.

**Required Inputs:** Product and software requirements.

**Completion Criteria:** User context, attention constraints, domain familiarity,
environmental constraints, and cognitive load factors are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-010

## Node 10 — User Mental Models

**Node ID:** PT-010

**Type:** Skill

**Capability:** ux

**Repository Location:** skills/ux/user-mental-models/

**Purpose:** Identify how target users understand the domain, tasks, objects,
and expected system behavior.

**Consumes:** A-009 UX Cognitive Environment; A-004 Canonical Domain Ontology.

**Produces:** A-010 User Mental Models.

**Required Inputs:** UX cognitive environment and domain ontology.

**Completion Criteria:** User concepts, expectations, misconceptions, expertise
levels, and mental model gaps are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-011

## Node 11 — Experience Strategy

**Node ID:** PT-011

**Type:** Skill

**Capability:** ux

**Repository Location:** skills/ux/experience-strategy/

**Purpose:** Define the intended experience posture and product interaction
principles.

**Consumes:** A-010 User Mental Models; A-007 Product Requirements Document.

**Produces:** A-011 Experience Strategy.

**Required Inputs:** User mental models and product requirements.

**Completion Criteria:** Experience goals, interaction principles, trust posture,
guidance posture, and experience tradeoffs are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-012

## Node 12 — Product Behavior Model

**Node ID:** PT-012

**Type:** Skill

**Capability:** ux

**Repository Location:** skills/ux/product-behavior-model/

**Purpose:** Model observable product behavior from a user and system
perspective.

**Consumes:** A-011 Experience Strategy; A-008 Software Requirements
Specification.

**Produces:** A-012 Product Behavior Model.

**Required Inputs:** Experience strategy and software requirements.

**Completion Criteria:** Core behaviors, user-triggered actions, system
responses, states, and behavior constraints are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-013

## Node 13 — Task Architecture

**Node ID:** PT-013

**Type:** Skill

**Capability:** ux

**Repository Location:** skills/ux/task-architecture/

**Purpose:** Structure user tasks, subtasks, decision points, and workflow
dependencies.

**Consumes:** A-012 Product Behavior Model; A-010 User Mental Models.

**Produces:** A-013 Task Architecture.

**Required Inputs:** Product behavior model and user mental models.

**Completion Criteria:** Task flows, task hierarchy, dependencies, entry points,
and completion states are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-014

## Node 14 — Cognitive Friction

**Node ID:** PT-014

**Type:** Skill

**Capability:** ux

**Repository Location:** skills/ux/cognitive-friction/

**Purpose:** Identify areas where users may experience confusion, hesitation,
excess effort, or decision overload.

**Consumes:** A-013 Task Architecture; A-009 UX Cognitive Environment.

**Produces:** A-014 Cognitive Friction Analysis.

**Required Inputs:** Task architecture and UX cognitive environment.

**Completion Criteria:** Friction points, likely causes, severity, mitigation
ideas, and unresolved UX risks are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-015

## Node 15 — Interaction Economics

**Node ID:** PT-015

**Type:** Skill

**Capability:** ux

**Repository Location:** skills/ux/interaction-economics/

**Purpose:** Evaluate interaction cost, effort, frequency, and value across core
tasks.

**Consumes:** A-014 Cognitive Friction Analysis; A-013 Task Architecture.

**Produces:** A-015 Interaction Economics Model.

**Required Inputs:** Cognitive friction analysis and task architecture.

**Completion Criteria:** High-cost interactions, repeated actions, value density,
effort tradeoffs, and optimization opportunities are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-016

## Node 16 — Interaction Architecture

**Node ID:** PT-016

**Type:** Skill

**Capability:** ux

**Repository Location:** skills/ux/interaction-architecture/

**Purpose:** Define interaction structures, controls, navigation, feedback, and
state transitions.

**Consumes:** A-015 Interaction Economics Model; A-012 Product Behavior Model.

**Produces:** A-016 Interaction Architecture.

**Required Inputs:** Interaction economics model and product behavior model.

**Completion Criteria:** Interaction patterns, flows, controls, feedback,
navigation, and transition expectations are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-017

## Node 17 — Spatial Cognition

**Node ID:** PT-017

**Type:** Skill

**Capability:** ux

**Repository Location:** skills/ux/spatial-cognition/

**Purpose:** Reason about spatial layout, visual grouping, hierarchy, movement,
and user orientation.

**Consumes:** A-016 Interaction Architecture; A-013 Task Architecture.

**Produces:** A-017 Spatial Cognition Model.

**Required Inputs:** Interaction architecture and task architecture.

**Completion Criteria:** Spatial groupings, orientation cues, layout risks,
navigation landmarks, and spatial reasoning constraints are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-018

## Node 18 — UX State Topology

**Node ID:** PT-018

**Type:** Skill

**Capability:** ux

**Repository Location:** skills/ux/ux-state-topology/

**Purpose:** Define user-visible states, state transitions, empty/loading/error
conditions, and continuity expectations.

**Consumes:** A-016 Interaction Architecture; A-017 Spatial Cognition Model.

**Produces:** A-018 UX State Topology.

**Required Inputs:** Interaction architecture and spatial cognition model.

**Completion Criteria:** States, transitions, edge cases, error states,
recovery paths, and continuity expectations are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-019

## Node 19 — Information Architecture

**Node ID:** PT-019

**Type:** Skill

**Capability:** ux

**Repository Location:** skills/ux/information-architecture/

**Purpose:** Structure information, navigation, labels, content hierarchy, and
findability.

**Consumes:** A-018 UX State Topology; A-010 User Mental Models; A-004 Canonical
Domain Ontology.

**Produces:** A-019 Information Architecture.

**Required Inputs:** UX state topology, user mental models, and domain ontology.

**Completion Criteria:** Navigation structure, information hierarchy, labels,
groupings, and discoverability risks are documented.

**Human Approval Gate:** Yes

**Next Node(s):** PT-020

## Node 20 — Technology Substrate Selection

**Node ID:** PT-020

**Type:** Skill

**Capability:** architecture

**Repository Location:** skills/architecture/tech-stack-selection/

**Purpose:** Select the technology substrate that best fits requirements,
experience strategy, constraints, and implementation risk.

**Consumes:** A-008 Software Requirements Specification; A-019 Information
Architecture.

**Produces:** A-020 Technology Substrate Decision.

**Required Inputs:** Software requirements and information architecture.

**Completion Criteria:** Technology choices, rationale, constraints, tradeoffs,
risks, and rejected alternatives are documented.

**Human Approval Gate:** Yes

**Next Node(s):** PT-021

## Node 21 — Data & Persistence Architecture

**Node ID:** PT-021

**Type:** Skill

**Capability:** architecture

**Repository Location:** skills/architecture/data-persistence/

**Purpose:** Define data model, persistence strategy, storage boundaries,
retention, and consistency expectations.

**Consumes:** A-020 Technology Substrate Decision; A-004 Canonical Domain
Ontology; A-008 Software Requirements Specification.

**Produces:** A-021 Data and Persistence Architecture.

**Required Inputs:** Technology substrate decision, domain ontology, and software
requirements.

**Completion Criteria:** Data entities, persistence choices, ownership,
retention, consistency, and migration considerations are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-022

## Node 22 — Interface Contracts

**Node ID:** PT-022

**Type:** Skill

**Capability:** architecture

**Repository Location:** skills/architecture/interface-contracts/

**Purpose:** Define interfaces between components, users, services, agents, and
external systems.

**Consumes:** A-021 Data and Persistence Architecture; A-020 Technology
Substrate Decision; A-008 Software Requirements Specification.

**Produces:** A-022 Interface Contracts.

**Required Inputs:** Data architecture, technology decision, and software
requirements.

**Completion Criteria:** API, component, integration, data exchange, and
compatibility contracts are documented.

**Human Approval Gate:** Yes

**Next Node(s):** PT-023

## Node 23 — Event Taxonomy

**Node ID:** PT-023

**Type:** Skill

**Capability:** architecture

**Repository Location:** skills/architecture/event-taxonomy/

**Purpose:** Define meaningful system, product, workflow, analytics, and
integration events.

**Consumes:** A-022 Interface Contracts; A-012 Product Behavior Model; A-021
Data and Persistence Architecture.

**Produces:** A-023 Event Taxonomy.

**Required Inputs:** Interface contracts, product behavior model, and data
architecture.

**Completion Criteria:** Event names, producers, consumers, payload concepts,
timing, and observability expectations are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-024

## Node 24 — Concurrency & Stream Sizing

**Node ID:** PT-024

**Type:** Skill

**Capability:** execution

**Repository Location:** skills/execution/concurrency-sizing/

**Purpose:** Determine safe parallel execution streams based on dependencies,
risk, repository boundaries, and agent coordination requirements.

**Consumes:** A-022 Interface Contracts; A-023 Event Taxonomy; A-020 Technology
Substrate Decision.

**Produces:** A-024 Concurrency and Stream Sizing Model.

**Required Inputs:** Interface contracts, event taxonomy, and technology
decision.

**Completion Criteria:** Parallelization opportunities, dependency boundaries,
coordination risks, and stream sizing recommendations are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-025

## Node 25 — WBS & Execution DAG

**Node ID:** PT-025

**Type:** Skill

**Capability:** execution

**Repository Location:** skills/execution/wbs-dag/

**Purpose:** Convert architecture and requirements into a work breakdown
structure and dependency graph.

**Consumes:** A-008 Software Requirements Specification; A-022 Interface
Contracts; A-024 Concurrency and Stream Sizing Model.

**Produces:** A-025 WBS and Execution DAG.

**Required Inputs:** Software requirements, interface contracts, and stream
sizing model.

**Completion Criteria:** Work packages, dependencies, ordering, validation
points, and execution constraints are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-026

## Node 26 — Parallel Streams Plan

**Node ID:** PT-026

**Type:** Skill

**Capability:** execution

**Repository Location:** skills/execution/parallel-streams/

**Purpose:** Assign work packages into coordinated parallel streams.

**Consumes:** A-025 WBS and Execution DAG; A-024 Concurrency and Stream Sizing
Model.

**Produces:** A-026 Parallel Streams Plan.

**Required Inputs:** WBS, execution DAG, and stream sizing model.

**Completion Criteria:** Streams, ownership boundaries, dependencies, merge
order, validation gates, and coordination risks are documented.

**Human Approval Gate:** Yes

**Next Node(s):** PT-027

## Node 27 — Worktree Execution Guide

**Node ID:** PT-027

**Type:** Skill

**Capability:** execution

**Repository Location:** skills/execution/worktree-execution/

**Purpose:** Translate parallel stream planning into worktree-specific execution
guidance.

**Consumes:** A-026 Parallel Streams Plan; docs/execution/WORKTREE_POLICY.md;
docs/execution/AGENT_COORDINATION.md.

**Produces:** A-027 Worktree Execution Guide.

**Required Inputs:** Parallel streams plan and worktree governance policies.

**Completion Criteria:** Worktree names, asset-family ownership, synchronization
rules, handoff requirements, and validation expectations are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-028

## Node 28 — Runtime Configuration Baseline

**Node ID:** PT-028

**Type:** Skill

**Capability:** devex

**Repository Location:** skills/devex/runtime-configuration/

**Purpose:** Define runtime, local execution, environment, dependency, and
configuration baselines needed for implementation.

**Consumes:** A-020 Technology Substrate Decision; A-027 Worktree Execution
Guide.

**Produces:** A-028 Runtime Configuration Baseline.

**Required Inputs:** Technology decision and worktree execution guide.

**Completion Criteria:** Runtime assumptions, environment variables, local
commands, dependency constraints, and configuration boundaries are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-029

## Node 29 — Repository Operating System Initialization

**Node ID:** PT-029

**Type:** Skill

**Capability:** governance

**Repository Location:** skills/governance/repository-operating-system/

**Purpose:** Initialize or verify repository governance, traceability,
validation, and operating-system assets for implementation.

**Consumes:** A-027 Worktree Execution Guide; A-028 Runtime Configuration
Baseline; docs/execution/REPOSITORY_OPERATING_SYSTEM.md.

**Produces:** A-029 Repository Operating System State.

**Required Inputs:** Worktree guide, runtime baseline, and ROS documentation.

**Completion Criteria:** Governance assets, validation expectations, command
history, risk tracking, and decision tracking are ready for implementation.

**Human Approval Gate:** No

**Next Node(s):** PT-030

## Node 30 — Agent Bootstrapping

**Node ID:** PT-030

**Type:** Skill

**Capability:** bootstrapping

**Repository Location:** skills/bootstrapping/agent-bootstrap/

**Purpose:** Prepare agent-specific work packets without introducing
vendor-specific assumptions into core framework assets.

**Consumes:** A-026 Parallel Streams Plan; A-027 Worktree Execution Guide; A-029
Repository Operating System State.

**Produces:** A-030 Agent Bootstrap Packet.

**Required Inputs:** Parallel streams plan, worktree execution guide, and ROS
state.

**Completion Criteria:** Agent scope, objectives, constraints, dependencies,
handoff expectations, and validation requirements are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-031

## Node 31 — Work Order Generation

**Node ID:** PT-031

**Type:** Skill

**Capability:** governance

**Repository Location:** skills/governance/work-order-generation/

**Purpose:** Generate governed work orders for implementation streams and agents.

**Consumes:** A-030 Agent Bootstrap Packet; A-025 WBS and Execution DAG; A-026
Parallel Streams Plan.

**Produces:** A-031 Governed Work Orders.

**Required Inputs:** Agent bootstrap packet, WBS, execution DAG, and parallel
streams plan.

**Completion Criteria:** Work orders include scope, dependencies, validation
requirements, protected operations, handoff expectations, and completion
criteria.

**Human Approval Gate:** Yes

**Next Node(s):** PT-032

## Node 32 — Governed Implementation

**Node ID:** PT-032

**Type:** Workflow

**Capability:** implementation

**Repository Location:** workflows/implementation/governed-implementation/

**Purpose:** Execute implementation work under repository governance,
coordination, validation, compatibility, and protected-operation controls.

**Consumes:** A-031 Governed Work Orders; A-029 Repository Operating System
State; A-028 Runtime Configuration Baseline.

**Produces:** A-032 Governed Implementation Evidence.

**Required Inputs:** Approved work orders, ROS state, and runtime configuration
baseline.

**Completion Criteria:** Implementation evidence, validation evidence,
compatibility assessment, handoff records, and unresolved risks are documented.

**Human Approval Gate:** No

**Next Node(s):** PT-033

## Node 33 — Validation & Release Readiness

**Node ID:** PT-033

**Type:** Workflow

**Capability:** governance

**Repository Location:** workflows/release/readiness/

**Purpose:** Determine whether implementation evidence satisfies validation,
compatibility, deprecation, release, and governance requirements.

**Consumes:** A-032 Governed Implementation Evidence; docs/execution/VALIDATION_PROTOCOL.md; docs/execution/GIT_GOVERNANCE.md.

**Produces:** A-033 Validation and Release Readiness Evidence.

**Required Inputs:** Governed implementation evidence and execution governance
documents.

**Completion Criteria:** Validation results, compatibility impact, breaking
change assessment, deprecation assessment, release recommendation, and approval
requirements are documented.

**Human Approval Gate:** Yes

**Next Node(s):** Terminal

## Artifact Flow

```text
External raw concept
  -> A-001 Raw Concept Intake Brief
  -> A-002 Interrogated Concept Brief
  -> A-003 Wedge Definition
  -> A-004 Canonical Domain Ontology
  -> A-005 Strategic Charter
  -> A-006 Business Requirements Document
  -> A-007 Product Requirements Document
  -> A-008 Software Requirements Specification
  -> A-009 UX Cognitive Environment
  -> A-010 User Mental Models
  -> A-011 Experience Strategy
  -> A-012 Product Behavior Model
  -> A-013 Task Architecture
  -> A-014 Cognitive Friction Analysis
  -> A-015 Interaction Economics Model
  -> A-016 Interaction Architecture
  -> A-017 Spatial Cognition Model
  -> A-018 UX State Topology
  -> A-019 Information Architecture
  -> A-020 Technology Substrate Decision
  -> A-021 Data and Persistence Architecture
  -> A-022 Interface Contracts
  -> A-023 Event Taxonomy
  -> A-024 Concurrency and Stream Sizing Model
  -> A-025 WBS and Execution DAG
  -> A-026 Parallel Streams Plan
  -> A-027 Worktree Execution Guide
  -> A-028 Runtime Configuration Baseline
  -> A-029 Repository Operating System State
  -> A-030 Agent Bootstrap Packet
  -> A-031 Governed Work Orders
  -> A-032 Governed Implementation Evidence
  -> A-033 Validation and Release Readiness Evidence
  -> Terminal release, iteration, or rejection decision
```

Additional lineage:

- A-004 Canonical Domain Ontology is reused by requirements, UX, and
  architecture nodes.
- A-008 Software Requirements Specification is reused by UX, architecture, and
  execution nodes.
- A-020 Technology Substrate Decision is reused by architecture, execution, and
  DevEx nodes.
- A-026 Parallel Streams Plan is reused by worktree, bootstrapping, and work
  order nodes.
- A-029 Repository Operating System State governs agent bootstrapping and
  implementation.
- A-033 Validation and Release Readiness Evidence has terminal purpose.

## Future Repository Map

| Node | Name | Type | Capability | Repository Location |
| --- | --- | --- | --- | --- |
| PT-001 | Raw Concept Intake | Workflow | intake | `workflows/intake/raw-concept/` |
| PT-002 | Concept Interrogation & Stress Testing | Skill | strategy | `skills/strategy/concept-interrogation/` |
| PT-003 | Wedge Definition | Skill | strategy | `skills/strategy/wedge-definition/` |
| PT-004 | Canonical Domain Ontology | Skill | ontology | `skills/ontology/domain-ontology/` |
| PT-005 | Strategic Charter | Skill | strategy | `skills/strategy/strategic-charter/` |
| PT-006 | Business Requirements Document | Skill | requirements | `skills/requirements/brd-generation/` |
| PT-007 | Product Requirements Document | Skill | requirements | `skills/requirements/prd-generation/` |
| PT-008 | Software Requirements Specification | Skill | requirements | `skills/requirements/srs-generation/` |
| PT-009 | UX Cognitive Environment | Skill | ux | `skills/ux/cognitive-environment/` |
| PT-010 | User Mental Models | Skill | ux | `skills/ux/user-mental-models/` |
| PT-011 | Experience Strategy | Skill | ux | `skills/ux/experience-strategy/` |
| PT-012 | Product Behavior Model | Skill | ux | `skills/ux/product-behavior-model/` |
| PT-013 | Task Architecture | Skill | ux | `skills/ux/task-architecture/` |
| PT-014 | Cognitive Friction | Skill | ux | `skills/ux/cognitive-friction/` |
| PT-015 | Interaction Economics | Skill | ux | `skills/ux/interaction-economics/` |
| PT-016 | Interaction Architecture | Skill | ux | `skills/ux/interaction-architecture/` |
| PT-017 | Spatial Cognition | Skill | ux | `skills/ux/spatial-cognition/` |
| PT-018 | UX State Topology | Skill | ux | `skills/ux/ux-state-topology/` |
| PT-019 | Information Architecture | Skill | ux | `skills/ux/information-architecture/` |
| PT-020 | Technology Substrate Selection | Skill | architecture | `skills/architecture/tech-stack-selection/` |
| PT-021 | Data & Persistence Architecture | Skill | architecture | `skills/architecture/data-persistence/` |
| PT-022 | Interface Contracts | Skill | architecture | `skills/architecture/interface-contracts/` |
| PT-023 | Event Taxonomy | Skill | architecture | `skills/architecture/event-taxonomy/` |
| PT-024 | Concurrency & Stream Sizing | Skill | execution | `skills/execution/concurrency-sizing/` |
| PT-025 | WBS & Execution DAG | Skill | execution | `skills/execution/wbs-dag/` |
| PT-026 | Parallel Streams Plan | Skill | execution | `skills/execution/parallel-streams/` |
| PT-027 | Worktree Execution Guide | Skill | execution | `skills/execution/worktree-execution/` |
| PT-028 | Runtime Configuration Baseline | Skill | devex | `skills/devex/runtime-configuration/` |
| PT-029 | Repository Operating System Initialization | Skill | governance | `skills/governance/repository-operating-system/` |
| PT-030 | Agent Bootstrapping | Skill | bootstrapping | `skills/bootstrapping/agent-bootstrap/` |
| PT-031 | Work Order Generation | Skill | governance | `skills/governance/work-order-generation/` |
| PT-032 | Governed Implementation | Workflow | implementation | `workflows/implementation/governed-implementation/` |
| PT-033 | Validation & Release Readiness | Workflow | governance | `workflows/release/readiness/` |

## Process Governance

A future agent must update `processes/default.md` whenever:

- a skill is added
- a skill location changes
- a workflow is added
- a workflow location changes
- artifact flow changes
- execution order changes
- approval gates change

The Process is the canonical source of truth for repository placement.
Repository placement must never be inferred from convention alone.

## Process Validation Rules

Validate that:

- every node has a repository location
- every repository location is unique
- every artifact has a producer
- every artifact has a consumer or terminal purpose
- every node has a capability
- every node has a valid successor
