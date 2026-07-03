# Commands

This directory documents official ai-driven-sdlc commands and command history.

Official commands are user-facing trigger phrases that activate governed
framework workflows. Command history files record repository initialization and
framework evolution work.

When installed into a repository, command discovery starts at:

```text
.ai-sdlc/commands/manifest.md
```

The source manifest lives at:

```text
docs/commands/manifest.md
```

## Official Commands

### /skill-create

Trigger phrase:

```text
/skill-create
```

Specification:

```text
docs/commands/skill-create.md
```

Purpose: explicitly enter Skill Intake Mode and generate a governed skill
proposal package from submitted prompts or protocols.

Activation rule: `/skill-create` must be the first non-empty line.
Natural-language trigger detection is forbidden.

Boundary: proposal generation only. The command must not create canonical
skills, promote skills, modify approved skills, modify approved workflows,
modify canonical Process Trees, bypass validation, or bypass governance.

### Compile the Next Protocol Into a Skill

Trigger phrase:

```text
Compile the next protocol into an ai-driven-sdlc skill.
```

Specification:

```text
docs/commands/compile-next-protocol-into-skill.md
```

Purpose: enter Skill Intake Mode and generate a governed skill proposal package
from submitted prompts or protocols.

Boundary: proposal generation only. The command must not create canonical
skills, promote skills, modify approved skills, modify approved workflows, or
modify canonical Process Trees.

### Create a Process Tree

Trigger phrase pattern:

```text
Create an ai-driven-sdlc process tree named: <name>
```

Specification:

```text
docs/commands/create-process-tree.md
```

Purpose: define a governed Process Tree creation request.

## Installation Boundary

This index remains the source documentation index. The installed command
manifest is a lightweight Markdown discovery file, not yet a schema-backed
command registry.
