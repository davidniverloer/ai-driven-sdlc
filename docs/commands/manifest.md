# ai-driven-sdlc Command Manifest

This manifest is the installed command discovery entry point for agents working
inside a repository that contains `.ai-sdlc/`.

Agents should read this file before scanning individual command specifications.
It lists supported user-facing commands, activation rules, source files, and
safety boundaries.

## Command Discovery

Installed location:

```text
.ai-sdlc/commands/manifest.md
```

Related command index:

```text
.ai-sdlc/commands/README.md
```

## Commands

| Command | Activation | Specification | Status |
| --- | --- | --- | --- |
| Skill proposal intake | `/skill-create` as the first non-empty line | `.ai-sdlc/commands/skill-create.md` | Active |
| Legacy skill proposal intake | `Compile the next protocol into an ai-driven-sdlc skill.` | `.ai-sdlc/commands/compile-next-protocol-into-skill.md` | Supported |
| Process Tree creation | `Create an ai-driven-sdlc process tree named: <name>` | `.ai-sdlc/commands/create-process-tree.md` | Supported |

## Primary Starting Command

Use `/skill-create` for new skill proposal intake.

```text
/skill-create

[Submitted prompt or protocol]
```

The command must be the first non-empty line. Everything after the activation
line is source material and must be preserved according to prompt immutability
rules.

## Agent Safety Rules

Agents must not infer commands from natural language unless the referenced
command specification explicitly allows it.

Agents must not:

- rewrite submitted source prompts
- promote proposed skills directly
- modify approved skills directly
- modify canonical Process Trees directly
- bypass validation or approval gates

## Important References

Read these before executing command behavior:

```text
.ai-sdlc/process-trees/default.md
.ai-sdlc/framework/SKILL_INTAKE_COMPILER.md
.ai-sdlc/framework/SKILL_PROPOSAL_MODEL.md
.ai-sdlc/framework/PROMPT_IMMUTABILITY.md
.ai-sdlc/execution/VALIDATION_PROTOCOL.md
```

## Manifest Boundary

This is a human- and agent-readable manifest. It is not yet a machine-readable
schema-backed command registry.

Future versions may add structured command metadata after command manifest
schema governance is defined.
