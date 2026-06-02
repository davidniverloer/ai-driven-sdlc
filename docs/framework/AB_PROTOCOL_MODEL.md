# A/B Protocol Model

## Purpose

A/B Protocol Recognition exists so ai-driven-sdlc can classify structured prompt
and protocol submissions without altering them.

A/B protocols are first-class citizens because much of the expertise entering
the framework arrives as paired reasoning: one prompt discovers, interrogates,
or stress-tests; another prompt synthesizes, formalizes, or freezes output.
Recognizing that relationship is necessary for accurate packaging, proposal
generation, repository mapping, and Process Tree mapping.

Protocol structure must be preserved because ordering, wording, and
relationships carry author intent. The model classifies and packages protocols.
It does not improve, rewrite, normalize, merge, or reinterpret them.

## Protocol Categories

### Single Prompt

A standalone prompt that expresses one instruction, task, analysis request,
generation request, rubric, or capability idea.

### A/B Protocol

A paired protocol containing a discovery-oriented A prompt and a
synthesis-oriented B prompt. The pair is meaningful as a relationship, not just
as two independent prompts.

### Multi-Step Protocol

More than two ordered prompts that define a sequence of investigation,
reasoning, generation, validation, or governance steps.

### Workflow Protocol

A sequence intended to orchestrate multiple skills, artifacts, gates, handoffs,
or Process Tree nodes.

### Capability Protocol

A protocol defining an entire reusable capability, including purpose, inputs,
outputs, reasoning behavior, constraints, validation expectations, or promotion
criteria.

## A Prompt Characteristics

A prompts are commonly discovery-oriented. Typical characteristics include:

- discovery
- interrogation
- challenge
- stress-test
- alignment
- clarification
- investigation

The framework must recognize these patterns while preserving the original prompt
verbatim.

A prompts often ask an agent to expose assumptions, ask questions, challenge
logic, identify ambiguity, map context, or investigate a domain before synthesis
occurs.

## B Prompt Characteristics

B prompts are commonly synthesis-oriented. Typical characteristics include:

- synthesis
- compilation
- generation
- specification
- formalization
- freezing
- authoritative output

The framework must recognize these patterns while preserving the original prompt
verbatim.

B prompts often ask an agent to produce the final artifact, formalize a protocol,
compile findings, generate a specification, or freeze an output for downstream
use.

## A/B Pair Rules

A and B prompts are related by sequence and intent.

The A prompt usually prepares, interrogates, or discovers. The B prompt usually
synthesizes, formalizes, or produces an authoritative output based on the
context established by A.

A/B pairs must be packaged together. They must preserve:

- ordering
- wording
- structure
- relationships

In skill proposals, an A/B protocol should be represented as a preserved source
pair with separate metadata for:

- A prompt role
- B prompt role
- relationship summary
- proposed capability
- proposed repository mapping
- proposed Process Tree mapping
- fidelity validation status

The metadata may describe the pair, but it must not modify either prompt.

## Protocol Classification Rules

Incoming content should be classified as:

**single_prompt**

Use when the submission contains one standalone prompt or instruction and does
not define an ordered protocol relationship.

**ab_protocol**

Use when the submission contains two related prompts where one is primarily
discovery, interrogation, challenge, alignment, clarification, or investigation,
and the other is primarily synthesis, generation, specification, formalization,
freezing, or authoritative output.

**multi_step_protocol**

Use when the submission contains more than two ordered prompts or steps and the
ordering is meaningful.

**workflow_protocol**

Use when the submission orchestrates multiple skills, workflows, artifacts,
approval gates, handoffs, or Process Tree nodes.

**capability_protocol**

Use when the submission describes a reusable capability as a whole rather than a
single prompt or procedural sequence.

If multiple classifications appear plausible, preserve the source material and
record classification ambiguity in metadata instead of rewriting the protocol.

## Protocol Packaging Rules

**Single Prompt**

Represent as one immutable source prompt plus classification metadata.

Expected package shape:

```text
original/prompt.md
metadata/classification.md
proposal/
```

**A/B Protocol**

Represent as one immutable pair with explicit A and B roles.

Expected package shape:

```text
original/a.md
original/b.md
metadata/ab-relationship.md
metadata/classification.md
proposal/
```

**Multi-Step Protocol**

Represent as ordered immutable prompt steps.

Expected package shape:

```text
original/step-001.md
original/step-002.md
original/step-003.md
metadata/sequence.md
metadata/classification.md
proposal/
```

**Workflow Protocol**

Represent as ordered immutable workflow instructions plus workflow mapping
metadata.

Expected package shape:

```text
original/workflow-protocol.md
metadata/workflow-mapping.md
metadata/classification.md
proposal/
```

**Capability Protocol**

Represent as immutable capability source material plus capability mapping
metadata.

Expected package shape:

```text
original/capability-protocol.md
metadata/capability-mapping.md
metadata/classification.md
proposal/
```

## Repository Mapping Implications

Protocol classification influences mapping, but it does not make final placement
decisions by itself.

Classification may inform:

- capability selection
- proposed skill location
- whether the protocol maps to `skills/`, `workflows/`, or proposal storage
- whether Process Tree placement is required
- whether existing skills or workflows should be compared for similarity
- whether approval gates or artifact dependencies may be affected

Final placement still requires repository mapping, Process Tree mapping,
validation, and approval according to framework governance.

## Prompt Fidelity Requirements

Protocol recognition must never:

- rewrite prompts
- optimize prompts
- improve prompts
- reinterpret prompts

The model may only classify and package.

Prompt fidelity requirements from `docs/framework/PROMPT_IMMUTABILITY.md` apply
to every protocol category. Recognition metadata must describe source prompts
without altering them.
