# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/fixtures/provider-class-join/README.md` and `provider-class-join.fixture.json` were created in the `datasets/fixtures/provider-class-join` cycle.

## Current Recommendation

Continue by adding a release-specific metadata index.

Reason: the project now has tools and fixtures, but release-specific organization needs an index before broader macOS comparisons.

## Next Branch

```text
macos/release-metadata-index
```

## Session Goal

Create the next experiment note:

```text
macos/README.md
```

## Research Question

What is the smallest release metadata index for current macOS research?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Known local runtime version and build.
- Existing release folders.
- Which metadata belongs under `macos/<version>/`.
- Links to current tools and schemas.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing folders: `macos/15.6/`, `macos/16.0/`.
- Existing tools and schemas.
- Existing workflow rules.

## Definition Of Done

Done means:

- `macos/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- The index does not claim unsupported release facts.

## Follow-Up Queue

1. Add helper-output fixture with parsed PCI match tokens.
2. Add optional dependency lock strategy.
3. Add macOS 26.5.1 local runtime note.
