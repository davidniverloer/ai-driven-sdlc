# ai-driven-sdlc

ai-driven-sdlc helps an AI coding agent work through software planning before
it jumps into implementation.

It gives your repository a lightweight SDLC operating layer: commands,
governance rules, process maps, and reusable skills that help move from a raw
idea to requirements, architecture, execution planning, and implementation.

It is designed to work with Codex, Claude Code, Cursor, or any local agent. The
framework is agent-agnostic and avoids vendor lock-in.

## Who This Is For

Use ai-driven-sdlc if you want an AI agent to help you:

- challenge a raw project idea before building
- turn vague intent into structured requirements
- keep terminology consistent across a project
- map decisions into a visible process
- preserve source prompts and decisions
- avoid accidental rewrites of approved planning assets

You do not need to understand the internal framework documents to start.

## What It Helps You Do

ai-driven-sdlc gives your agent a governed path:

```text
raw concept
↓
concept interrogation
↓
domain ontology
↓
strategic charter
↓
requirements
↓
UX reasoning
↓
architecture
↓
execution planning
↓
governed implementation
```

The current framework includes the first canonical skills:

- `concept-interrogation`
- `domain-ontology`

More skills are added through proposals before they become canonical.

## Install

From any terminal, run this one-liner:

```sh
curl -fsSL https://raw.githubusercontent.com/davidniverloer/ai-driven-sdlc/main/bootstrap.sh | sh
```

Run it from the root of the repository where you want the `.ai-sdlc/` operating
layer installed.

If you already cloned this repository, you can run the installer directly:

```sh
./install.sh
```

To install into a different repository, pass an explicit path:

```sh
./install.sh ../my-app
```

The installer creates:

```text
/path/to/your-project/.ai-sdlc/
```

It copies the framework docs, commands, Process Tree, current skills, workflow
placeholders, schema placeholders, and templates into that folder.

To preview without writing files:

```sh
curl -fsSL https://raw.githubusercontent.com/davidniverloer/ai-driven-sdlc/main/bootstrap.sh | sh -s -- --dry-run
```

To remove the installed `.ai-sdlc/` layer safely:

```sh
.ai-sdlc/uninstall.sh
```

To preview uninstall:

```sh
.ai-sdlc/uninstall.sh --dry-run
```

## Safety

The installer is intentionally conservative.

- It never writes outside `.ai-sdlc/`.
- If `.ai-sdlc/` already exists, it is moved to a timestamped backup first.
- It writes an install manifest.
- It does not modify your app code.
- It does not install a background service.
- It does not run AI commands automatically.
- The uninstaller moves `.ai-sdlc/` to a timestamped backup instead of deleting
  it.

## Start Using It

After installing, open your target repository in your AI coding agent.

Paste this command as the first non-empty line:

```text
/skill-create

[Your prompt or protocol goes here]
```

Everything after `/skill-create` is treated as source material for a proposed
skill.

Example:

```text
/skill-create

[A Prompt]

[B Prompt]
```

The command documentation is installed at:

```text
.ai-sdlc/commands/skill-create.md
```

The contributor guide is installed at:

```text
.ai-sdlc/guides/SKILL_CREATE_COMMAND.md
```

## What Gets Created

`/skill-create` creates a proposal package, not a canonical skill.

Expected proposal location:

```text
proposals/skills/<capability>/<proposed-skill-id>/
```

Expected proposal files:

```text
proposal.yaml
classification.md
repository-placement.md
process-tree-impact.md
similarity-analysis.md
approval-checklist.md
validation-report.md
source/
```

The `source/` directory preserves submitted prompts verbatim.

## What It Will Not Do

ai-driven-sdlc does not silently:

- rewrite your prompts
- create canonical skills
- promote skills
- modify approved skills
- modify approved workflows
- modify canonical Process Trees
- change your application code

Promotion is a separate review step.

## Learn More

Start here:

```text
docs/guides/GETTING_STARTED.md
```

Command index:

```text
docs/commands/README.md
```

Framework internals:

```text
docs/framework/README.md
```

Execution governance:

```text
docs/execution/README.md
```

## Current Status

This repository is early but usable as a local framework package.

The installer creates a `.ai-sdlc/` folder with framework assets. The command
behavior is still performed by the AI agent reading the installed instructions;
there is not yet a CLI, daemon, schema validator, or background automation.

## For Framework Contributors

The framework itself is organized around:

- `docs/framework/`: conceptual models and contracts
- `docs/execution/`: governance and validation rules
- `docs/commands/`: user-facing command specs and command history
- `process-trees/`: SDLC execution maps
- `skills/`: canonical skill packages
- `proposals/`: proposed assets and promotion evidence
- `templates/`: future package templates

Keep framework changes proposal-first, traceable, and agent-agnostic.
