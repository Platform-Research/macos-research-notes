# Next Work

Use this file to choose the next focused session.

## Last Completed

`docs/guidelines/reduced-release-acquisition-checklist-example.md` was created in the `docs/reduced-release-acquisition-checklist-example` cycle.

## Current Recommendation

Continue by adding a release diff input readiness note.

Reason: acquisition manifests and checklist guidance exist, but the release diff workflow still needs an explicit readiness gate before comparing releases.

## Next Branch

```text
docs/release-diff-input-readiness
```

## Session Goal

Create the readiness note:

```text
docs/guidelines/release-diff-input-readiness.md
```

## Research Question

What evidence is required before treating two releases as diff-ready?

## Target Output

A bounded readiness note that captures:

- Required manifest states.
- Required reduced datasets.
- Schema validation status.
- Missing artifact handling.
- Stop conditions before diffing.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `docs/guidelines/release-diff-input-readiness.md` exists.
- It does not require raw artifacts in git.
- No unsupported driver claims are made.
- It links release acquisition, validation, and diff schemas.

## Follow-Up Queue

1. Add syntax validator ignore rules for local virtualenvs.
2. Add release artifact provenance mini-template to macOS folders.
3. Add a release diff fixture generated from missing-artifact manifests.
