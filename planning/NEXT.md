# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/ioreg-inventory/README.md`, `tools/ioreg-inventory/ioreg-inventory.sh`, and `datasets/schemas/ioreg-inventory.schema.json` were updated with normalized PCI JSON support in the `tools/ioreg-normalized-pci-json` cycle.

## Current Recommendation

Continue with the full JSON Schema validation policy.

Reason: syntax validation exists, but full schema validation still needs a dependency and policy decision.

## Next Branch

```text
docs/json-schema-validation-policy
```

## Session Goal

Create the next experiment note:

```text
docs/guidelines/json-schema-validation.md
```

## Research Question

What is the project policy for full JSON Schema validation?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Commands tested.
- Whether to use vendored tooling, system tooling, or optional Python packages.
- Which schemas and fixtures should be validated.
- What stays as syntax-only validation for now.
- When validation should run in the workflow.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing schemas, examples, fixtures, and syntax validator.
- Existing workflow rules.
- Existing helper outputs.

## Definition Of Done

Done means:

- `docs/guidelines/json-schema-validation.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- The policy defines the next implementable validation step.

## Follow-Up Queue

1. Add ancestor topology JSON mode.
2. Implement PCI match-string parser.
3. Add a schema validation implementation if dependency policy allows.
