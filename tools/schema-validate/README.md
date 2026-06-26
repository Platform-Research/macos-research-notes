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

## Inferences

- A syntax-only gate is still useful because the repo now has multiple schemas and fixtures.
- Full JSON Schema validation should wait until the project chooses whether to vendor a validator, use a system tool, or require Python packages.

## Next Work

- Registry ancestor capture experiment.
- PCI match-string parser experiment.
- Normalized PCI JSON output.
