# Next Work

Use this file to choose the next focused session.

## Last Completed

`macos/26.5.1/README.md` was created in the `macos/26.5.1-local-runtime` cycle.

## Current Recommendation

Continue by adding release acquisition rules.

Reason: release folders exist, but the project needs rules for what can be acquired and committed.

## Next Branch

```text
docs/release-acquisition-rules
```

## Session Goal

Create the next experiment note:

```text
docs/guidelines/release-acquisition.md
```

## Research Question

What are the minimum safe rules for macOS release artifact acquisition?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Allowed acquisition locations.
- What goes in `downloads/`, `macos/`, and `datasets/`.
- Commit rules for raw artifacts.
- Redaction and provenance requirements.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing workflow rules.
- Existing macOS metadata index.
- Existing datasets and fixture policies.

## Definition Of Done

Done means:

- `docs/guidelines/release-acquisition.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Rules avoid committing large raw artifacts.

## Follow-Up Queue

1. Add parsed PCI match fixture validation pair.
2. Add requirements-dev proposal.
3. Add macOS 26.5.1 artifact index stub.
