# Release Diff Fixture

## Summary

This directory contains a minimal release diff fixture. It demonstrates the `unresolved` state for release folders that exist before comparable reduced metadata has been acquired.

## Fixture

- `release-diff.fixture.json`

## Local Syntax Check

```sh
python3 -m json.tool datasets/fixtures/release-diff/release-diff.fixture.json >/dev/null
```

## Boundaries

- This fixture does not claim a real release difference.
- This fixture does not compare raw artifacts.
- This fixture uses placeholder release folders only.

## Next Work

- Add release diff schema to optional validator.
- Add release diff fixture validation pair.
- Add first generated release diff prototype.
