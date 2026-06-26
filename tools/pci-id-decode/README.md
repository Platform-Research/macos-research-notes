# PCI ID Decode Tool

## Summary

`pci_id_decode.py` normalizes small little-endian PCI values copied from IORegistry blobs. It is intentionally tiny: it handles the PCI identity fields needed for inventory joins and rejects unsupported encodings.

## Commands

Decode a vendor ID:

```sh
tools/pci-id-decode/pci_id_decode.py vendor-id '<e4140000>'
```

Decode a device ID:

```sh
tools/pci-id-decode/pci_id_decode.py device-id '<34440000>'
```

Run tests:

```sh
python3 -m unittest discover -s tools/pci-id-decode
```

## Supported Fields

- `vendor-id`
- `device-id`
- `subsystem-id`
- `subsystem-vendor-id`
- `revision-id`
- `class-code`

## Known Examples

- `<e4140000>` as `vendor-id` decodes to `0x14e4`.
- `<34440000>` as `device-id` decodes to `0x4434`.
- `<6b100000>` as `vendor-id` decodes to `0x106b`.
- `<0c100000>` as `device-id` decodes to `0x100c`.
- `<00800200>` as `class-code` decodes to `0x028000`.
- `<00040600>` as `class-code` decodes to `0x060400`.

## Boundaries

- The decoder accepts only hex blobs up to four bytes.
- The decoder does not interpret vendor names.
- The decoder does not fetch PCI ID databases.
- The decoder does not inspect hardware.
- The decoder does not infer a driver match.

## Inferences

- Normalized PCI IDs can support safer candidate joins against `IOPCIMatch` and `IOPCIPrimaryMatch`.
- Class-code joins should remain candidate-only until family-specific matching behavior is tested.
- A later IORegistry JSON mode can call this decoder before emitting PCI inventory records.

## Unknowns

- Some registry values may appear as strings instead of blobs and need separate handling.
- Multi-value personality match strings still need parsing tests.
- The decoder has not yet been integrated into `tools/ioreg-inventory/`.

## Next Work

- Schema validation examples.
- Safe helper output fixtures.
- Candidate join fixture.
