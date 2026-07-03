# Skill Evolution Engine

## Purpose

The Skill Evolution Engine is the framework subsystem responsible for governing
how new expertise enters ai-driven-sdlc.

It accepts source prompts and source protocols as preserved artifacts, classifies
them, determines where they belong in the repository, determines where they
belong in Processes, generates skill proposals, validates those proposals,
and prepares approved proposals for promotion.

It exists because ai-driven-sdlc must evolve safely without allowing new prompts,
protocols, or agent output to overwrite approved framework assets. The engine
solves the problem of turning raw expertise into governed, traceable skill
proposals while preserving source material and protecting canonical skills,
workflows, and Processes.

The Skill Evolution Engine does not implement skills. It does not rewrite
prompts. It does not modify approved skills. It governs the path from source
expertise to proposed framework capability.

## Responsibilities

**Intake**

Accept source prompts, source protocols, external expertise, or agent-authored
drafts as source artifacts. Intake preserves the original material verbatim and
records provenance.

**Classification**

Identify the likely capability group, asset type, lifecycle state, and
relationship to existing skills, workflows, schemas, and Processes.

**Repository Mapping**

Determine the proposed repository location for a skill proposal or related
metadata without creating or modifying canonical skill assets directly.

**Process Mapping**

Determine where the proposed skill would appear in one or more Processes,
including consumed artifacts, produced artifacts, predecessor nodes, successor
nodes, and approval gates.

**Proposal Generation**

Package source material, classification, mappings, rationale, risks, and open
questions into a skill proposal.

**Proposal Validation**

Validate the proposal against repository governance, asset evolution policy,
Process policy, validation protocol, and approved skill immutability.

**Promotion Preparation**

Prepare validated proposals for human approval and future promotion into
canonical skill assets. Promotion preparation does not itself publish or modify
approved skills.

## Governed Assets

**Source Prompts**

Submitted prompts are source artifacts. They must be preserved verbatim and
traceably associated with any derived proposal.

**Source Protocols**

Submitted protocols, procedures, rubrics, or execution instructions are source
artifacts. They must be preserved verbatim and may be classified or annotated
without being rewritten.

**Skill Proposals**

Skill proposals are draft assets that package a possible new skill or skill
change for review. They are not canonical skills.

**Canonical Skills**

Canonical skills are approved framework assets. The Skill Evolution Engine may
reference them, compare against them, and identify compatibility impact, but it
must not modify them directly without explicit human authorization.

**Proposal Metadata**

Proposal metadata includes source references, classification, repository
location, Process mapping, similarity findings, compatibility assessment,
validation evidence, approval status, and promotion readiness.

**Process Mappings**

Process mappings describe where proposed skills would appear in Process
Processes, what artifacts they consume, what artifacts they produce, and which nodes
or gates they affect.

## Core Components

### Skill Intake Compiler

Purpose: preserve submitted source material and package it for classification.

Inputs:

- source prompt
- source protocol
- submitter context
- provenance notes
- intended use when provided

Outputs:

- immutable source artifact record
- intake summary
- provenance metadata
- open intake questions

### Capability Classifier

Purpose: classify the source artifact by capability group, likely asset type,
and skill evolution intent.

Inputs:

- source artifact record
- intake summary
- existing asset model
- skill model
- Process context

Outputs:

- proposed capability group
- proposed asset type
- lifecycle recommendation
- classification rationale
- ambiguity notes

### Repository Mapper

Purpose: identify where a proposed skill or proposal package should live in the
repository.

Inputs:

- classification output
- asset model
- current repository tree
- naming conventions
- protected asset rules

Outputs:

- proposed repository location
- naming recommendation
- collision or conflict notes
- ownership and dependency notes

### Process Integrator

Purpose: map the proposed skill to one or more Processes without modifying
canonical Processes directly.

Inputs:

- proposed repository location
- Process files
- proposed consumed artifacts
- proposed produced artifacts
- predecessor and successor candidates

Outputs:

- proposed Process placement
- affected Process nodes
- artifact-flow impact
- approval-gate impact
- Process update recommendation

### Similarity Analyzer

Purpose: compare the source artifact and proposed skill against existing skills,
workflows, and proposals.

Inputs:

- source artifact record
- proposed capability classification
- existing skills
- existing proposals
- Process mappings

Outputs:

- similar existing assets
- duplication risk
- merge or split recommendation
- compatibility concerns
- reuse opportunities

### Proposal Generator

Purpose: generate a reviewable skill proposal package from source material and
analysis.

Inputs:

- preserved source artifact
- classification output
- repository mapping
- Process mapping
- similarity analysis
- governance notes

Outputs:

- skill proposal
- proposal metadata
- rationale
- risks and open questions
- promotion checklist

### Governance Validator

Purpose: validate the proposal against ai-driven-sdlc governance before any
promotion recommendation.

Inputs:

- skill proposal
- proposal metadata
- validation protocol
- asset evolution policy
- Process policy
- current decisions and risks

Outputs:

- validation result
- compatibility assessment
- breaking-change assessment
- deprecation assessment
- required approvals
- remediation notes

### Promotion Engine

Purpose: prepare validated proposals for human approval and future promotion
into canonical skills.

Inputs:

- validated proposal
- approval record
- promotion checklist
- target repository mapping
- Process update recommendation

Outputs:

- promotion package
- canonicalization plan
- required approval block
- post-promotion validation checklist
- command history recommendation

## Evolution Lifecycle

```text
Source Prompt
↓
Intake
↓
Classification
↓
Repository Mapping
↓
Process Mapping
↓
Proposal Generation
↓
Validation
↓
Approval
↓
Promotion
↓
Canonical Skill
```

## Architectural Constraints

**Prompt Immutability**

Submitted prompts are source artifacts and must be preserved verbatim. Agents may
classify, annotate, map, and package prompts, but may not rewrite, optimize,
improve, or reinterpret them.

**Approved Skill Immutability**

Approved skills are protected assets. The Skill Evolution Engine may analyze
them and propose changes, but it must not modify them directly without explicit
human authorization.

**Proposal-First Evolution**

New expertise enters the framework as a proposal before it can become a
canonical skill. Proposals must carry source references, mappings, validation
evidence, and approval status.

**Process Awareness**

Every skill proposal must identify whether and where it affects Processes.
Process placement must be explicit and must not be inferred from repository
convention alone.

**Traceability**

The path from source prompt or protocol to proposal and eventual canonical skill
must be traceable through metadata, command history, validation results, and
approval records.

**Agent Agnosticism**

The engine must not assume a specific AI vendor, editor, CLI, or runtime. Agent
adapters may assist the process later, but core governance remains portable.

## Boundaries

The Skill Evolution Engine may:

- preserve source prompts and protocols
- classify source artifacts
- annotate source artifacts without changing their text
- map proposed assets to repository locations
- map proposed skills to Processes
- identify similar or conflicting existing assets
- generate skill proposals
- validate proposals against governance
- prepare promotion packages for human review

The Skill Evolution Engine may never, without explicit human authorization:

- rewrite prompts
- optimize prompts
- improve prompts
- reinterpret prompts
- modify approved skills directly
- modify approved workflows directly
- modify canonical Processes directly

The engine governs entry and promotion. It does not replace human approval, asset
validation, Process governance, or protected operation governance.
