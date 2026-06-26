# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/schema-validate/validate-known-schemas.py` was updated to validate acquisition manifest fixtures in the `tools/validate-acquisition-manifest` cycle.

## Current Recommendation

Continue by adding a macOS 16.0 metadata stub.

Reason: release diff planning references `macos/16.0/`, but that folder has no metadata note yet.

## Next Branch

```text
macos/16.0-metadata-stub
```

## Session Goal

Create the next experiment note:

```text
macos/16.0/README.md
```

## Research Question

What is the smallest metadata stub for macOS 16.0?

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

- `macos/16.0/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Stub does not claim unavailable release facts.

## Follow-Up Queue

1. Add generated release diff validation pair.
2. Add release diff prototype validation pair.
3. Add release acquisition manifest validation to README.
