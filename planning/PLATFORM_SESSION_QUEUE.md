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

## Cycles 21-40

| Cycle | Question | Evidence | Target Output |
| --- | --- | --- | --- |
| 21 | Which provider-class join examples already exist? | `datasets/fixtures/provider-class-join/provider-class-join.fixture.json` | Candidate join summary note. |
| 22 | Which candidate joins need ancestor context before interpretation? | provider-class join fixture, topology fixture | Ancestor requirement note. |
| 23 | Which PCI ID decoder behavior is already tested? | `tools/pci-id-decode/`, decoder tests | Decoder readiness note. |
| 24 | Which registry identity fields remain undecoded in fixtures? | IORegistry fixture and PCI device inventory experiment | PCI identity gap note. |
| 25 | Which fixture fields are safe enough for a controller-family index? | helper outputs and schemas | Controller-family index draft. |
| 26 | Which storage-facing personalities are visible in reduced examples? | kext personality fixture and parsed PCI fixture | Storage metadata note. |
| 27 | Which networking-facing personalities are visible in reduced examples? | kext personality fixture or future reduced source | Networking metadata note or unresolved record. |
| 28 | Which USB-facing provider classes need first notes? | `knowledge/iokit/IOService.md`, helper fixture, USB experiment context | USB provider shortlist. |
| 29 | Which NVMe-facing classes or bundles need first notes? | parsed PCI fixture, kext personality fixture | NVMe provider shortlist. |
| 30 | Which display-facing metadata can be cataloged without runtime claims? | personality fields only | Display metadata shortlist. |
| 31 | Which DriverKit bundle fields appear in current schemas? | `datasets/schemas/kext-personality.schema.json` | DriverKit schema commentary. |
| 32 | Which entitlement fields should stay omitted from first-pass records? | redaction policies in fixtures and tool READMEs | Entitlement redaction note. |
| 33 | Which user-client surfaces are relevant to platform-facing services? | `knowledge/iokit/IOUserClient.md`, user-client fixture | User-client boundary note. |
| 34 | Which registry topology fixture can feed a provider-class join smoke test? | topology fixture and provider join tool README | Reproducible smoke-test note. |
| 35 | Which generated release-diff fixture preserves unresolved platform gaps? | generated release diff fixture, missing-artifacts fixture | Unresolved comparison guidance. |
| 36 | Which acquisition manifest fields should be present before platform comparison? | acquisition manifest schema and fixtures | Manifest readiness checklist. |
| 37 | Which source paths in fixtures are local-runtime examples only? | fixture README files and source fields | Local-runtime labeling pass. |
| 38 | Which platform-facing note should be promoted next from an experiment? | registry ancestor, registry join, PCI parser experiments | Promotion candidate decision. |
| 39 | Which tool README needs the clearest boundary against runtime claims? | provider-class join, PCI parser, kext personality tool READMEs | Boundary wording update. |
| 40 | Which small dataset would best validate the platform-facing metadata note? | existing fixtures and schemas | One-dataset validation plan. |

## Cycles 41-60

| Cycle | Question | Evidence | Target Output |
| --- | --- | --- | --- |
| 41 | Which matching-path concepts should be promoted into a platform note? | `IOService`, `IORegistry`, kext personality notes | Matching path synthesis note. |
| 42 | Which topology-only fields should become the default ancestor vocabulary? | registry ancestor experiment and topology schema | Ancestor vocabulary note. |
| 43 | Which provider-class candidates are too broad without plane context? | provider-class join fixture and topology fixture | Broad-provider caution note. |
| 44 | Which fixture records mention `IOResources` or virtual providers? | kext personality fixture | Virtual-provider boundary note. |
| 45 | Which fixture records mention `IOPCIDevice` or PCI-specific keys? | parsed PCI fixture and kext personality fixture | PCI surface summary. |
| 46 | Which source artifacts would let the same query run across releases? | acquisition manifests and release folders | Cross-release source checklist. |
| 47 | Which platform-facing outputs should never include raw blobs? | acquisition rules and redaction sections | Blob redaction checklist. |
| 48 | Which command outputs need host/build labeling? | runtime experiments and fixture READMEs | Runtime provenance checklist. |
| 49 | Which schema fields carry enough provenance today? | acquisition manifest and dataset schemas | Provenance gap note. |
| 50 | Which tool outputs already separate parsing from interpretation? | PCI parser and provider join tools | Interpretation-boundary note. |
| 51 | Which registry object names might still be identifying? | ancestor capture experiment | Object-name redaction decision. |
| 52 | Which class paths are stable enough for fixtures? | topology fixture and schema | Class-path stability note. |
| 53 | Which bundle identifiers can seed a platform-facing service map? | kext personality fixture | Bundle service-map draft. |
| 54 | Which personality fields imply probing priority? | `IOProbeScore`, `IOMatchCategory` fields | Probe metadata note. |
| 55 | Which personality fields imply family-specific matching? | PCI keys, USB name matches, vendor/product keys | Family-specific matching note. |
| 56 | Which first-pass questions are answerable without binary analysis? | current notes and fixtures | No-binary research checklist. |
| 57 | Which questions require kernel collection metadata before continuing? | platform note unknowns | Kernel-collection blocker note. |
| 58 | Which release-diff states should map to platform-facing unknowns? | release-diff schema and fixtures | Unknown-state mapping note. |
| 59 | Which reduced examples should be duplicated for docs? | fixtures and README guidance | Example selection note. |
| 60 | Which platform queue cycles can be done entirely offline? | current repository files | Offline-session shortlist. |

