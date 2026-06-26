# Schema Validate Tool

## Summary

`validate-json.sh` is a dependency-free local syntax checker for JSON schemas, examples, and fixtures. It does not perform JSON Schema validation yet; it makes sure committed JSON files parse cleanly.

## Commands

Validate all JSON files in the repository:

```sh
tools/schema-validate/validate-json.sh
```

Validate a subtree:

```sh
tools/schema-validate/validate-json.sh datasets
```

Optionally validate known examples and fixtures against schemas:

```sh
python3 -m venv .venv
.venv/bin/python -m pip install jsonschema
.venv/bin/python tools/schema-validate/validate-known-schemas.py
```

Known validation pairs include IORegistry examples, kext personality examples, parsed PCI match fixtures, provider-class join fixtures, registry-personality join fixtures, static and generated release diff fixtures, and acquisition manifest fixtures.

## What It Checks

- JSON syntax for every `*.json` file under the selected root.
- Deterministic file ordering for easier review.
- Clear `ok` or `fail` output per file.

## What It Does Not Check Yet

- JSON Schema conformance.
- Cross-file references.
- Runtime helper output freshness.
- Sensitive-value policy beyond syntax.

## Optional Schema Validation Status

Checked local Python support:

```sh
python3 -c 'import jsonschema; print(jsonschema.__version__)'
```

Result: `jsonschema` is not installed in the default local Python environment, but validation works in a local `.venv` after installing `jsonschema`.

Per `docs/guidelines/json-schema-validation.md`, full validation remains optional unless the project chooses one of:

- commit a validator or validation script that has no external runtime dependency;
- document a system-provided validator; or
- add a locked optional dependency policy.

## Inferences

- A syntax-only gate is still useful because the repo now has multiple schemas and fixtures.
- Full JSON Schema validation is available through a local `.venv`, but remains optional.
- The required dependency-free baseline is still `validate-json.sh`.

## Next Work

- requirements-dev.txt after adoption decision.
- macOS release diff planning note.
- artifact provenance in macOS 26.5.1 index.
