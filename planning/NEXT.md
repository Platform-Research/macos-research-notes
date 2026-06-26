# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/fixtures/acquisition-manifest/README.md` and `acquisition-manifest.fixture.json` were created in the `datasets/fixtures/acquisition-manifest` cycle.

## Current Recommendation

Continue by adding an acquisition manifest schema validation pair.

Reason: the acquisition manifest fixture exists but optional validation does not yet cover it.

## Next Branch

```text
tools/validate-acquisition-manifest
```

## Session Goal

Create the next experiment note:

```text
tools/schema-validate/README.md
```

## Research Question

What is the smallest validation update for acquisition manifest fixtures?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Add acquisition manifest fixture to known schema validation.
- Run syntax validation.
- Run optional jsonschema validation.
- Document coverage.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing acquisition manifest schema and fixture.
- Existing optional schema validator.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `tools/schema-validate/README.md` documents acquisition manifest validation.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Optional validator passes locally.

## Follow-Up Queue

1. Add macOS 16.0 metadata stub.
2. Add generated release diff validation pair.
3. Add release diff prototype validation pair.