## Cycles 61-80

| Cycle | Question | Evidence | Target Output |
| --- | --- | --- | --- |
| 61 | Which IOKit notes should link back to platform-facing metadata? | `knowledge/iokit/` notes | Related-links update. |
| 62 | Which platform notes should exist before boot artifacts are acquired? | `planning/PLATFORM_DIRECTION.md` | Pre-boot note backlog. |
| 63 | Which boot artifact terms need glossary treatment first? | acquisition rules and roadmap | Boot glossary stub. |
| 64 | Which kernel collection terms need glossary treatment first? | roadmap and acquisition rules | Kernel collection glossary stub. |
| 65 | Which device-tree questions can be asked without raw dumps? | IORegistry plane notes | Device-tree question note. |
| 66 | Which `IODeviceTree` registry plane facts are already known? | `IORegistry.md` runtime plane list | Device-tree plane note. |
| 67 | Which power-management data should be omitted until a schema exists? | redaction rules and registry notes | Power redaction note. |
| 68 | Which interrupt/timer concepts need artifact-backed sources? | platform direction guide | Interrupt/timer source plan. |
| 69 | Which PCIe bridge metadata can be studied safely? | IOPCIDevice note and topology fixtures | PCIe bridge metadata note. |
| 70 | Which USB metadata can be studied safely? | existing USB personality examples | USB metadata note. |
| 71 | Which NVMe metadata can be studied safely? | parsed PCI fixture and IOPCIDevice note | NVMe metadata note. |
| 72 | Which display metadata can be studied safely? | personality schemas and redaction rules | Display metadata note. |
| 73 | Which networking metadata can be studied safely? | PCI and personality tooling | Networking metadata note. |
| 74 | Which storage metadata can be studied safely? | NVMe and PCI notes | Storage metadata note. |
| 75 | Which user-client metadata is platform-relevant but sensitive? | IOUserClient note and fixture rules | User-client sensitivity note. |
| 76 | Which DriverKit metadata should be separated from kext metadata? | kext personality schema and tool README | DriverKit split note. |
| 77 | Which release folders need platform-facing artifact indexes later? | `macos/15.6`, `macos/16.0`, `macos/26.5.1` | Release index follow-up. |
| 78 | Which datasets should eventually move from fixtures to examples? | fixture README files | Dataset promotion note. |
| 79 | Which claims should be blocked in reviews? | scope boundaries and platform direction | Review checklist update. |
| 80 | Which next concrete note has the highest value today? | session queue and existing notes | Next-note decision. |

## Cycles 81-100

