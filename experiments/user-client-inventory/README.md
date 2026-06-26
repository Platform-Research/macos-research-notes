# User Client Inventory Experiment

## Summary

This experiment defines a minimal read-only inventory shape for `IOUserClient` runtime objects. The result is a strict redaction-first approach: collect class-level and flag-level signals, never commit raw user-client registry output, and avoid values that identify local processes.

## Context

- macOS version: Runtime sample from Darwin Kernel Version `25.5.0`, OS build `25F80`.
- Artifact: read-only `ioreg` output.
- Tooling: `ioreg`, `rg`, `sort`, `uniq`, `wc`, `head`.
- Related notes: `knowledge/iokit/IOUserClient.md`, `knowledge/iokit/IORegistry.md`, `knowledge/iokit/kext-personalities.md`.

## Commands Tested

Count depth-limited `IOUserClient` matches:

```sh
ioreg -p IOService -c IOUserClient -r -d 1 -w 0 | rg '^\+-o' | wc -l
```

List frequent property names without preserving values:

```sh
ioreg -p IOService -c IOUserClient -r -l -w 0 | rg -o '"[A-Za-z0-9,#_-]+" =' | sort | uniq -c | sort -nr | head -40
```

Inspect known user-client flags manually:

```sh
ioreg -p IOService -c IOUserClient -r -l -w 0 -d 1 | rg '"(IOUserClientDefaultLocking|IOUserClientDefaultLockingSetProperties|IOUserClientDefaultLockingSingleThreadExternalMethod|IOUserClientEntitlements|IOUserClientCrossEndianCompatible|IOUserServerName|IOAssociatedService|IOUserClientCreator)"'
```

## Observations

- A depth-limited `IOUserClient` query found 444 matches on this machine.
- Frequent runtime keys included `IOUserClientCreator`, `IOUserClientDefaultLocking`, `IOUserClientEntitlements`, `IOUserClientDefaultLockingSingleThreadExternalMethod`, and `IOUserClientDefaultLockingSetProperties`.
- `IOUserClientCreator` values included local process identifiers and process names, so this property must be redacted or omitted from committed artifacts.
- The default-locking keys were common and appear suitable for boolean inventory fields.
- Some user clients exposed DriverKit-adjacent keys such as `IOUserServerName`, `IOUserClasses`, `IOUserClass`, and `CFBundleIdentifier`.
- Some entries exposed broader device-specific properties such as HID report descriptors and graphics policy data; these should stay outside the first generic user-client inventory.

## Allowlist Candidate

Initial user-client inventory fields:

- object name
- class name
- registry plane
- parent object name, if captured without descendants
- `IOUserClientDefaultLocking`
- `IOUserClientDefaultLockingSetProperties`
- `IOUserClientDefaultLockingSingleThreadExternalMethod`
- `IOUserClientEntitlements`, stored only as a boolean or redacted summary
- `IOUserClientCrossEndianCompatible`
- `IOUserServerName`, when needed to group DriverKit services
- `IOUserClass`
- `IOUserClasses`
- `CFBundleIdentifier`

## Redact Or Avoid

- `IOUserClientCreator`
- process identifiers
- process names
- raw `ioreg -l` output
- raw entitlement arrays or values until policy is defined
- HID report descriptors
- graphics policy payloads
- large binary blobs
- memory mapping details
- child service properties outside the user-client object being inventoried

## Inferences

- The first user-client inventory tool should prefer counts, class names, and a small flag allowlist over property dumps.
- `IOUserClientCreator` is useful while debugging locally, but it is not appropriate for repository artifacts.
- A generic schema should separate kernel user clients from DriverKit user-server related entries without assuming they have the same access model.
- User-client inventory should remain passive: no `IOServiceOpen()`, no selector calls, and no memory mapping during this phase.

## Unknowns

- Whether `ioreg -a` XML can make one-object extraction safer than parsing text output is still untested.
- The exact redaction policy for entitlement fields needs a dedicated rule before storing values.
- The mapping between runtime user-client objects and kext or dext personality declarations needs a kext-personality extraction experiment.
- Cross-machine and cross-release stability of the allowlist is unknown.

## Next Experiments

- `experiments/kext-personality-extraction/`
- `tools/ioreg-inventory/`
- `datasets/schemas/ioreg-inventory.schema.json`
- `tools/kext-personality-inventory/`
