# Next Work

Use this file to choose the next focused session.

## Last Completed

`planning/macos-release-diff.md` was created in the `planning/macos-release-diff` cycle.

## Current Recommendation

Continue by adding artifact provenance to the macOS 26.5.1 index.

Reason: the artifact index exists, but it should include explicit provenance structure.

## Next Branch

```text
macos/26.5.1-artifact-provenance
```

## Session Goal

Create the next experiment note:

```text
macos/26.5.1/artifacts.md
```

## Research Question

What is the smallest provenance update for the macOS 26.5.1 artifact index?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Provenance section.
- Current source commands.
- Raw/reduced/derived status.
- Redaction policy.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing provenance template.
- Existing macOS 26.5.1 artifact index.
- Existing release acquisition rules.

## Definition Of Done

Done means:

- `macos/26.5.1/artifacts.md` has a provenance section.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Provenance remains host-specific and bounded.

## Follow-Up Queue

1. Add requirements-dev usage to optional dependencies doc.
2. Add first release diff fixture schema.
3. Add acquisition checklist.
