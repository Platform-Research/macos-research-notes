# Next Work

Use this file to choose the next focused session.

## Last Completed

`docs/guidelines/json-schema-validation.md` was created in the `docs/json-schema-validation-policy` cycle.

## Current Recommendation

Continue by adding an ancestor topology JSON mode.

Reason: provider-class joins need safe ancestor context, and the ancestor experiment defined a topology-only record shape.

## Next Branch

```text
tools/ioreg-ancestor-json
```

## Session Goal

Create the next experiment note:

```text
tools/ioreg-inventory/README.md
```

## Research Question

What is the smallest safe ancestor topology JSON output in the IORegistry helper?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Commands tested.
- A topology-only JSON command.
- Header-line parsing without property dictionaries.
- Redaction policy for object names and paths.
- Smoke checks that output parses as JSON.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing experiment: registry ancestor capture.
- Existing tool: IORegistry inventory.
- Existing schema: IORegistry inventory.

## Definition Of Done

Done means:

- `tools/ioreg-inventory/README.md` documents ancestor topology JSON.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- The new JSON output parses locally.

## Follow-Up Queue

1. Implement PCI match-string parser.
2. Add a schema validation implementation if dependency policy allows.
3. Add provider-class candidate join tool.
