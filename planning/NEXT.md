# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/schema-validate/validate-json.sh` now skips local virtualenv noise from the `tools/validate-json-ignore-venv` cycle.

## Current Recommendation

Continue by adding a release artifact provenance mini-template to macOS folders.

Reason: release folders link manifests, but they still lack a tiny copyable provenance block for future reduced artifacts.

## Next Branch

```text
macos/release-provenance-mini-template
```

## Session Goal

Update release folder notes:

```text
macos/15.6/artifacts.md
macos/16.0/artifacts.md
```

## Research Question

What minimal provenance fields should every release artifact index expose?

## Target Output

A bounded release index update that captures:

- Source path or command.
- Artifact state.
- Redaction policy.
- Output path.
- Validation command.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `macos/15.6/artifacts.md` contains a provenance mini-template.
- `macos/16.0/artifacts.md` contains a provenance mini-template.
- No unsupported driver claims are made.
- The template remains clearly non-evidence until populated.

## Follow-Up Queue

1. Add a release diff fixture generated from missing-artifact manifests.
2. Add release diff readiness checks to optional validator docs.
3. Add acquisition manifest README links to release readiness guidance.
