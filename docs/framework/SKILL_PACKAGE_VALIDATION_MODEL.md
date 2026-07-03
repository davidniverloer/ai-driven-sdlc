# Skill Package Validation Model

This document defines validation expectations for canonical skill packages.

It is a validation contract, not an automated validator or schema.

## Validation Scope

Skill package validation applies before a skill is admitted as canonical and
whenever a canonical skill package is materially changed through governance.

Validation checks package structure, metadata, source prompt preservation,
repository placement, Process relationships, lifecycle state, dependencies,
examples, and output expectations.

## Required File Validation

Validate that the package contains:

- `skill.yaml`
- `README.md`
- `output-contract.md`
- `source/`
- `examples/`

For A/B protocol skills, validate:

- `source/discovery.original.md`
- `source/synthesis.original.md`

## Metadata Validation

Validate that `skill.yaml` includes:

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

Validation must check presence and consistency with package location, lifecycle
records, Process references, and registry expectations.

## README Validation

Validate that `README.md` includes:

- purpose
- capability
- inputs
- outputs
- dependencies
- Process relationship

The README must remain agent-agnostic and must not replace source prompts.

## Output Contract Validation

Validate that `output-contract.md` defines:

- expected outputs
- artifact expectations
- validation expectations

The output contract must be consistent with Process artifact flow and known
workflow handoffs.

## Source Prompt Validation

Validate that `source/` contains immutable source prompts or protocols.

Validation must fail when source prompts are rewritten, optimized, improved,
reinterpreted, normalized, or replaced by derived summaries.

## Example Validation

Validate that `examples/` defines:

- example input requirements
- example output requirements

Examples must not implement the skill or replace required validation evidence.

## Repository Placement Validation

Validate that:

- package path matches `repository_location`
- capability matches the owning capability folder or has an approved exception
- Repository Mapping evidence exists
- canonical registry registration is possible
- no approved asset is overwritten

## Process Validation

Validate that:

- `process_nodes` exists
- referenced Process nodes exist or are proposed
- terminal or out-of-process classification is explicit when no node applies
- consumed and produced artifacts align with `output-contract.md`
- approval gate relationships are documented when applicable

## Lifecycle Validation

Validate that:

- lifecycle state exists
- lifecycle state is valid
- package completeness matches lifecycle expectations
- deprecated packages preserve replacement or migration guidance when
  applicable
- archived packages preserve discoverability and history

## Dependency Validation

Validate that dependencies are declared and traceable.

Dependencies may include skills, workflows, schemas, Process nodes,
governance documents, adapters, or external tools.

## Validation Outcomes

Allowed outcomes:

- PASS
- PASS_WITH_WARNINGS
- FAIL

Warnings must be explicit, traceable, and non-blocking. Failures block canonical
admission until resolved.
