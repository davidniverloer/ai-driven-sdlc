# Git Governance

Git governance protects framework history, multi-agent work, and user files.
Agents may inspect repository state with non-destructive commands, but protected
operations require explicit approval before execution.

## Protected Operations

Agents may propose, but must never execute without approval:

- `git add`
- `git commit`
- `git push`
- `git checkout`
- `git switch`
- `git branch -d`
- `git reset`
- `git restore`
- `git clean`
- `git stash`
- `git merge`
- `git rebase`
- `git tag`
- `git worktree add`
- `git worktree remove`
- `gh pr create`
- `gh pr merge`

## Commit and Push Governance

Agents must never perform `commit`, `push`, `merge`, or `rebase` without
explicit approval.

Commit recommendations must:

- reference modified assets
- reference validation results
- identify compatibility impact
- identify breaking-change impact
- identify deprecation impact
- contain exactly one atomic change objective

## Commit Prefixes

Use one of these prefixes for recommended commit messages:

- `feat:`
- `fix:`
- `infra:`
- `docs:`
- `governance:`
- `schema:`
- `workflow:`
- `skill:`

The prefix should reflect the primary asset family changed.

## Approval Interface

Every protected operation requires this approval block:

```text
Protected Operation Approval Request

Current Branch:
Current Worktree:
Asset Types Affected:
Modified Files:
Proposed Operation:
Exact Commands:
Validation Evidence:
Compatibility Impact:
Risks:
Rollback Commands:

Confirmation Gate:
Reply exactly:
APPROVED

or

REJECTED: <reason>
```

After presenting the block, the agent must halt and wait. Any response other
than `APPROVED` means the protected operation must not be executed.

## Rollback Expectations

Protected operation proposals must include rollback commands when a practical
rollback exists. If rollback is not cleanly possible, the proposal must state
that limitation explicitly under Risks.
