# Lifecycle Model

Every governed asset moves through the same lifecycle states. The depth of
documentation and validation should match the asset's risk and maturity.

## Lifecycle States

**Proposal**

The asset need is identified. The proposal should name the asset type, purpose,
expected consumers, expected dependencies, and likely validation requirements.

**Creation**

The first coherent version of the asset is introduced. Creation should be
minimal, documented, and aligned with the relevant model.

**Validation**

The asset is checked against the validation protocol. References, contracts,
compatibility expectations, and documentation must be reviewed before
publication.

**Publication**

The asset is considered available for framework use. Publication requires a
clear contract and validation evidence.

**Maintenance**

The asset evolves through compatible fixes, clarifications, and additive
improvements. Maintenance must preserve traceability.

**Deprecation**

The asset is being retired, replaced, or removed. Deprecation requires a reason,
replacement guidance when applicable, affected-dependency review, and migration
notes for published contracts.

## Asset-Specific Expectations

**Skills**

Skills must not publish until purpose, inputs, outputs, dependencies, lifecycle
state, and synthesis behavior are documented.

**Workflows**

Workflows must not publish until every referenced skill, schema, and artifact
handoff is validated.

**Schemas**

Schemas must not publish until compatibility intent, versioning, required
fields, optional fields, and breaking-change handling are clear.

**Adapters**

Adapters must not publish until optionality, external dependencies, and isolation
from core framework semantics are validated.

**Installation Assets**

Installation assets must not publish until safe install, upgrade, backup,
manifest, and removal behavior are defined.

**Governance Assets**

Governance assets must not change materially without checking consistency across
`AGENTS.md`, `docs/execution/`, and framework model documents.

**Documentation Assets**

Documentation assets must remain consistent with the governed assets they
describe and must preserve discoverability from nearby README files.
