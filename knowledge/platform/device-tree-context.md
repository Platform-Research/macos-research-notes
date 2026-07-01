# DeviceTree Context

## Summary

DeviceTree-facing research should begin from registry context and metadata questions. The first useful work is to identify which facts can be represented without raw dumps, local identifiers, or assumptions about boot behavior.

## Context

- Related IOKit note: `knowledge/iokit/IORegistry.md`
- Related platform notes: `knowledge/platform/topology-vocabulary.md`, `knowledge/platform/boot-artifacts.md`
- Review checklist: `docs/guidelines/platform-review-checklist.md`

## Observed Starting Point

`knowledge/iokit/IORegistry.md` records that a runtime plane list included `IODeviceTree` alongside `IOService`, `IOPower`, `IOUSB`, `IOPort`, `IOAccessory`, `CoreCapture`, and `WiFiDKCoreCapture`.

This observation establishes that `IODeviceTree` is a registry plane worth tracking, but it does not by itself provide a safe committed device-tree dataset.

## Metadata-Only Questions

- Which registry plane is being inspected?
- Which object names and class names can be captured without properties?
- Which source command produced the topology evidence?
- Which release or host build does the evidence belong to?
- Which fields should remain omitted until a redaction policy exists?

## Boundaries

- Do not commit raw device-tree or IORegistry property dumps.
- Do not infer boot behavior from the existence of an `IODeviceTree` plane.
- Do not treat object names as universally safe until plane-specific review exists.
- Do not mix device-tree context with runtime attachment claims.

## Inferences

- DeviceTree research should reuse topology vocabulary before adding property-level records.
- Plane names are safer first-pass evidence than property dictionaries.
- DeviceTree context may later help explain platform-facing provider paths, but ancestor depth and redaction rules need more work first.

## Unknowns

- Which `IODeviceTree` object names are safe to commit is unknown.
- Which reduced fields are sufficient for platform research is unknown.
- The project does not yet have an `IODeviceTree` fixture.

## Next Work

- Add a topology-only `IODeviceTree` fixture only after command and redaction policy are explicit.
- Decide whether object names in the `IODeviceTree` plane need stricter review than `IOService` examples.
- Keep device-tree work behind the platform review checklist.

## Review

Use `docs/guidelines/platform-review-checklist.md` before promoting DeviceTree context into reports or release comparisons.
