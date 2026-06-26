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

## What It Checks

- JSON syntax for every `*.json` file under the selected root.
- Deterministic file ordering for easier review.
- Clear `ok` or `fail` output per file.

## What It Does Not Check Yet

- JSON Schema conformance.
- Cross-file references.
- Runtime helper output freshness.
- Sensitive-value policy beyond syntax.

## Full Schema Validation Status

Checked local Python support:

```sh
python3 -c 'import jsonschema; print(jsonschema.__version__)'
```

Result: `jsonschema` is not installed in the default local Python environment.

Per `docs/guidelines/json-schema-validation.md`, do not download a validator during ordinary research cycles. Full JSON Schema validation remains blocked until the project chooses one of:

- commit a validator or validation script that has no external runtime dependency;
- document a system-provided validator;
- add an optional dependency with version policy and installation instructions.

## Inferences

- A syntax-only gate is still useful because the repo now has multiple schemas and fixtures.
- Full JSON Schema validation should wait until the project chooses whether to vendor a validator, use a system tool, or require Python packages.
- The current dependency-free improvement is to run this syntax checker before every schema, fixture, or JSON-emitting helper commit.

## Next Work

- Provider-class candidate join tool.
- Topology fixture from `topology-json`.
- Integrate PCI match parser into personality helper.
