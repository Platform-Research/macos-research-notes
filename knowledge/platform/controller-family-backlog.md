# Controller Family Backlog

## Summary

Controller-family notes should map metadata surfaces before any family-specific behavior claims. This backlog names the first platform-facing families to study and the evidence each one needs.

## Context

- Platform direction: `planning/PLATFORM_DIRECTION.md`
- Review checklist: `docs/guidelines/platform-review-checklist.md`
- Related notes: `knowledge/platform/platform-facing-metadata.md`, `knowledge/platform/matching-path.md`, `knowledge/platform/candidate-joins.md`
- Related IOKit notes: `knowledge/iokit/IOPCIDevice.md`, `knowledge/iokit/IORegistry.md`, `knowledge/iokit/kext-personalities.md`

## Family Queue

| Family | First Evidence | First Output | Boundary |
| --- | --- | --- | --- |
| PCIe | `IOPCIDevice` note, PCI parser fixtures | PCIe metadata coverage note | No runtime match claim from PCI tokens. |
| USB | USB provider/personality examples | USB metadata note | No raw registry properties. |
| NVMe/storage | Parsed PCI fixture, future release personalities | NVMe/storage metadata note | No driver availability claim. |
| Display/GPU | Personality metadata only | Display metadata boundary note | No graphics support or Metal claim. |
| Networking | PCI and personality metadata | Networking metadata note | No active interface or attachment claim. |
| Power management | Redaction policy first | Power metadata boundary note | No `IOPowerManagement` value capture yet. |
| Interrupts/timers | Public references first | Source-needed note | No undocumented behavior claim. |

## Shared First-Pass Fields

Prefer:

- bundle identifier;
- bundle type;
- personality name;
- `IOClass`;
- `IOProviderClass`;
- family-specific match keys;
- provider topology class;
- ancestor class path, once schema-backed;
- source provenance and release state.

## Inferences

- PCIe is the best-covered family today because `IOPCIDevice`, PCI match parsing, PCI ID decoding, and candidate joins already exist.
- USB and NVMe should follow after source-backed personality examples are available.
- Display/GPU and power management need stricter boundaries because metadata is easy to overinterpret.
- Interrupt and timer work should wait for public references or committed artifacts.

## Unknowns

- Which controller families appear in a verified `15.6` source is unresolved.
- Which family-specific fields need schema extensions is unknown.
- Which families need runtime observations versus metadata-only comparison is not decided.

## Next Work

- Promote PCIe coverage into a short note.
- Add USB and NVMe source plans.
- Keep display, power, interrupts, and timers behind review-checklist gates.

## Review

Use `docs/guidelines/platform-review-checklist.md` before promoting controller-family notes into reports or release comparisons.
