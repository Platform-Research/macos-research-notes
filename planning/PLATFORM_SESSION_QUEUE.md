# Platform Session Queue

Use this queue when acquisition is blocked or when a session needs a bounded platform-facing research target.

Each cycle should produce one small committed result and stop before boot modification, kernel patching, binary patching, or hardware enablement claims.

## Cycles 1-20

| Cycle | Question | Evidence | Target Output |
| --- | --- | --- | --- |
| 1 | Which existing notes define the matching path from personality to provider? | `knowledge/iokit/IOService.md`, `knowledge/iokit/kext-personalities.md` | Cross-link update or short synthesis note. |
| 2 | Which registry ancestry fields are already safe to commit? | `experiments/registry-ancestor-capture/README.md`, topology fixture schema | Redaction checklist update. |
| 3 | Which `IOProviderClass` values appear in current fixture personalities? | `datasets/fixtures/helper-outputs/kext-personalities.fixture.json` | Small provider-class inventory note. |
| 4 | Which provider classes have matching topology examples? | `datasets/fixtures/topology-json/ioreg-topology.fixture.json`, provider join fixture | Candidate edge summary. |
| 5 | Which PCI match keys are already parsed by tooling? | `tools/pci-match-parse/`, parsed PCI fixture | Parser readiness note or fixture README update. |
| 6 | Which controller families are visible in fixture personalities? | kext personality fixture | Controller-family tag list. |
| 7 | Which registry planes are relevant before family-specific work? | `knowledge/iokit/IORegistry.md`, `ioreg` guidance | Plane selection note. |
| 8 | Which fields are needed for a minimal platform-facing personality record? | `datasets/schemas/kext-personality.schema.json` | Schema commentary or example note. |
| 9 | Which fields are needed for a minimal platform-facing topology record? | `datasets/schemas/ioreg-inventory.schema.json` | Schema commentary or example note. |
| 10 | Which join states preserve uncertainty correctly? | `datasets/schemas/registry-personality-join.schema.json` | Join-state guidance note. |
| 11 | Which reduced metadata can be compared across releases without raw payloads? | release acquisition manifests and release-diff schema | Comparison readiness note. |
| 12 | Which boot or kernel collection facts can be indexed as metadata only? | existing acquisition rules | Boot artifact acquisition question list. |
| 13 | Which platform-facing services need atomic notes first? | provider-class inventory and IOKit notes | `knowledge/platform/` note shortlist. |
| 14 | Which DriverKit examples overlap with kernel-resident matching? | personality fixture and tool output rules | DriverKit comparison question note. |
| 15 | Which PCI examples should be preferred for first release-backed acquisition? | PCI parser experiment and acquisition log | Source selection criteria update. |
| 16 | Which USB or NVMe examples would broaden the controller map? | personality fixture or future source artifact | Controller follow-up queue. |
| 17 | Which display/GPU metadata can be studied without driver claims? | personality fields and release metadata only | Display metadata boundary note. |
| 18 | Which power-management fields should remain out of first-pass fixtures? | redaction rules and registry notes | Redaction rule update. |
| 19 | Which local-runtime examples must be labeled non-release evidence? | current host checks and fixture README files | Evidence-boundary update. |
| 20 | Which one artifact would unblock the most platform-facing questions? | `planning/NEXT.md`, `macos/15.6/source-acquisition-log.md` | Next-work recommendation update. |

## Selection Rule

Choose the first cycle whose evidence already exists locally. If the evidence does not exist, either acquire it under the release acquisition rules or leave the cycle unresolved.

## Output Rule

Prefer one of these outputs per cycle:

- one atomic note under `knowledge/`;
- one fixture README update;
- one schema guidance note;
- one planning update;
- one reduced dataset with provenance.
