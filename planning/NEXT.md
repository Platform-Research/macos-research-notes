# Next Work

Use this file to choose the next focused session.

## Last Completed

`docs/guidelines/optional-dependencies.md` was created in the `docs/optional-dependency-lock-strategy` cycle.

## Current Recommendation

Continue by adding a macOS 26.5.1 local runtime note.

Reason: the local runtime version is used throughout experiments and should have a release-scoped note.

## Next Branch

```text
macos/26.5.1-local-runtime
```

## Session Goal

Create the next experiment note:

```text
macos/26.5.1/README.md
```

## Research Question

What is the smallest local runtime note for macOS 26.5.1?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Local product version and build.
- Darwin kernel string.
- Relationship to current experiments.
- Boundaries around host-specific facts.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing `macos/README.md`.
- Existing experiments and local runtime references.
- Existing workflow rules.

## Definition Of Done

Done means:

- `macos/26.5.1/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Note separates host facts from release facts.

## Follow-Up Queue

1. Add release acquisition rules.
2. Add parsed PCI match fixture validation pair.
3. Add requirements-dev proposal.
