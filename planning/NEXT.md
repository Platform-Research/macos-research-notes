# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/release-diff/README.md` and `tools/release-diff/release_diff.py` were created in the `tools/release-diff-prototype` cycle.

## Current Recommendation

Continue by adding a release acquisition manifest schema.

Reason: acquisition rules exist, but structured acquisition manifests do not yet have a schema.

## Next Branch

```text
datasets/schemas/release-acquisition-manifest
```

## Session Goal

Create the next experiment note:

```text
datasets/schemas/release-acquisition-manifest.schema.json
```

## Research Question

What is the smallest schema for release acquisition manifests?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Source references.
- Acquisition date.
- Artifact state.
- Redaction policy.
- Derived output paths.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing acquisition rules.
- Existing provenance template.
- Existing macOS metadata index.

## Definition Of Done

Done means:

- `datasets/schemas/release-acquisition-manifest.schema.json` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- JSON syntax validates locally.

## Follow-Up Queue

1. Add macOS 15.6 metadata stub.
2. Add generated release diff fixture.
3. Add acquisition manifest fixture.
