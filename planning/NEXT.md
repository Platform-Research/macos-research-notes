# Next Work

Use this file to choose the next focused session.

## Last Completed

`experiments/user-client-inventory/README.md` was created in the `experiments/user-client-inventory` cycle.

## Current Recommendation

Continue with a bounded kext personality extraction experiment.

Reason: the registry and user-client experiments now need a structured way to connect runtime services with declared matching dictionaries.

## Next Branch

```text
experiments/kext-personality-extraction
```

## Session Goal

Create the next experiment note:

```text
experiments/kext-personality-extraction/README.md
```

## Research Question

What is the smallest safe extraction shape for kext and dext IOKit personalities?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Personality fields allowed for collection.
- Personality fields to avoid or redact.
- A tiny summary of observed matching keys, not a raw dump.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Local `Info.plist` files from system and library extension locations.
- Existing notes: `IORegistry`, `IOPCIDevice`, `IOUserClient`, `kext-personalities`.
- A personality field allowlist.

## Definition Of Done

Done means:

- `experiments/kext-personality-extraction/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Follow-up tools and schemas are listed for registry and kext personality inventories.

## Follow-Up Queue

1. `tools/ioreg-inventory/`
2. `datasets/schemas/ioreg-inventory.schema.json`
3. `tools/kext-personality-inventory/`
4. `datasets/schemas/kext-personality.schema.json`
