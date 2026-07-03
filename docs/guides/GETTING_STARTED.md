# Getting Started

This guide explains how to install ai-driven-sdlc into a repository and start
using its planning workflow with an AI coding agent.

## 1. Install Into a Project

From any terminal, run this one-liner:

```sh
curl -fsSL https://raw.githubusercontent.com/davidniverloer/ai-driven-sdlc/main/bootstrap.sh | sh
```

Run it from the root of the repository where you want to install ai-driven-sdlc.

If you already cloned ai-driven-sdlc, run:

```sh
./install.sh
```

To preview the installation:

```sh
curl -fsSL https://raw.githubusercontent.com/davidniverloer/ai-driven-sdlc/main/bootstrap.sh | sh -s -- --dry-run
```

The installer creates:

```text
/path/to/your-project/.ai-sdlc/
```

If `.ai-sdlc/` already exists, the installer backs it up before writing a new
copy.

To remove the installed framework layer later:

```sh
.ai-sdlc/uninstall.sh
```

The uninstaller moves `.ai-sdlc/` to a timestamped `.ai-sdlc.removed-*` backup
instead of deleting it.

## 2. Open Your Project With an AI Agent

Open the target project in your agent, such as Codex, Claude Code, Cursor, or
another local coding assistant.

Ask the agent to read:

```text
.ai-sdlc/guides/FIRST_RUN.md
.ai-sdlc/commands/manifest.md
.ai-sdlc/guides/SKILL_CREATE_COMMAND.md
.ai-sdlc/guides/FIRST_SKILL_PROPOSAL.md
.ai-sdlc/processes/default.md
```

## 3. Submit Your First Skill Protocol

Paste `/skill-create` as the first non-empty line:

```text
/skill-create

[Your prompt or protocol goes here]
```

For an A/B protocol:

```text
/skill-create

[A Prompt]

[B Prompt]
```

Everything after `/skill-create` is source material. The agent should preserve
it verbatim.

## 4. Review the Proposal

The command generates a proposal package, usually shaped like:

```text
proposals/skills/<capability>/<proposed-skill-id>/
```

Review:

- `classification.md`
- `repository-placement.md`
- `process-impact.md`
- `similarity-analysis.md`
- `validation-report.md`
- `source/`

The `source/` directory is important. It preserves the submitted prompt or
protocol exactly.

## 5. Promote Only When Ready

Promotion is separate from proposal generation.

Only promote a skill when:

- the proposal is valid
- the Process placement is clear
- source prompts are preserved
- the skill does not duplicate an existing canonical skill
- a human reviewer approves the promotion

## What To Try First

A good first workflow is:

```text
/skill-create

Describe the first strategic planning prompt you want the agent to use for this
project.
```

Then ask the agent to generate a proposal package and stop before promotion.

## Important Boundaries

ai-driven-sdlc does not automatically change your application code.

It does not silently rewrite prompts, promote skills, or update canonical
Processes.

It is a planning and governance layer first. Automation can be added later once
the contracts are stable.
