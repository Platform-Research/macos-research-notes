# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/schema-validate/README.md` and `tools/schema-validate/validate-json.sh` were created in the `tools/schema-validate` cycle.

## Current Recommendation

Continue with a registry ancestor capture experiment.

Reason: provider-class joins need ancestor context, but the current registry helper captures mostly object-level fields.

## Next Branch

```text
experiments/registry-ancestor-capture
```

## Session Goal

Create the next experiment note:

```text
experiments/registry-ancestor-capture/README.md
```

## Research Question

What is the smallest safe registry ancestor capture needed for provider-class joins?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Commands tested.
- Ancestor fields worth collecting.
- Redaction rules for ancestor paths.
- Cases where ancestor data should not be used for joins.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing experiment: registry-personality join.
- Existing tool: IORegistry inventory.
- Existing schemas and join fixtures.

## Definition Of Done

Done means:

- `experiments/registry-ancestor-capture/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- No raw broad registry dump is committed.

## Follow-Up Queue

1. Add PCI match-string parser experiment.
2. Add normalized PCI JSON output.
3. Add full JSON Schema validation policy.
