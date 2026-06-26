# IOKit Registry Dump Experiment

## Summary

This experiment defines the smallest safe read-only workflow for inspecting I/O Registry topology without committing raw machine-specific data. The main result is a rule: topology-only `ioreg` output is acceptable for notes, while property dumps must be filtered or summarized before they enter the repository.

## Context

- macOS version: Runtime sample from Darwin Kernel Version `25.5.0`, OS build `25F80`.
- Artifact: read-only `ioreg` output and `man ioreg`.
- Tooling: `ioreg`, `man`, `head`.
- Related notes: `knowledge/iokit/IORegistry.md`, `knowledge/iokit/IOService.md`, `knowledge/iokit/IOPCIDevice.md`, `knowledge/iokit/IOUserClient.md`.

## Commands Tested

Topology-only sample:

```sh
ioreg -p IOService -d 2 -w 0
```

Class-rooted sample:

```sh
ioreg -p IOService -c IOService -r -d 1 -w 0
```

Manual reference:

```sh
man ioreg
```

## Observations

- `ioreg` is read-only for the commands tested here.
- `man ioreg` says the default plane is `IOService`.
- `man ioreg` says `ioreg` displays provider/client relationships as an inverted tree.
- `-p IOService` selects the service plane.
- `-d` limits traversal depth.
- `-c` filters by C++ class, including subclasses.
- `-r` roots output at matching objects when used with `-c`, `-k`, or `-n`.
- `-l` prints properties and can expose local machine data.
- A topology-only command such as `ioreg -p IOService -d 2 -w 0` produced a tiny provider/client tree without properties.
- A property-bearing command rooted at broad classes exposed sensitive or local fields such as serial-like values, UUID-like values, NVRAM data, process names, and configuration payloads.

## Safe To Store

- Command strings.
- Class names.
- Plane names.
- High-level counts.
- Redacted topology summaries.
- Short manually reviewed excerpts that contain no serial numbers, UUIDs, account data, process names, paths to personal files, network identifiers, or full binary property payloads.

## Must Redact Or Avoid

- `serial-number`
- `IOPlatformSerialNumber`
- `IOPlatformUUID`
- `mlb-serial-number`
- NVRAM payloads
- `IOUserClientCreator`
- User/process names
- Network identifiers
- Large binary blobs
- Full raw output from `ioreg -l`

## Recommended Workflow

1. Start with topology only:

```sh
ioreg -p IOService -d 2 -w 0
```

2. Add a narrow class filter:

```sh
ioreg -p IOService -c <ClassName> -r -d 1 -w 0
```

3. Use `-l` only for a targeted question.
4. Review output manually before saving.
5. Store summaries in `experiments/` or normalized datasets in `datasets/`.
6. Never commit raw broad property dumps.

## Inferences

- The first reusable registry tool should default to topology and class/property allowlists, not full property dumps.
- Read-only registry inspection is safe as an observation workflow, but output handling can still create privacy leaks.
- PCI and user-client inventory experiments should define allowlists before collecting data.

## Unknowns

- The minimum useful property allowlist for PCI inventory is not defined yet.
- The minimum useful property allowlist for user-client inventory is not defined yet.
- Whether XML output from `ioreg -a` is easier to filter safely has not been tested.
- A formal redaction script does not exist yet.

## Next Experiments

- `experiments/pci-device-inventory/`
- `experiments/user-client-inventory/`
- `experiments/kext-personality-extraction/`
- `tools/ioreg-inventory/`
