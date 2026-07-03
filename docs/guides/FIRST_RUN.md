# First Run

Use this guide after ai-driven-sdlc has been installed into a repository.

The goal of first run is to orient the agent, choose the correct starting
command, and avoid accidental changes to application code or approved framework
assets.

## 1. Confirm Installation

From the target repository root, confirm these files exist:

```text
.ai-sdlc/manifest.txt
.ai-sdlc/commands/manifest.md
.ai-sdlc/processes/default.md
.ai-sdlc/examples/first-skill-proposal/README.md
.ai-sdlc/uninstall.sh
```

If any file is missing, stop and inspect the install output before continuing.

## 2. Agent Reading Order

Ask the agent to read these files in order:

```text
.ai-sdlc/commands/manifest.md
.ai-sdlc/processes/default.md
.ai-sdlc/guides/SKILL_CREATE_COMMAND.md
.ai-sdlc/guides/FIRST_SKILL_PROPOSAL.md
.ai-sdlc/framework/PROMPT_IMMUTABILITY.md
.ai-sdlc/execution/VALIDATION_PROTOCOL.md
```

This gives the agent command discovery, execution order, skill intake behavior,
prompt preservation rules, and validation expectations.

## 3. First Useful Action

For a new project concept, start with `/skill-create`:

```text
/skill-create

[Paste the planning prompt, protocol, or project concept here]
```

The agent should generate a governed proposal package and stop before promotion
unless promotion is explicitly requested and validated.

## 4. What Not To Do First

Do not start by asking the agent to:

- implement application code
- rewrite submitted prompts
- promote a skill directly
- modify canonical Processes
- delete or replace existing project files

ai-driven-sdlc should first create traceable planning and governance artifacts.

## 5. Safe Removal

To remove the installed operating layer later:

```sh
.ai-sdlc/uninstall.sh
```

The uninstaller moves `.ai-sdlc/` to a timestamped backup instead of deleting it.
