# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/fixtures/acquisition-manifest/15.6.fixture.json` was created in the `datasets/fixtures/acquisition-manifest-15.6` cycle.

## Current Recommendation

Continue by adding a 16.0 acquisition manifest fixture.

Reason: 15.6 now has an acquisition manifest fixture; 16.0 needs the same missing-artifact baseline.

## Next Branch

```text
datasets/fixtures/acquisition-manifest-16.0
```

## Session Goal

Create the next experiment note:

```text
datasets/fixtures/acquisition-manifest/16.0.fixture.json
```

## Research Question

What is the smallest acquisition manifest fixture for macOS 16.0?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Release value.
- Missing artifact states.
- Redaction policy.
- Syntax validation.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `datasets/fixtures/acquisition-manifest/16.0.fixture.json` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Fixture does not claim acquired artifacts.

## Follow-Up Queue

1. Add release manifest validation examples.
2. Add 15.6/16.0 manifests to optional validator.
3. Link release folders to acquisition manifest fixtures.
