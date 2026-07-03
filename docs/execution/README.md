# Execution Governance

This directory contains the Repository Operating System for ai-driven-sdlc.

The Repository Operating System is the governance, traceability, validation, and
architectural control layer for the framework. It tells future agents how to
change the repository without damaging its agent-agnostic design or creating
untraceable framework behavior.

## Documents

- `REPOSITORY_OPERATING_SYSTEM.md` is the central operating manual.
- `DECISIONS.md` records architectural decisions.
- `RISK_REGISTER.md` tracks framework risks and mitigations.
- `VALIDATION_PROTOCOL.md` defines validation expectations for governed assets.
- `PROCESS_POLICY.md` defines when and how the canonical Process must
  be updated.
- `ASSET_EVOLUTION_POLICY.md` defines safe, risky, and breaking asset changes.
- `GIT_GOVERNANCE.md` defines protected operations, approval gates, and commit
  recommendation rules.
- `WORKTREE_POLICY.md` defines asset-family worktree governance.
- `AGENT_COORDINATION.md` defines multi-agent ownership, dependency disclosure,
  compatibility review, and handoff records.

## Usage

Agents should read this directory before making material changes to skills,
workflows, schemas, adapters, installation behavior, documentation structure, or
governance rules.

For any non-trivial change:

1. Identify the governed asset type.
2. Check the relevant model in `docs/framework/`.
3. Review current decisions and risks.
4. Make the smallest compatible change.
5. Validate according to `VALIDATION_PROTOCOL.md`.
6. Record new decisions when architectural meaning changes.
7. Use approval gates before protected git, GitHub, or worktree operations.
8. Check Process impact before creating or modifying skills or workflows.
