# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/fixtures/release-diff/README.md` and `release-diff.fixture.json` were created in the `datasets/fixtures/release-diff` cycle.

## Current Recommendation

Continue by adding the release diff schema to the optional validator.

Reason: the release diff schema and fixture exist, but optional validation does not yet cover them.

## Next Branch

```text
tools/validate-release-diff
```

## Session Goal

Create the next experiment note:

```text
tools/schema-validate/README.md
```

## Research Question

What is the smallest validation update for release diff fixtures?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Add release diff fixture to known schema validation.
- Run syntax validation.
- Run optional jsonschema validation.
- Document coverage.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing release diff schema and fixture.
- Existing optional schema validator.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `tools/schema-validate/README.md` documents release diff validation.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Optional validator passes locally.

## Follow-Up Queue

1. Add first generated release diff prototype.
2. Add release acquisition manifest schema.
3. Add macOS 15.6 metadata stub.
