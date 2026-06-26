# IORegistry Inventory Tool

## Summary

`ioreg-inventory.sh` is a small read-only helper for safe IORegistry inventory experiments. It wraps the local `ioreg` command with bounded modes that favor topology, counts, key names, and explicit allowlists over raw property dumps.

## Commands

Show help:

```sh
tools/ioreg-inventory/ioreg-inventory.sh help
```

Print IOService topology without properties:

```sh
tools/ioreg-inventory/ioreg-inventory.sh topology 2
```

Count root `IOPCIDevice` matches:

```sh
tools/ioreg-inventory/ioreg-inventory.sh pci-count
```

Print selected PCI allowlist fields:

```sh
tools/ioreg-inventory/ioreg-inventory.sh pci-allowlist
```

Decode one PCI registry blob:

```sh
tools/ioreg-inventory/ioreg-inventory.sh pci-decode-field vendor-id '<e4140000>'
```

Run known PCI decode smoke checks:

```sh
tools/ioreg-inventory/ioreg-inventory.sh pci-decode-smoke
```

Count user-client property keys without values:

```sh
tools/ioreg-inventory/ioreg-inventory.sh user-client-key-counts
```

Emit user-client property key counts as schema-shaped JSON:

```sh
tools/ioreg-inventory/ioreg-inventory.sh user-client-key-counts-json
```

Print selected user-client boolean flags:

```sh
tools/ioreg-inventory/ioreg-inventory.sh user-client-flags
```

## Default Safety Rules

- The helper is read-only.
- The helper does not call `IOServiceOpen()`.
- The helper does not perform selector calls or memory mapping.
- Broad raw `ioreg -l` dumps are not exposed as a public command.
- User-client creator values are not printed.
- User-client key counting strips values before sorting.
- JSON output includes source and redaction metadata.
- PCI output is restricted to an explicit allowlist.
- PCI blob decoding delegates to `tools/pci-id-decode/pci_id_decode.py`.

## Supported Inventory Threads

- `experiments/iokit-registry-dump/` uses `topology` as the safe baseline.
- `experiments/pci-device-inventory/` uses `pci-count` and `pci-allowlist`.
- `experiments/user-client-inventory/` uses `user-client-key-counts` and `user-client-flags`.

## Out Of Scope

- Cross-machine normalization.
- Kext or dext personality extraction.
- Runtime opening of user clients.
- Storing raw local registry artifacts in the repository.

## Inferences

- A small helper makes repeated experiments less likely to drift into unsafe ad hoc commands.
- The first registry schema should model the helper's bounded outputs before adding richer parsers.
- Future JSON output should preserve command metadata and redaction policy alongside extracted records.
- The first JSON mode maps to `datasets/schemas/ioreg-inventory.schema.json` with `user_client_key_count` records.
- Normalized PCI fields can now be smoke-checked before future JSON integration.

## Unknowns

- Whether `ioreg -a` XML is safer for future structured parsing is still untested.
- Some PCI fields still need a decoder before they become normalized IDs.
- User-client entitlement values need a redaction policy before value capture is allowed.

## Next Work

- `datasets/schemas/ioreg-inventory.schema.json`
- `tools/kext-personality-inventory/`
- `datasets/schemas/kext-personality.schema.json`
