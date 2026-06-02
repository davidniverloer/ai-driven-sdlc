# Risk Register

This register tracks risks that could compromise ai-driven-sdlc as an
agent-agnostic SDLC framework.

| Risk | Category | Impact | Mitigation | Status |
| --- | --- | --- | --- | --- |
| Vendor lock-in | Architecture | Core framework becomes dependent on one AI vendor, editor, or runtime. | Keep core assets agent-agnostic; isolate optional integrations in adapters. | Active |
| Skill fragmentation | Skill evolution | Skills duplicate behavior, overlap confusingly, or become phase-specific. | Group skills by capability; require clear purpose, inputs, outputs, and contracts. | Active |
| Workflow drift | Workflow evolution | Workflows reference missing skills or diverge from documented orchestration rules. | Validate references, dependency chains, and artifact handoffs before publication. | Active |
| Schema drift | Schema evolution | Automation relies on undocumented or incompatible contracts. | Define schemas before automation depends on them; track compatibility and versioning. | Active |
| Installation instability | Installation evolution | Installation, upgrades, or removal damage user repositories. | Require preview, backup, conservative writes, manifests, and safe removal rules. | Active |
| Governance erosion | Governance | Agents bypass decisions, risks, validation, or command history. | Treat `AGENTS.md` and `docs/execution/` as protected assets. | Active |
| Backward incompatibility | Compatibility | Published assets break downstream workflows or installed repositories. | Record breaking changes, require migration notes, and validate dependent assets. | Active |
| Documentation inconsistency | Documentation | Framework behavior becomes difficult to understand or trust. | Update nearby documentation with structural changes; validate discoverability. | Active |
| Adapter leakage | Adapter evolution | Optional vendor adapters influence core framework contracts. | Keep adapters outside core contracts and require portable core behavior. | Active |
| Over-engineering | Adoption | Framework becomes too complex before real workflows need it. | Prefer minimal durable contracts and additive evolution. | Active |
