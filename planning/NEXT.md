# Next Work

Use this file to choose the next focused session.

## Last Completed

`experiments/kext-personality-extraction/README.md` was created in the `experiments/kext-personality-extraction` cycle.

## Current Recommendation

Continue with the first registry inventory tool.

Reason: the registry experiments have enough allowlist rules to justify a small read-only helper that avoids raw dumps by default.

## Next Branch

```text
tools/ioreg-inventory
```

## Session Goal

Create the next experiment note:

```text
tools/ioreg-inventory/README.md
```

## Research Question

What is the smallest useful read-only helper for safe IORegistry inventory experiments?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Commands supported by the helper.
- Default redaction and allowlist behavior.
- How the helper supports PCI and user-client experiments.
- What remains intentionally out of scope.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing experiments: registry dump, PCI inventory, user-client inventory.
- Existing notes: `IORegistry`, `IOPCIDevice`, `IOUserClient`.
- A tiny script or documented command wrapper.

## Definition Of Done

Done means:

- `tools/ioreg-inventory/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Follow-up schemas and kext personality tooling are listed.

## Follow-Up Queue

1. `datasets/schemas/ioreg-inventory.schema.json`
2. `tools/kext-personality-inventory/`
3. `datasets/schemas/kext-personality.schema.json`
