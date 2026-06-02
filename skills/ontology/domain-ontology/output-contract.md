# Output Contract

## Expected Outputs

The skill must produce `A-004 Canonical Domain Ontology`.

The ontology should include:

- core domain entities
- resources and nouns
- mutually exclusive definitions
- actor profiles
- external systems crossing the system boundary
- logical relationships
- cardinal relationships
- universal business invariants
- Synonym Blacklist

## Artifact Expectations

The output artifact must distinguish:

- canonical terms
- explicitly banned alternate terms
- entity definitions
- resource definitions
- actor definitions
- external system boundaries
- relationships
- invariants
- unresolved terminology questions

The Synonym Blacklist must be treated as a drift-prevention artifact, not as a
style preference.

## Validation Expectations

Validation should confirm:

- source prompts remain verbatim under `source/`
- canonical definitions are mutually exclusive where required
- vague or overlapping concepts are challenged before final ontology synthesis
- external systems and actor profiles are explicit
- relationships and cardinality are documented where known
- business invariants are stated as universal constraints
- synonym drift risks are captured in the Synonym Blacklist
- unresolved terminology questions remain visible instead of being hidden
