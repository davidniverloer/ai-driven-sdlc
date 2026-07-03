# Skill Package Template

This directory describes the future canonical skill package template.

It does not contain actual skill templates yet. It defines the required
structure that future templates must represent once template generation is
approved.

## Future Template Structure

Future canonical skill package templates must represent:

```text
skill.yaml
README.md
output-contract.md
source/
examples/
```

## Future Template Requirements

The future template must support:

- required `skill.yaml` metadata
- README contract sections
- output contract sections
- immutable source prompt placement
- example input and output requirements
- Process relationship references
- repository mapping references
- registry compatibility
- lifecycle state tracking
- validation expectations

## Boundary

This directory does not implement a skill package, instantiate a skill, define a
schema, or generate application code.

The authoritative contract is
`docs/framework/SKILL_PACKAGE_CONTRACT.md`.
