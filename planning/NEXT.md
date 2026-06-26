# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/fixtures/generated-release-diff/README.md` and `generated-release-diff.fixture.json` were created in the `datasets/fixtures/generated-release-diff` cycle.

## Current Recommendation

Continue by adding an acquisition manifest fixture.

Reason: the acquisition manifest schema exists but has no example fixture.

## Next Branch

```text
datasets/fixtures/acquisition-manifest
```

## Session Goal

Create the next experiment note:

```text
datasets/fixtures/acquisition-manifest/README.md
```

## Research Question

What is the smallest acquisition manifest fixture?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- One missing/raw/reduced artifact example.
- Source and redaction fields.
- Syntax validation command.
- Boundaries around placeholder data.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing acquisition manifest schema.
- Existing release acquisition rules.
- Existing provenance template.

## Definition Of Done

Done means:

- `datasets/fixtures/acquisition-manifest/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Fixture parses locally.

## Follow-Up Queue

1. Add acquisition manifest schema validation pair.
2. Add macOS 16.0 metadata stub.
3. Add generated release diff validation pair.