| Cycle | Question | Evidence | Target Output |
| --- | --- | --- | --- |
| 81 | Which platform notes now form the minimal reading path? | `knowledge/platform/README.md` | Reading-order update. |
| 82 | Which matching layer should receive the next fixture-backed example? | matching path note and fixtures | Example selection note. |
| 83 | Which topology field should be added before ancestor joins improve? | topology vocabulary note and schema | Schema follow-up note. |
| 84 | Which candidate join reason is most ready for stronger evidence? | candidate joins note and fixtures | Join-priority note. |
| 85 | Which redaction rule blocks unsafe registry expansion? | topology vocabulary and review checklist | Registry expansion boundary. |
| 86 | Which provenance fields are mandatory for platform-facing release data? | acquisition manifests and review checklist | Provenance minimum note. |
| 87 | Which artifact class should get a platform-facing index first? | release folders and platform metadata note | Artifact-index decision. |
| 88 | Which boot terms should be defined without implementation claims? | roadmap and platform direction | Boot terminology note. |
| 89 | Which kernel collection terms should be defined without binary analysis? | roadmap and acquisition rules | Kernel collection terminology note. |
| 90 | Which DeviceTree terms should be defined from registry context first? | IORegistry note and topology vocabulary | DeviceTree terminology note. |
| 91 | Which controller families need separate notes before release comparison? | platform metadata note | Controller note backlog. |
| 92 | Which PCIe concepts are already covered by IOPCIDevice? | IOPCIDevice note | PCIe coverage map. |
| 93 | Which USB concepts need a first source-backed note? | USB-related experiment examples | USB source plan. |
| 94 | Which NVMe concepts need a first source-backed note? | parsed PCI fixture and future sources | NVMe source plan. |
| 95 | Which display concepts should remain metadata-only? | review checklist and scope boundaries | Display scope note. |
| 96 | Which networking concepts need a safe metadata-only first pass? | PCI and personality tools | Networking scope note. |
| 97 | Which storage concepts need a safe metadata-only first pass? | PCI, NVMe, and personality tools | Storage scope note. |
| 98 | Which power concepts need a redaction-first plan? | review checklist | Power scope note. |
| 99 | Which interrupt/timer concepts need public references before notes? | platform direction | Source-needed note. |
| 100 | Which current unknown should be retired or sharpened? | platform notes and queue | Unknowns cleanup. |

## Cycles 101-120

| Cycle | Question | Evidence | Target Output |
| --- | --- | --- | --- |
| 101 | Which platform notes should cite the review checklist? | `knowledge/platform/` notes | Review-link update. |
| 102 | Which fixture README should cite candidate-only boundaries? | provider-class and candidate join fixtures | Fixture boundary update. |
| 103 | Which tool README should cite platform review before promotion? | provider, ioreg, personality, PCI tools | Tool boundary update. |
| 104 | Which schema README should describe platform-facing uncertainty? | schema validation and release diff docs | Schema guidance update. |
| 105 | Which release report should point to the platform queue? | unresolved release diff report | Report follow-up update. |
| 106 | Which acquisition blocker should reference platform-facing priorities? | `macos/15.6/source-acquisition-log.md` | Acquisition priority update. |
| 107 | Which source target best unlocks provider-class, PCI, and topology questions together? | acquisition log and queue | Source target ranking. |
| 108 | Which first release-backed dataset should be named now? | release acquisition notes | Dataset naming decision. |
| 109 | Which validation command set should every platform data change run? | review checklist and schema tools | Validation command note. |
| 110 | Which markdown-only changes need no schema validation? | workflow rules | Validation boundary note. |
| 111 | Which local-runtime command outputs should not be repeated? | review checklist and experiments | Runtime command caution note. |
| 112 | Which public references are needed before boot notes deepen? | boot terminology note | Reference acquisition list. |
| 113 | Which public references are needed before kernel collection notes deepen? | kernel collection terminology note | Reference acquisition list. |
| 114 | Which public references are needed before DeviceTree notes deepen? | DeviceTree terminology note | Reference acquisition list. |
| 115 | Which project terms should enter a glossary? | platform notes and roadmap | Glossary candidate list. |
| 116 | Which note should become a report only after release-backed data exists? | platform notes and release diff rules | Report deferral note. |
| 117 | Which branch should own future platform note expansion? | workflow rules | Branch naming recommendation. |
| 118 | Which platform items belong in parking lot instead of active queue? | parking lot and queue | Queue pruning note. |
| 119 | Which completed cycles need commit references? | git log and queue | Completion audit update. |
| 120 | Which next two-hour session should run first from a clean checkout? | queue and current notes | Session recommendation. |

## Selection Rule

Choose the first cycle whose evidence already exists locally. If the evidence does not exist, either acquire it under the release acquisition rules or leave the cycle unresolved.

## Completed Initial Outputs

| Cycle | Output |
| --- | --- |
| 1 | `knowledge/platform/matching-path.md` |
| 2 | `knowledge/platform/topology-vocabulary.md` |
| 21 | `knowledge/platform/candidate-joins.md` |
| 41 | `knowledge/platform/matching-path.md` |
| 42 | `knowledge/platform/topology-vocabulary.md` |
| 79 | `docs/guidelines/platform-review-checklist.md` |
| 101 | Review links added to `knowledge/platform/` notes. |
| 88 | `knowledge/platform/boot-artifacts.md` |
| 89 | `knowledge/platform/kernel-collections.md` |
| 90 | `knowledge/platform/device-tree-context.md` |
| 91 | `knowledge/platform/controller-family-backlog.md` |

## Output Rule

Prefer one of these outputs per cycle:

- one atomic note under `knowledge/`;
- one fixture README update;
- one schema guidance note;
- one planning update;
- one reduced dataset with provenance.
