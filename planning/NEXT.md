# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/schema-validate/validate-known-schemas.py` was updated to validate parsed PCI match fixtures in the `tools/validate-parsed-pci-fixture` cycle.

## Current Recommendation

Continue by adding a requirements-dev proposal.

Reason: optional validation now works, but the project has not captured a stable requirements proposal.

## Next Branch

```text
docs/requirements-dev-proposal
```

## Session Goal

Create the next experiment note:

```text
docs/guidelines/requirements-dev.md
```

## Research Question

What is the smallest development requirements proposal for optional tooling?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Proposed optional Python packages.
- Version capture approach.
- Install command.
- Reasons not to enforce yet.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing optional dependency policy.
- Existing jsonschema validation script.
- Existing `.venv` workflow.

## Definition Of Done

Done means:

- `docs/guidelines/requirements-dev.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Proposal does not force network access.

## Follow-Up Queue

1. Add macOS 26.5.1 artifact index stub.
2. Add release provenance template.
3. Add provider-class join fixture validation pair.
