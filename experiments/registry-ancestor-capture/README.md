# Registry Ancestor Capture Experiment

## Summary

This experiment defines a safe approach for capturing IORegistry ancestor context needed by provider-class joins. The result is a strict topology-only rule: ancestor capture should preserve object names, classes, depth, and path position while dropping properties, blobs, IDs, and process-local values.

## Context

- macOS version: Runtime sample from Darwin Kernel Version `25.5.0`, OS build `25F80`.
- Artifact: read-only `ioreg` output.
- Related experiment: `experiments/registry-personality-join/README.md`.
- Related tools: `tools/ioreg-inventory/`, `tools/schema-validate/`.

## Commands Tested

Inspect `ioreg` behavior:

```sh
man ioreg | col -b | sed -n '1,90p'
```

Show tree location for PCI class matches:

```sh
ioreg -p IOService -c IOPCIDevice -r -t -d 1 -w 0 | head -80
```

Show tree location for a named object:

```sh
ioreg -p IOService -n wlan -r -t -d 1 -w 0 | head -80
```

## Observations

- `man ioreg` states that `-t` displays nodes between the root and the displayed subtree.
- `man ioreg` also states that `-c`, `-k`, `-l`, and `-n` can cause object properties to be shown.
- In practice, `-c IOPCIDevice` with `-t` still printed properties for matched PCI objects.
- In practice, `-n wlan` with `-t` printed large local properties and binary blobs.
- Ancestor context is useful for provider-class joins, but raw command output is not safe to commit.

## Safe Ancestor Shape

Initial ancestor records should include only:

- object name
- class name
- depth
- registry plane
- parent object name
- ordered ancestor class names
- ordered ancestor object names, when not locally identifying

## Redact Or Avoid

- all property dictionaries
- hex blobs
- `IODeviceMemory`
- `IOPowerManagement`
- local MAC addresses
- process identifiers
- user-client creator values
- raw `ioreg -t` output

## Inferences

- A future helper mode should parse object header lines only and ignore every line inside `{ ... }` property blocks.
- Provider-class joins should use ancestor class paths as evidence, not object IDs or raw property output.
- Ancestor capture should be a separate record shape from PCI identity capture.
- Runtime attachment claims still require separate evidence.

## Unknowns

- The minimal path depth needed for reliable provider-class joins is not known.
- Object names may still be locally identifying in some planes and need policy review.
- The helper does not yet expose a topology-only ancestor JSON mode.

## Next Work

- PCI match-string parser experiment.
- Normalized PCI JSON output.
- Full JSON Schema validation policy.
