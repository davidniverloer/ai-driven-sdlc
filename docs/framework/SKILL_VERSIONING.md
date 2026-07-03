# Skill Versioning

## Purpose

Skill versioning records the compatibility impact of changes to skills and skill
proposals. It gives agents a consistent way to reason about whether a change is
patch-level, minor, or major before promotion, registry update, Process
update, or downstream use.

This document defines the current governance boundary for skill version impact.
It does not implement automated version calculation.

## Version Format

Skill versions should use explicit numeric versions:

```text
major.minor.patch
```

Examples:

```text
0.1.0
1.0.0
1.2.3
```

Pre-canonical proposals may use `0.x` versions. Canonical skills should have a
stable Current Version recorded in the Skill Registry.

## Version Impact Source

Skill Diff categories are the source of version impact decisions.

Version impact must be derived from `docs/framework/SKILL_DIFF_MODEL.md` before
a skill proposal is promoted, a canonical skill is changed, or a replacement is
approved.

## Version Impact Levels

### Major

Major impact applies when a change breaks compatibility, changes the core
contract, replaces an existing canonical skill, changes artifact flow
incompatibly, or invalidates existing consumers.

### Minor

Minor impact applies when a change adds compatible capability, expands scope
without breaking existing consumers, or introduces optional compatible
dependencies or Process placements.

### Patch

Patch impact applies when a change clarifies documentation, corrects metadata,
repairs references, or moves files without affecting the skill contract or known
consumers.

### None

No version impact applies when the diff category is No Change and the report is
only retained as audit evidence.

## Governance Rules

- version impact must be recorded in promotion evidence
- registry Current Version must reflect canonical skill state
- breaking changes require explicit governance approval
- replacement decisions require version impact review
- Process impacts must be reviewed before version impact is finalized

## Relationship to Skill Diff

The Skill Diff Model determines the category of change and compatibility effect.
This document maps that analysis into version impact. If diff analysis and
version impact disagree, promotion must be deferred until the conflict is
resolved.
