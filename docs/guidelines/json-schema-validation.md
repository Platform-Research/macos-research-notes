# JSON Schema Validation

## Purpose

Darwin Collective stores schemas, examples, fixtures, and generated helper outputs. Validation should prevent malformed records without forcing every local research session to install extra tooling.

## Current Policy

Use syntax validation by default:

```sh
tools/schema-validate/validate-json.sh
```

This command is required before committing changes under:

- `datasets/schemas/`
- `datasets/examples/`
- `datasets/fixtures/`
- helper modes that emit JSON

## Full Schema Validation Policy

Full JSON Schema validation is allowed when one of these is true:

- a validator is committed as project tooling;
- a system-provided validator is documented and available without network access;
- an optional dependency is explicitly added with installation instructions and lockfile or version policy.

Do not make ordinary research cycles depend on a network install just to validate JSON.

## Validation Scope

When full validation is added, it should cover:

- every file in `datasets/schemas/` for JSON syntax;
- every file in `datasets/examples/` against its declared schema;
- every file in `datasets/fixtures/` against its declared schema;
- representative helper output samples.

## Failure Rules

Stop and fix validation failures when:

- JSON syntax is invalid;
- a fixture no longer matches its schema;
- redaction metadata is missing;
- raw local values appear in a committed fixture;
- helper output changes shape without a schema or README update.

## Boundaries

Validation does not prove:

- driver attachment;
- correctness of a hardware match;
- safety of opening a user client;
- cross-release stability;
- completeness of an inventory.

## Next Implementation Step

Add schema validation only after choosing a local dependency strategy. Until then, keep `tools/schema-validate/validate-json.sh` as the required baseline.
