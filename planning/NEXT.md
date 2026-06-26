# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/schema-validate/README.md` was updated with acquisition manifest validation coverage in the `tools/acquisition-manifest-validation-doc` cycle.

## Current Recommendation

Continue by adding a macOS 15.6 artifact index stub.

Reason: the 15.6 metadata stub exists, but it needs an artifact index placeholder.

## Next Branch

```text
macos/15.6-artifact-index
```

## Session Goal

Create the next experiment note:

```text
macos/15.6/artifacts.md
```

## Research Question

What is the smallest artifact index stub for macOS 15.6?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Artifact categories.
- Current acquisition status.
- Missing metadata.
- Links to acquisition rules.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 metadata stub.
- Existing acquisition rules.
- Existing release diff plan.

## Definition Of Done

Done means:

- `macos/15.6/artifacts.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Stub avoids unsupported release claims.

## Follow-Up Queue

1. Add macOS 16.0 artifact index stub.
2. Add release acquisition manifest README.
3. Add 15.6 acquisition manifest fixture.
