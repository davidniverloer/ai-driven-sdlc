# Command 0007: Add Prompt Immutability Governance

Date: 2026-06-02

## Objective

Establish Prompt Immutability Governance as a permanent architectural constraint
for ai-driven-sdlc.

## Files Created

- `docs/framework/PROMPT_IMMUTABILITY.md`
- `docs/commands/0007_add_prompt_immutability_governance.md`

## Files Modified

- `AGENTS.md`
- `docs/execution/REPOSITORY_OPERATING_SYSTEM.md`
- `docs/execution/VALIDATION_PROTOCOL.md`
- `docs/framework/README.md`
- `docs/execution/DECISIONS.md`

## Architectural Decisions Introduced

- ADR-0008 establishes Prompt Immutability Governance.
- Prompts and protocols are source artifacts.
- Source prompts must remain verbatim.
- Agents may classify, annotate externally, tag, map, package, validate,
  version, and reference prompts.
- Agents may not rewrite, optimize, improve, simplify, merge, reinterpret,
  paraphrase, expand, or compress prompts without explicit human authorization.
- Proposal packages must preserve immutable source copies under `original/`.

## Unresolved Questions

- Where should immutable prompt source artifacts be stored?
- Should prompt source artifacts use content hashes for fidelity validation?
- What approval record format is required for authorized derivatives?
- Should `original/` be enforced by schema before proposals are implemented?

## Recommended Next Actions

1. Define the source prompt storage model.
2. Define a prompt source metadata schema with content hash support.
3. Define the proposal package directory structure, including `original/`.
4. Add a validation checklist for authorized derivatives.
