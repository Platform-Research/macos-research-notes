# Release Diff Tool

## Summary

`release_diff.py` currently emits a minimal unresolved release diff document. It is a prototype for schema and workflow testing, not a real metadata comparison.

## Command

```sh
tools/release-diff/release_diff.py 15.6 16.0
```

## Smoke Check

```sh
tools/release-diff/release_diff.py 15.6 16.0 | python3 -m json.tool >/dev/null
```

## Boundaries

- Does not inspect raw artifacts.
- Does not compare actual release metadata.
- Does not claim added, removed, or changed records.
- Emits `unresolved` until comparable reduced metadata exists.

## Next Work

- Release acquisition manifest schema.
- macOS 15.6 metadata stub.
- Generated release diff fixture.
