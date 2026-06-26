# Next Work

Use this file to choose the next focused session.

## Last Completed

`macos/16.0/artifacts.md` was created in the `macos/16.0-artifact-index` cycle.

## Current Recommendation

Continue by adding a release acquisition manifest README.

Reason: acquisition manifest schema and fixture exist, but there is no README explaining the fixture directory.

## Next Branch

```text
datasets/fixtures/acquisition-manifest-readme
```

## Session Goal

Create the next experiment note:

```text
datasets/fixtures/acquisition-manifest/README.md
```

## Research Question

What is the smallest README update for acquisition manifest fixtures?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Schema link.
- Fixture purpose.
- Validation commands.
- Regeneration boundaries.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing acquisition manifest schema and fixture.
- Existing validation tooling.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `datasets/fixtures/acquisition-manifest/README.md` documents schema and validation.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- README avoids implying real acquisition.

## Follow-Up Queue

1. Add 15.6 acquisition manifest fixture.
2. Add 16.0 acquisition manifest fixture.
3. Add release manifest validation examples.
