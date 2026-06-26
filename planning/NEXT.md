# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/schemas/release-acquisition-manifest.schema.json` was created in the `datasets/schemas/release-acquisition-manifest` cycle.

## Current Recommendation

Continue by adding a macOS 15.6 metadata stub.

Reason: release diff planning references `macos/15.6/`, but that folder has no metadata note yet.

## Next Branch

```text
macos/15.6-metadata-stub
```

## Session Goal

Create the next experiment note:

```text
macos/15.6/README.md
```

## Research Question

What is the smallest metadata stub for macOS 15.6?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Known folder purpose.
- Current acquisition status.
- Missing metadata.
- Stop rules before claiming facts.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing release diff plan.
- Existing acquisition rules.
- Existing macOS folder structure.

## Definition Of Done

Done means:

- `macos/15.6/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Stub does not claim unavailable release facts.

## Follow-Up Queue

1. Add generated release diff fixture.
2. Add acquisition manifest fixture.
3. Add acquisition manifest schema validation pair.
