# Release Diff Fixture

## Summary

This directory contains release diff fixtures. They demonstrate schema shape and unresolved states without claiming real release differences.

## Fixtures

- `release-diff.fixture.json`
- `missing-artifacts-15.6-to-16.0.fixture.json`
- `datasets/fixtures/generated-release-diff/generated-release-diff.fixture.json`

## Missing-Artifact Fixture

`missing-artifacts-15.6-to-16.0.fixture.json` records that comparable reduced inputs are missing for the 15.6 to 16.0 pair.

It uses `state: "unresolved"` because the current evidence supports only this conclusion:

- release folders exist;
- acquisition manifests exist;
- artifact indexes mark comparable inputs as not acquired;
- no raw artifacts are compared.

`unresolved` does not mean added, removed, changed, or unchanged. It means the fixture is preserving uncertainty instead of inventing a release difference.

## Local Syntax Check

```sh
.venv/bin/python tools/schema-validate/validate-known-schemas.py
```

## Boundaries

- This fixture does not claim a real release difference.
- This fixture does not compare raw artifacts.
- Missing-artifact fixtures are evidence-bound placeholders.
- Use `docs/guidelines/release-diff-input-readiness.md` before promoting any release diff as evidence.

## Next Work

- Add artifact-backed reduced datasets before interpreting release changes.
- Keep missing inputs represented as `unresolved`.
