# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/ioreg-inventory/README.md` and `tools/ioreg-inventory/ioreg-inventory.sh` were updated with PCI decode integration in the `tools/ioreg-pci-decode-integration` cycle.

## Current Recommendation

Continue by adding a local schema validation script.

Reason: schemas, examples, and fixtures now exist; a local script can prevent malformed JSON from creeping in.

## Next Branch

```text
tools/schema-validate
```

## Session Goal

Create the next experiment note:

```text
tools/schema-validate/README.md
```

## Research Question

What is the smallest local validation helper for schemas, examples, and fixtures?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- JSON syntax checks for schemas, examples, and fixtures.
- Clear report output.
- No external dependency requirement.
- Documentation of what the script does not validate yet.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing schemas, examples, and fixtures.
- Existing helper outputs.
- Existing workflow rules.

## Definition Of Done

Done means:

- `tools/schema-validate/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- The validation helper passes locally.

## Follow-Up Queue

1. Add registry ancestor capture experiment.
2. Add PCI match-string parser experiment.
3. Add normalized PCI JSON output.
