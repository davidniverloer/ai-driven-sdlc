# Worktree Policy

Worktree governance keeps parallel framework evolution organized around asset
families rather than product features.

## Naming Standard

Worktrees should be named around the governed asset family and scope.

Recommended examples:

- `skill/ux`
- `skill/requirements`
- `workflow/full-sdlc`
- `schema/contracts`
- `installer/core`
- `adapter/codex`
- `governance/validation`
- `docs/framework-models`

Do not use application-style feature naming such as `feature/login`,
`feature/dashboard`, or `bugfix/ui`.

## Worktree Lifecycle

1. Proposal: define the asset family and objective.
2. Creation: request approval before `git worktree add`.
3. Active Work: keep edits scoped to the named asset family.
4. Synchronization: disclose dependencies and expected merge order.
5. Closure: request approval before `git worktree remove`.

## Synchronization Expectations

Agents working in parallel worktrees must:

- identify owned asset families
- avoid overlapping writes without coordination
- disclose schema, workflow, installation, or adapter dependencies
- record handoff notes for dependent agents
- validate compatibility before recommending publication

## Protected Worktree Operations

`git worktree add` and `git worktree remove` are protected operations. Agents may
propose them only through the approval interface in `GIT_GOVERNANCE.md`.
