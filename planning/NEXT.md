# Next Work

Use this file to choose the next focused session.

## Last Completed

`docs/guidelines/requirements-dev.md` was created in the `docs/requirements-dev-proposal` cycle.

## Current Recommendation

Continue by adding a macOS 26.5.1 artifact index stub.

Reason: the local runtime note exists, but the release folder still needs an artifact index placeholder.

## Next Branch

```text
macos/26.5.1-artifact-index
```

## Session Goal

Create the next experiment note:

```text
macos/26.5.1/artifacts.md
```

## Research Question

What is the smallest artifact index stub for macOS 26.5.1?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Artifact categories.
- Current local artifacts used.
- Acquisition status.
- Links to tools and datasets.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 26.5.1 runtime note.
- Existing release acquisition rules.
- Existing tools and datasets.

## Definition Of Done

Done means:

- `macos/26.5.1/artifacts.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Stub does not claim unavailable artifacts.

## Follow-Up Queue

1. Add release provenance template.
2. Add provider-class join fixture validation pair.
3. Add requirements-dev.txt after adoption decision.
