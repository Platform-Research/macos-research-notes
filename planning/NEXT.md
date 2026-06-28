# Next Work

Use this file to choose the next focused session.

## Last Completed

`docs/guidelines/release-diff-input-readiness.md` was created in the `docs/release-diff-input-readiness` cycle.

## Current Recommendation

Continue by adding syntax validator ignore rules for local virtualenvs.

Reason: `tools/schema-validate/validate-json.sh` currently walks `.venv`, which makes local validation noisy when optional dependencies are installed.

## Next Branch

```text
tools/validate-json-ignore-venv
```

## Session Goal

Update the syntax validator:

```text
tools/schema-validate/validate-json.sh
```

## Research Question

How should JSON syntax validation avoid local virtualenv noise?

## Target Output

A bounded tooling update that captures:

- Ignore `.venv`.
- Keep deterministic ordering.
- Preserve subtree validation.
- Document the exclusion.
- Keep schema validation separate.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `tools/schema-validate/validate-json.sh` does not scan `.venv` during repo-wide validation.
- The syntax validator still accepts explicit subtree arguments.
- No unsupported driver claims are made.
- `tools/schema-validate/README.md` documents the exclusion.

## Follow-Up Queue

1. Add release artifact provenance mini-template to macOS folders.
2. Add a release diff fixture generated from missing-artifact manifests.
3. Add release diff readiness checks to optional validator docs.
