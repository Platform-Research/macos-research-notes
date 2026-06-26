# Next Work

Use this file to choose the next focused session.

## Last Completed

`requirements-dev.txt` was created in the `tools/requirements-dev` cycle.

## Current Recommendation

Continue by adding a macOS release diff planning note.

Reason: release metadata and acquisition rules exist; next step is a focused plan for comparing release metadata.

## Next Branch

```text
planning/macos-release-diff
```

## Session Goal

Create the next experiment note:

```text
planning/macos-release-diff.md
```

## Research Question

What is the smallest plan for macOS release metadata diffs?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Inputs and outputs.
- First release pair.
- Required schemas and fixtures.
- Stop rules for raw artifacts.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing release acquisition rules.
- Existing macOS metadata index.
- Existing tools and schemas.

## Definition Of Done

Done means:

- `planning/macos-release-diff.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Plan avoids unsupported release claims.

## Follow-Up Queue

1. Add artifact provenance to macOS 26.5.1 index.
2. Add requirements-dev usage to optional dependencies doc.
3. Add first release diff fixture schema.
