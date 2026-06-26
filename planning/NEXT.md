# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/fixtures/parsed-pci-matches/README.md` and `parsed-pci-matches.fixture.json` were created in the `datasets/fixtures/parsed-pci-matches` cycle.

## Current Recommendation

Continue by adding an optional dependency lock strategy.

Reason: optional `jsonschema` validation now works through `.venv`, but dependency version policy is not captured.

## Next Branch

```text
docs/optional-dependency-lock-strategy
```

## Session Goal

Create the next experiment note:

```text
docs/guidelines/optional-dependencies.md
```

## Research Question

What is the smallest optional dependency lock strategy for research tooling?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Which optional dependencies are allowed.
- How to record versions.
- When to avoid committing lockfiles.
- How to reproduce `.venv` tooling.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing jsonschema validation tooling.
- Existing validation policy.
- Existing workflow rules.

## Definition Of Done

Done means:

- `docs/guidelines/optional-dependencies.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- The strategy does not require network access for ordinary cycles.

## Follow-Up Queue

1. Add macOS 26.5.1 local runtime note.
2. Add release acquisition rules.
3. Add parsed PCI match fixture validation pair.
