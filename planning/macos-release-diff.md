# macOS Release Diff Plan

## Goal

Define the first safe release metadata diff workflow without downloading or committing raw release artifacts.

## First Inputs

- Reduced kext personality inventories.
- Reduced IORegistry inventory schemas and fixtures.
- Release-specific artifact indexes under `macos/<version>/`.
- Provenance notes for each derived dataset.

## First Output

A small derived diff that can answer:

- which personality keys appeared or disappeared;
- which PCI match tokens changed;
- which user-client declaration fields changed;
- which records are unresolved due to missing source data.

## Candidate First Pair

Use placeholder release folders first:

- `macos/15.6/`
- `macos/16.0/`

Do not claim a real diff until both sides have acquired, reduced, and validated metadata.

## Required Schemas

- `datasets/schemas/kext-personality.schema.json`
- `datasets/schemas/ioreg-inventory.schema.json`
- future release diff schema

## Stop Rules

Stop before diffing when:

- one side is raw and the other is reduced;
- provenance is missing;
- release versions are inferred instead of recorded;
- large artifacts would need to be committed;
- schema validation fails.

## Next Work

- Add artifact provenance to macOS 26.5.1 index.
- Add first release diff schema.
- Add acquisition checklist.
