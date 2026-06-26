# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/fixtures/acquisition-manifest/README.md` was updated in the `datasets/fixtures/acquisition-manifest-readme` cycle.

## Current Recommendation

Continue by adding a 15.6 acquisition manifest fixture.

Reason: release folders now have artifact stubs, but 15.6 has no acquisition manifest fixture.

## Next Branch

```text
datasets/fixtures/acquisition-manifest-15.6
```

## Session Goal

Create the next experiment note:

```text
datasets/fixtures/acquisition-manifest/15.6.fixture.json
```

## Research Question

What is the smallest acquisition manifest fixture for macOS 15.6?

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

- `datasets/fixtures/acquisition-manifest/15.6.fixture.json` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Fixture does not claim acquired artifacts.

## Follow-Up Queue

1. Add 16.0 acquisition manifest fixture.
2. Add release manifest validation examples.
3. Add 15.6/16.0 manifests to optional validator.
