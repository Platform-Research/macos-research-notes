# Topology Vocabulary

## Summary

Topology vocabulary defines the small set of registry fields that can support platform-facing joins without committing raw IORegistry properties. It keeps ancestor context useful for matching research while avoiding blobs, local identifiers, and premature runtime attachment claims.

## Context

- Related experiment: `experiments/registry-ancestor-capture/README.md`
- Related tool: `tools/ioreg-inventory/README.md`
- Related schema: `datasets/schemas/ioreg-inventory.schema.json`
- Related fixture: `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
- Related platform note: `knowledge/platform/matching-path.md`

## Preferred Fields

Topology-only records should prefer:

- `record_kind`;
- `object_name`;
- `class_name`;
- `plane`;
- `depth`;
- ordered ancestor class names, once represented by schema;
- ordered ancestor object names only after local-identification review;
- source command and redaction metadata.

## Avoided Fields

First-pass topology records should avoid:

- raw property dictionaries;
- hex blobs;
- `IODeviceMemory`;
- `IOPowerManagement`;
- local network identifiers;
- process identifiers;
- object IDs as stable identifiers;
- raw `ioreg -t` output.

## Observations

- The registry ancestor experiment records that `ioreg -t` can still print properties when combined with class or name filters.
- `tools/ioreg-inventory/` exposes `topology-json` as a bounded mode that parses object headers and omits property dictionaries.
- The topology fixture records `record_kind`, `object_name`, `class_name`, `plane`, and `depth`.
- The IORegistry inventory schema currently models `topology_node` records with object name, class name, plane, and depth.

## Inferences

- `class_name`, `plane`, and `depth` are safer starting points for provider-class joins than raw registry properties.
- `object_name` is useful for orientation but may still require review in planes or device families where names can include local identifiers.
- Ancestor class paths should become the preferred evidence for narrowing broad provider-class candidates.
- Topology records should stay separate from PCI identity records because PCI identity requires field-specific decoding and redaction.

## Unknowns

- The schema does not yet model ordered ancestor class paths.
- The minimum ancestor depth needed for useful joins is unknown.
- The project has not yet decided when object names are safe enough for cross-machine examples.

## Next Work

- Add ancestor class path fields after a fixture proves the shape.
- Use topology vocabulary to improve provider-class join explanations.
- Keep property-bearing registry evidence out of platform notes until a redaction schema exists.

## Review

Use `docs/guidelines/platform-review-checklist.md` before expanding topology records with new fields or property-bearing evidence.

## Sources

- `experiments/registry-ancestor-capture/README.md`
- `tools/ioreg-inventory/README.md`
- `datasets/schemas/ioreg-inventory.schema.json`
- `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
