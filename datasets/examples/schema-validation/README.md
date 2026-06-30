# Schema Validation Examples

## Summary

This directory contains small JSON examples for the current macOS Research Notes schemas. They are not host inventories; they are fixtures for checking shape, redaction metadata, and future validation behavior.

## Examples

- `ioreg-user-client-key-counts.example.json`
- `kext-personality.example.json`
- `registry-personality-join.example.json`

## Local Syntax Checks

```sh
python3 -m json.tool datasets/examples/schema-validation/ioreg-user-client-key-counts.example.json >/dev/null
python3 -m json.tool datasets/examples/schema-validation/kext-personality.example.json >/dev/null
python3 -m json.tool datasets/examples/schema-validation/registry-personality-join.example.json >/dev/null
```

## Boundaries

- These examples are intentionally tiny.
- They do not prove that a driver is loaded.
- They do not include raw registry or plist dumps.
- Counts and sample paths are illustrative and may differ per host.

## Next Work

- Add generated safe helper output fixtures.
- Add a candidate join fixture with a real normalized PCI ID.
- Add a schema validation script once a validator dependency policy exists.
