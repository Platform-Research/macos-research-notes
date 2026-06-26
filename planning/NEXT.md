# Next Work

Use this file to choose the next focused session.

## Last Completed

`docs/guidelines/release-manifest-validation-examples.md` was created in the `docs/release-manifest-validation-examples` cycle.

## Current Recommendation

Continue by adding 15.6 and 16.0 acquisition manifests to the optional validator.

Reason: the validation note lists the release fixtures, but the schema validator still only checks the generic acquisition manifest fixture.

## Next Branch

```text
tools/validate-release-acquisition-fixtures
```

## Session Goal

Update the optional schema validator:

```text
tools/schema-validate/validate-known-schemas.py
```

## Research Question

How should the optional validator cover release-specific acquisition manifest fixtures?

## Target Output

A bounded validator update that captures:

- 15.6 fixture validation.
- 16.0 fixture validation.
- Existing generic fixture validation.
- A passing local validation command.
- README coverage if wording changes.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `tools/schema-validate/validate-known-schemas.py` validates the 15.6 and 16.0 fixtures.
- The validation command passes locally.
- No unsupported driver claims are made.
- Validation docs mention the release-specific fixtures.

## Follow-Up Queue

1. Link release folders to acquisition manifest fixtures.
2. Add a reduced release acquisition checklist example.
3. Add release diff input readiness note.
