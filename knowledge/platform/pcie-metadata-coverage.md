# PCIe Metadata Coverage

## Summary

PCIe is the best-covered controller family in the current repository because it already has an IOKit provider note, match-key parser support, PCI ID decoding support, and candidate join policy. This coverage is still metadata-only and does not prove runtime attachment or hardware support.

## Context

- Related IOKit note: `knowledge/iokit/IOPCIDevice.md`
- Related platform notes: `knowledge/platform/controller-family-backlog.md`, `knowledge/platform/candidate-joins.md`, `knowledge/platform/matching-path.md`
- Related tools: `tools/pci-match-parse/`, `tools/pci-id-decode/`, `tools/ioreg-inventory/`
- Related fixtures: `datasets/fixtures/parsed-pci-matches/`, `datasets/fixtures/candidate-joins/`

## Covered Surfaces

| Surface | Current Evidence | Boundary |
| --- | --- | --- |
| Provider class | `IOPCIDevice` note | Provider class is not attachment proof. |
| Personality keys | PCI match parser and personality schema | Parsed keys are not hardware support. |
| Registry identity | PCI ID decoder and IORegistry schema | Registry blobs need decoding and provenance. |
| Candidate joins | Candidate join fixtures | Candidate edges require runtime confirmation. |
| Release comparison | Release-diff readiness docs | Both releases need comparable reduced metadata. |

## Useful Fields

First-pass PCIe records should prefer:

- `IOProviderClass`;
- `IOPCIMatch`;
- `IOPCIPrimaryMatch`;
- `IOPCISecondaryMatch`;
- `IOPCIClassMatch`;
- normalized registry `vendor-id`;
- normalized registry `device-id`;
- normalized registry `class-code`;
- topology `class_name`;
- registry plane and source provenance.

## Inferences

- PCIe should be the first controller family used to validate platform-facing metadata shape.
- PCIe candidate joins become more useful when topology ancestry and normalized registry identity are both present.
- PCIe release comparison should wait for equivalent reduced personality and registry metadata from both releases.

## Unknowns

- No verified `15.6` PCIe personality dataset exists yet.
- The project does not yet have a full normalized PCI registry inventory fixture.
- Runtime attachment evidence remains separate from PCIe metadata coverage.

## Next Work

- Acquire or identify a verified release source with PCI match keys.
- Add a reduced PCIe personality dataset when provenance exists.
- Add ancestor-aware join examples after topology schema support exists.

## Review

Use `docs/guidelines/platform-review-checklist.md` before promoting PCIe metadata into reports or release comparisons.
