# First Skill Proposal Example

This example shows the expected output shape for a small `/skill-create`
proposal.

It is not a canonical skill. It is a reference package that demonstrates how an
agent should preserve source prompts, classify the submission, map repository
placement, assess Process impact, and record validation status.

## Example Input

```text
/skill-create

Act as a planning reviewer for a small software project. Read a short project
idea and produce five clarifying questions, three likely risks, and one
recommended next planning artifact. Do not implement code.
```

## Example Output Shape

```text
proposal.yaml
classification.md
repository-placement.md
process-impact.md
similarity-analysis.md
approval-checklist.md
validation-report.md
source/
```

Use this example to compare whether a generated proposal is structurally
complete before considering promotion.
