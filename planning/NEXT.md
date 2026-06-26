# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/schemas/ioreg-inventory.schema.json` was created in the `datasets/schemas/ioreg-inventory` cycle.

## Current Recommendation

Continue with the first kext personality inventory tool.

Reason: the kext personality experiment has an allowlist, and the registry side now has a helper plus schema.

## Next Branch

```text
tools/kext-personality-inventory
```

## Session Goal

Create the next experiment note:

```text
tools/kext-personality-inventory/README.md
```

## Research Question

What is the smallest useful helper for safe kext and dext personality inventory?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Commands supported by the helper.
- Default allowlist and redaction behavior.
- How the helper supports later personality schemas.
- What remains intentionally out of scope.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing experiment: kext personality extraction.
- Existing notes: `kext-personalities`, `IOPCIDevice`, `IOUserClient`.
- A tiny script or documented command wrapper.

## Definition Of Done

Done means:

- `tools/kext-personality-inventory/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Follow-up kext personality schema work is listed.

## Follow-Up Queue

1. `datasets/schemas/kext-personality.schema.json`
