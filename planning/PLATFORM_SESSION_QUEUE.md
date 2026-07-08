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

## Cycles 121-150

| Cycle | Question | Evidence | Target Output |
| --- | --- | --- | --- |
| 121 | What is the minimal matching path from a kext personality to a live IORegistry service? | matching path note, IOService note, kext personality note | Minimal matching-path note. |
| 122 | What does `IOClass` identify inside a personality record? | kext personality fixture and schema | `IOClass` semantics note. |
| 123 | What does `CFBundleIdentifier` identify, and how is it different from matched service identity? | kext personality fixture and schema | Bundle identity note. |
| 124 | What can `IONameMatch` express that `IOProviderClass` alone cannot? | kext personality fixture and IOService note | Name-match metadata note. |
| 125 | What does `IOPCIPrimaryMatch` encode about PCI devices? | parsed PCI fixture and PCI match parser README | PCI primary match note. |
| 126 | What does `IOPCIMatch` encode differently from `IOPCIPrimaryMatch`? | parsed PCI fixture and PCI parser tests | PCI match comparison note. |
| 127 | How do PCI class-code matches differ from vendor/device matches? | PCI decoder tool and parsed PCI fixture | PCI class-code note. |
| 128 | What does subsystem metadata add to PCI identity? | PCI decoder README and parsed PCI fixture | PCI subsystem identity note. |
| 129 | Which reduced fields are enough to describe a platform-facing PCI candidate? | IOPCIDevice note and parsed PCI fixture | Minimal PCI candidate record. |
| 130 | What is the difference between matching a provider class and proving runtime attachment? | provider-class join fixture and review checklist | Provider vs attachment note. |
| 131 | How does IORegistry ancestry change interpretation of a direct match candidate? | registry ancestor experiment and topology fixture | Ancestry interpretation note. |
| 132 | Which IORegistry fields describe topology without exposing sensitive runtime details? | topology vocabulary and ioreg inventory schema | Safe topology field note. |
| 133 | What does a registry plane represent in IOKit? | IORegistry note and topology vocabulary | Registry plane concept note. |
| 134 | How does the Service plane differ from DeviceTree context for platform research? | IORegistry note and DeviceTree context note | Service vs DeviceTree note. |
| 135 | What can be learned from provider names before decoding device-specific properties? | topology fixture and registry ancestor experiment | Provider-name evidence note. |
| 136 | What should not be inferred from provider names alone? | topology fixture and review checklist | Provider-name limitation note. |
| 137 | What makes a kext personality platform-facing rather than purely software-facing? | kext personality schema and provider-class fixtures | Platform-facing personality criteria. |
| 138 | Which personality fields suggest hardware family without proving hardware support? | kext personality fixture and controller backlog | Hardware-family signal note. |
| 139 | How should `IOProbeScore` be interpreted as metadata? | kext personality fixture and matching path note | Probe score interpretation note. |
| 140 | What does `IOMatchCategory` add to matching interpretation? | kext personality fixture and IOService note | Match category note. |
| 141 | What platform facts can be stated from reduced fixture data only? | helper fixtures and schema examples | Reduced-data fact note. |
| 142 | What platform facts require raw release artifacts before being trusted? | acquisition manifests and release folders | Raw-artifact boundary note. |
| 143 | How do boot artifacts prepare the conditions for driver matching without describing driver behavior? | boot artifacts note and matching path note | Boot prerequisite note. |
| 144 | What is the platform role of prelinked or collected kernel extension metadata? | kernel collections note and kext personality note | Kernel metadata role note. |
| 145 | How should DeviceTree-derived identity be separated from PCI-derived identity? | DeviceTree context and IOPCIDevice note | DeviceTree vs PCI identity note. |
| 146 | Which controller-family names appear to describe buses versus endpoint devices? | controller backlog and helper fixtures | Controller-family taxonomy note. |
| 147 | Which controller-family names appear to describe storage, display, networking, or USB domains? | controller backlog and helper fixtures | Controller domain mapping note. |
| 148 | Which platform knowledge claims are safe from local fixtures, and which need release provenance? | fixtures and acquisition manifests | Fixture-vs-release claim note. |
| 149 | Which existing platform note should receive the first new knowledge expansion? | platform notes and cycles 121-148 | Knowledge expansion recommendation. |
| 150 | Which platform question from 121-149 has the strongest local evidence today? | cycles 121-149 and local fixtures | Evidence-ranked cycle choice. |

## Cycles 151-170

| Cycle | Question | Evidence | Target Output |
| --- | --- | --- | --- |
| 151 | What is the relationship between user clients and platform services? | IOUserClient note and user-client fixture | User-client relationship note. |
| 152 | Which user-client facts are metadata-only and do not imply reachable attack surface? | IOUserClient note and review checklist | User-client metadata boundary. |
| 153 | How can DriverKit services participate in platform matching differently from kernel kexts? | kext personality schema and DriverKit-related entries | DriverKit matching note. |
| 154 | What DriverKit metadata is visible before studying binaries or entitlements? | kext personality schema and helper fixtures | DriverKit visible metadata note. |
| 155 | What does release-diff metadata tell us about platform evolution across macOS versions? | release-diff schema and generated release-diff fixture | Platform evolution metadata note. |
| 156 | Which platform changes cannot be inferred from release-diff metadata alone? | release comparison report and review checklist | Release-diff limitation note. |
| 157 | What makes a provider-class join a candidate relationship rather than a conclusion? | provider-class join README and candidate joins note | Candidate relationship concept. |
| 158 | How can candidate joins be grouped by bus family, provider class, or bundle identity? | provider-class join fixture and kext personality fixture | Candidate grouping note. |
| 159 | Which platform questions become answerable once a valid `15.6` source exists? | source acquisition log and platform source ranking | `15.6` unlock question list. |
| 160 | Which platform questions remain answerable without new source acquisition? | platform notes and local fixtures | Offline platform question list. |
| 161 | What is the smallest artifact-backed note that would improve understanding of IOKit matching? | IOService note, matching path note, fixtures | IOKit matching expansion plan. |
| 162 | What is the smallest artifact-backed note that would improve understanding of PCI matching? | IOPCIDevice note and parsed PCI fixture | PCI matching expansion plan. |
| 163 | What is the smallest artifact-backed note that would improve understanding of registry topology? | IORegistry note and topology fixture | Registry topology expansion plan. |
| 164 | What is the smallest artifact-backed note that would improve understanding of boot-to-driver flow? | boot artifacts note and kernel collections note | Boot flow expansion plan. |
| 165 | How should platform metadata distinguish buses, controllers, endpoints, and software services? | controller backlog, topology vocabulary, fixtures | Platform role taxonomy note. |
| 166 | Which fields indicate a bus-level service rather than an endpoint device service? | topology fixture and kext personality fixture | Bus-vs-endpoint field note. |
| 167 | Which fields indicate a software service that happens to sit near platform hardware? | IOResources examples and kext personality fixture | Software-adjacent service note. |
| 168 | Which hardware-facing metadata should be excluded from public examples until redaction rules improve? | review checklist and fixture READMEs | Hardware metadata redaction note. |
| 169 | Which platform concept from cycles 121-168 should become a first-class `knowledge/platform/` note? | cycles 121-168 and existing notes | First-class note recommendation. |
| 170 | Which local-evidence platform cycle should be executed next rather than expanded further? | cycles 121-169 and local artifacts | Next execution recommendation. |

## Cycles 171-200

| Cycle | Question | Evidence | Target Output |
| --- | --- | --- | --- |
| 171 | What role does `IOService` play in matching drivers to platform devices? | `knowledge/iokit/IOService.md`, matching path note | IOService matching summary. |
| 172 | How does `IOProviderClass` constrain which registry objects a personality can match? | kext personality note and provider-class fixtures | Provider-class semantics note. |
| 173 | What does the IORegistry reveal about parent-child platform topology? | `knowledge/iokit/IORegistry.md`, topology fixture | Registry topology note. |
| 174 | Which IORegistry planes matter for platform research before driver behavior claims? | IORegistry note and topology vocabulary | Registry plane comparison note. |
| 175 | What information can be learned from `IOPCIDevice` metadata without touching hardware enablement? | `knowledge/iokit/IOPCIDevice.md`, parsed PCI fixtures | PCI metadata knowledge note. |
| 176 | How do PCI vendor, device, subsystem, and class-code fields divide identity from capability? | PCI decoder tool and parsed PCI fixtures | PCI identity field note. |
| 177 | What does a PCI match string encode in kext personalities? | PCI match parser README and parsed PCI fixture | PCI match-string explanation. |
| 178 | Which personality keys influence matching order or priority? | kext personality fixture and `IOProbeScore` examples | Probe-priority metadata note. |
| 179 | What is the difference between bundle identity and service identity in kext metadata? | kext personality schema and helper fixture | Bundle vs service note. |
| 180 | How can DriverKit metadata be recognized separately from kernel extension metadata? | kext personality schema and DriverKit queue items | DriverKit metadata distinction note. |
| 181 | Which platform-facing facts can be extracted from kext `Info.plist` files alone? | kext personality inventory README and schema | Info.plist fact inventory. |
| 182 | Which platform-facing facts cannot be inferred from `Info.plist` metadata alone? | kext personality note and review checklist | Info.plist limitation note. |
| 183 | What does a kernel collection represent in the macOS platform boot chain? | kernel collections note and boot artifacts note | Kernel collection role note. |
| 184 | How do boot artifacts relate to later IOKit service publication? | boot artifacts note and IOService note | Boot-to-IOKit relationship note. |
| 185 | What is safe to say about DeviceTree context from registry-derived evidence? | DeviceTree context note and IORegistry note | DeviceTree evidence note. |
| 186 | Which DeviceTree concepts should stay distinct from IOService matching concepts? | DeviceTree context and matching path note | DeviceTree vs matching note. |
| 187 | How do virtual providers such as `IOResources` affect platform matching interpretation? | kext personality fixture and IOService note | Virtual-provider note. |
| 188 | What platform knowledge can be derived from controller-family names alone? | controller backlog and helper fixtures | Controller-family naming note. |
| 189 | What are the limits of controller-family names as evidence? | controller backlog and review checklist | Controller-family limitation note. |
| 190 | Which storage-facing platform concepts appear in current reduced metadata? | parsed PCI fixture and kext personality fixture | Storage platform concept note. |
| 191 | Which networking-facing platform concepts appear in current reduced metadata? | PCI fixtures and kext personality fixture | Networking platform concept note. |
| 192 | Which display-facing platform concepts can be described as metadata only? | personality schema and display queue items | Display metadata concept note. |
| 193 | Which USB-facing platform concepts can be studied through provider classes and match keys? | IOService note and helper fixtures | USB platform concept note. |
| 194 | Which NVMe-facing platform concepts can be studied through PCI metadata? | IOPCIDevice note and parsed PCI fixture | NVMe platform concept note. |
| 195 | How should user-client surfaces be understood as platform-adjacent rather than device identity? | IOUserClient note and user-client fixture | User-client platform boundary note. |
| 196 | What does provider ancestry add beyond a direct provider-class match? | registry ancestor experiment and provider join fixture | Provider ancestry knowledge note. |
| 197 | How can candidate joins express uncertainty without losing useful platform relationships? | candidate joins note and registry join schema | Uncertain relationship note. |
| 198 | Which metadata fields help compare platform support across macOS releases? | release-diff schema and acquisition manifests | Cross-release platform fields note. |
| 199 | Which platform facts require release-backed artifacts before they can be trusted? | release folders, acquisition log, and review checklist | Release-backed fact boundary note. |
| 200 | Which platform knowledge cycle from 171-199 should be executed first? | cycles 171-199 and existing local evidence | First platform-knowledge recommendation. |

## Cycles 201-220

| Cycle | Question | Evidence | Target Output |
| --- | --- | --- | --- |
| 201 | How does IOKit separate provider discovery from driver startup? | IOService note, matching path note | Provider discovery vs startup note. |
| 202 | What does a published IOService object represent before any family-specific interpretation? | IOService note, IORegistry note | Published service concept note. |
| 203 | Which registry ancestry patterns suggest bus nesting rather than device capability? | topology fixture, registry ancestor experiment | Bus nesting pattern note. |
| 204 | How should PCI bridge objects be distinguished from endpoint PCI devices in reduced topology? | IOPCIDevice note, topology fixture | PCI bridge vs endpoint note. |
| 205 | Which metadata fields can identify a controller family across multiple personalities? | kext personality fixture, controller backlog | Controller family identity note. |
| 206 | How can platform services be grouped by bus domain without claiming support quality? | provider-class fixture, parsed PCI fixture | Bus-domain grouping note. |
| 207 | What does a service dependency imply differently from a hardware dependency? | IOService note, topology vocabulary | Service vs hardware dependency note. |
| 208 | Which boot-stage concepts must be understood before interpreting kernel collection contents? | boot artifacts note, kernel collections note | Boot-stage prerequisite note. |
| 209 | How do kernel collections change where platform metadata is found compared with loose kexts? | kernel collections note, acquisition guide | Kernel collection metadata location note. |
| 210 | What does DriverKit imply about user-space driver placement without proving device behavior? | DriverKit-related schema fields, kext personality note | DriverKit placement note. |
| 211 | Which personality metadata suggests a dext/kext boundary? | kext personality schema, helper fixture | Dext/kext boundary signal note. |
| 212 | How should IOUserClient names be connected to owning services without treating them as hardware IDs? | IOUserClient note, user-client fixture | User-client ownership note. |
| 213 | Which reduced metadata can support a platform glossary entry for "provider"? | IOService note, provider-class fixture | Provider glossary draft. |
| 214 | Which reduced metadata can support a platform glossary entry for "personality"? | kext personality note, kext personality schema | Personality glossary draft. |
| 215 | Which reduced metadata can support a platform glossary entry for "registry plane"? | IORegistry note, topology vocabulary | Registry plane glossary draft. |
| 216 | Which reduced metadata can support a platform glossary entry for "candidate join"? | candidate joins note, registry join schema | Candidate join glossary draft. |
| 217 | What is the smallest safe explanation of platform support that avoids enablement claims? | review checklist, platform notes | Platform support wording note. |
| 218 | Which current fixtures can demonstrate platform metadata layering from bundle to provider to registry? | helper fixtures, provider join fixture, topology fixture | Metadata layering example. |
| 219 | Which platform concept from cycles 201-218 should become the next atomic note? | cycles 201-218, existing platform notes | Next atomic note choice. |
| 220 | Which cycle from 201-219 can be completed using only committed evidence today? | cycles 201-219, repository files | Committed-evidence cycle pick. |

## Cycles 221-240

| Cycle | Question | Evidence | Target Output |
| --- | --- | --- | --- |
| 221 | What is the platform difference between a bus, a controller, and an endpoint device? | topology vocabulary, controller backlog, IOPCIDevice note | Bus/controller/endpoint concept note. |
| 222 | How can reduced registry topology represent bus hierarchy without device properties? | topology fixture, ioreg inventory schema | Reduced bus hierarchy note. |
| 223 | What does a bridge service imply in PCIe topology before endpoint interpretation? | IOPCIDevice note, PCIe metadata coverage | PCIe bridge concept note. |
| 224 | Which PCI metadata fields identify topology position versus device identity? | IOPCIDevice note, parsed PCI fixture | PCI topology vs identity note. |
| 225 | How should platform research distinguish ACPI-style provider names from DeviceTree-style provider names? | kext personality note, DeviceTree context note | ACPI vs DeviceTree naming note. |
| 226 | What can `IOResources` matching teach about virtual platform providers? | IOService note, kext personality fixture | `IOResources` provider note. |
| 227 | Why are virtual providers useful for platform bring-up without being hardware devices? | matching path note, provider discovery note | Virtual provider role note. |
| 228 | How does `IOMatchCategory` affect interpretation of multiple possible clients? | IOService note, kext personality note | Match category interpretation note. |
| 229 | How should `IOProbeScore` be treated when comparing competing personalities? | IOService note, kext personality note | Probe score comparison note. |
| 230 | Which metadata distinguishes driver class selection from provider class selection? | kext personality schema, IOService note | Driver class vs provider class note. |
| 231 | What platform knowledge can be derived from `IONameMatch` without registry properties? | kext personality note, helper fixture | `IONameMatch` knowledge note. |
| 232 | How do family-specific match keys refine generic `IOProviderClass` matching? | IOPCIDevice note, PCI parser README | Generic vs family-specific match note. |
| 233 | Which reduced metadata fields best support release-to-release platform comparison? | release-diff schema, platform-facing metadata note | Release comparison field note. |
| 234 | What should a platform-facing release comparison avoid saying when one side lacks source artifacts? | release comparison report, acquisition log | Asymmetric evidence boundary note. |
| 235 | How can kernel collection metadata and personality metadata be connected safely? | kernel collections note, kext personality note | Kernel collection/personality bridge note. |
| 236 | Which boot artifact concepts are prerequisites for understanding IOKit service publication? | boot artifacts note, published IOService note | Boot-to-publication prerequisite note. |
| 237 | What does "platform support" mean at the metadata layer only? | platform-facing metadata note, review checklist | Metadata-layer support definition. |
| 238 | Which platform knowledge should stay separate from driver implementation knowledge? | roadmap, scope boundaries, platform notes | Platform vs implementation boundary note. |
| 239 | Which concept from cycles 221-238 should become the next `knowledge/platform/` note? | cycles 221-238, current platform notes | Next concept selection note. |
| 240 | Which cycle from 221-239 has the strongest evidence in committed notes and fixtures? | cycles 221-239, repository evidence | Evidence-ranked knowledge cycle. |

## Cycles 241-270

| Cycle | Question | Evidence | Target Output |
| --- | --- | --- | --- |
| 241 | Which metadata fields separate platform role from driver behavior? | platform-facing metadata note, provider discovery note, review checklist | Platform role vs behavior note. |
| 242 | How should bus-domain grouping handle services that span multiple families? | controller backlog, topology vocabulary, candidate joins note | Cross-family grouping boundary. |
| 243 | Which topology fields can describe containment without implying ownership? | topology vocabulary, IORegistry note, topology fixture | Containment vs ownership note. |
| 244 | What does a parent service mean differently from a provider service? | IORegistry note, IOService note, published IOService note | Parent vs provider concept note. |
| 245 | Which registry plane facts should be recorded before comparing families? | IORegistry note, topology vocabulary, ioreg inventory schema | Plane-first comparison checklist. |
| 246 | Which personality keys should be treated as generic matching metadata? | kext personality note, kext personality schema | Generic personality-key note. |
| 247 | Which personality keys should remain family-specific until decoded? | IOPCIDevice note, PCI parser README, kext personality schema | Family-specific key boundary. |
| 248 | How should `IOProviderClass` subclasses be handled in candidate joins? | IOService note, candidate joins note, provider-class join fixture | Subclass matching caution note. |
| 249 | Which source fields make a reduced personality record reproducible? | acquisition checklist, kext personality schema, source acquisition log | Personality provenance checklist. |
| 250 | Which source fields make a reduced topology record reproducible? | ioreg inventory schema, topology vocabulary, platform review checklist | Topology provenance checklist. |
| 251 | What is the safest first comparison between two platform-facing releases? | release-diff readiness guide, acquisition manifests, platform-facing metadata note | First release-comparison boundary. |
| 252 | Which release comparison claims require matching artifact classes on both sides? | release comparison report, release-diff schema, acquisition log | Symmetric-evidence requirement note. |
| 253 | Which release comparison claims can be stated when one side is missing? | missing-artifacts release-diff fixture, source acquisition log | Missing-side wording note. |
| 254 | How should reduced datasets cite redaction policy inline? | platform review checklist, acquisition manifests, schema examples | Inline redaction citation note. |
| 255 | Which registry properties should remain excluded until a dedicated schema exists? | topology vocabulary, scope boundaries, review checklist | Registry-property exclusion list. |
| 256 | Which PCI fields can be normalized without attaching runtime meaning? | IOPCIDevice note, pci-id decoder README, parsed PCI fixture | PCI normalization boundary note. |
| 257 | Which PCI fields need source-family context before comparison? | PCI parser README, IOPCIDevice note, PCIe metadata coverage note | PCI context requirement note. |
| 258 | How should DriverKit PCI metadata be kept separate from kernel kext metadata? | IOPCIDevice note, kext personality schema, DriverKit queue items | DriverKit PCI split note. |
| 259 | Which user-client fields belong in platform notes only as service adjacency? | IOUserClient note, user-client fixture, review checklist | User-client adjacency note. |
| 260 | Which service names are safe as examples, and which need redaction review? | topology vocabulary, registry ancestor experiment, review checklist | Service-name redaction decision. |
| 261 | Which platform note should define "attachment" without implying startup? | provider discovery note, matching path note, IOService note | Attachment glossary note. |
| 262 | Which platform note should define "probe score" as ordering metadata? | IOService note, kext personality note, helper fixture | Probe-score glossary note. |
| 263 | Which platform note should define "match category" as attachment-shaping metadata? | IOService note, kext personality note, helper fixture | Match-category glossary note. |
| 264 | Which platform note should define "family-specific key" with PCI as the first example? | IOPCIDevice note, PCI parser README, kext personality note | Family-specific key glossary note. |
| 265 | Which platform note should define "virtual provider" before `IOResources` examples expand? | IOService note, matching path note, kext personality fixture | Virtual-provider glossary note. |
| 266 | Which knowledge notes need explicit "metadata only" callouts? | platform README, platform review checklist, current platform notes | Metadata-only callout pass. |
| 267 | Which tool outputs need a warning against support-quality inference? | PCI parser README, provider-class join README, release-diff README | Tool inference-warning pass. |
| 268 | Which schema examples best demonstrate uncertainty-preserving relationships? | registry join schema, candidate join fixture, generated release-diff fixture | Uncertainty example selection. |
| 269 | Which cycles from 241-268 should become atomic notes first? | cycles 241-268, existing platform notes | Next atomic-note shortlist. |
| 270 | Which cycle from 241-269 is most likely to unblock release-backed work later? | cycles 241-269, source ranking, acquisition log | Release-unblock priority note. |

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
| 92 | `knowledge/platform/pcie-metadata-coverage.md` |
| 107 | `planning/15.6-platform-source-ranking.md` |
| 201 | `knowledge/platform/provider-discovery-vs-startup.md` |
| 202 | `knowledge/platform/published-ioservice-concept.md` |
| 203 | `knowledge/platform/bus-nesting-patterns.md` |
| 204 | `knowledge/platform/pci-bridge-vs-endpoint.md` |
| 205 | `knowledge/platform/controller-family-identity.md` |
| 206 | `knowledge/platform/bus-domain-grouping.md` |
| 207 | `knowledge/platform/service-vs-hardware-dependency.md` |
| 208 | `knowledge/platform/boot-stage-prerequisites.md` |
| 209 | `knowledge/platform/kernel-collection-metadata-location.md` |
| 210 | `knowledge/platform/driverkit-placement.md` |
| 211 | `knowledge/platform/dext-kext-boundary-signals.md` |
| 212 | `knowledge/platform/user-client-ownership.md` |
| 213 | `knowledge/platform/provider-glossary.md` |
| 214 | `knowledge/platform/personality-glossary.md` |
| 215 | `knowledge/platform/registry-plane-glossary.md` |
| 216 | `knowledge/platform/candidate-join-glossary.md` |
| 217 | `knowledge/platform/platform-support-wording.md` |
| 218 | `knowledge/platform/metadata-layering-example.md` |
| 219 | `knowledge/platform/next-atomic-note-choice.md` |
| 220 | `knowledge/platform/committed-evidence-cycle-pick.md` |
| 221 | `knowledge/platform/bus-controller-endpoint-concept.md` |
| 222 | `knowledge/platform/reduced-bus-hierarchy.md` |
| 223 | `knowledge/platform/pcie-bridge-concept.md` |
| 224 | `knowledge/platform/pci-topology-vs-identity.md` |
| 225 | `knowledge/platform/acpi-vs-devicetree-naming.md` |
| 226 | `knowledge/platform/ioresources-provider.md` |
| 227 | `knowledge/platform/virtual-provider-role.md` |
| 228 | `knowledge/platform/match-category-interpretation.md` |
| 229 | `knowledge/platform/probe-score-comparison.md` |
| 230 | `knowledge/platform/driver-class-vs-provider-class.md` |
| 231 | `knowledge/platform/ionamematch-knowledge.md` |
| 232 | `knowledge/platform/generic-vs-family-specific-match.md` |
| 233 | `knowledge/platform/release-comparison-fields.md` |
| 234 | `knowledge/platform/asymmetric-evidence-boundary.md` |
| 235 | `knowledge/platform/kernel-collection-personality-bridge.md` |
| 236 | `knowledge/platform/boot-to-publication-prerequisite.md` |
| 237 | `knowledge/platform/metadata-layer-support-definition.md` |
| 238 | `knowledge/platform/platform-vs-implementation-boundary.md` |
| 239 | `knowledge/platform/next-concept-selection-221-238.md` |
| 240 | `knowledge/platform/evidence-ranked-cycle-221-239.md` |
| 241 | `knowledge/platform/platform-role-vs-driver-behavior.md` |
| 242 | `knowledge/platform/cross-family-grouping-boundary.md` |
| 243 | `knowledge/platform/containment-vs-ownership.md` |
| 244 | `knowledge/platform/parent-vs-provider.md` |
| 245 | `knowledge/platform/plane-first-comparison-checklist.md` |
| 246 | `knowledge/platform/generic-personality-keys.md` |
| 247 | `knowledge/platform/family-specific-key-boundary.md` |
| 248 | `knowledge/platform/ioproviderclass-subclass-caution.md` |
| 249 | `knowledge/platform/personality-provenance-checklist.md` |
| 250 | `knowledge/platform/topology-provenance-checklist.md` |
| 251 | `knowledge/platform/first-release-comparison-boundary.md` |
| 252 | `knowledge/platform/symmetric-evidence-requirement.md` |
| 253 | `knowledge/platform/missing-side-wording.md` |
| 254 | `knowledge/platform/inline-redaction-citation.md` |
| 255 | `knowledge/platform/registry-property-exclusion-list.md` |
| 256 | `knowledge/platform/pci-normalization-boundary.md` |
| 257 | `knowledge/platform/pci-context-requirement.md` |
| 258 | `knowledge/platform/driverkit-pci-split.md` |
| 259 | `knowledge/platform/user-client-adjacency.md` |
| 260 | `knowledge/platform/service-name-redaction-decision.md` |
| 261 | `knowledge/platform/attachment-glossary.md` |

## ARM Bring-Up Focus Outputs

| Output | Purpose |
| --- | --- |
| `knowledge/platform/arm-bridge-readiness.md` | Establishes the future macOS/kernel-to-ARM bridge-readiness objective. |
| `knowledge/platform/arm-bridge-readiness-matrix.md` | Maps macOS layers to translate, emulate, expose, compare, or ignore for a future bridge. |
| `knowledge/platform/arm-macos-bringup-research.md` | Preserves ARM prerequisite mapping without claiming boot viability. |
| `knowledge/platform/arm-release-evidence-ladder.md` | Separates planning, fixture, release-backed, runtime, and target-experiment evidence. |
| `knowledge/platform/arm-artifact-checklist.md` | Lists artifact classes needed for ARM bridge-readiness research. |
| `knowledge/platform/arm-question-map.md` | Keeps ARM sessions tied to one layer, artifact class, and stop condition. |
| `knowledge/platform/arm-processor-scope-boundary.md` | Separates Apple Silicon, generic ARM, non-Apple SoCs, boards, and emulated targets. |
| `knowledge/platform/darwin-vs-macos-arm-boundary.md` | Separates Darwin-level observations from full macOS bridge-readiness claims. |
| `knowledge/platform/arm-soc-dependency-map.md` | Maps SoC dependencies beyond the CPU architecture label. |
| `knowledge/platform/arm-boot-to-iokit-handoff.md` | Defines the boot-to-IOKit handoff as a dependency chain. |
| `knowledge/platform/arm-platform-identity-boundaries.md` | Separates DeviceTree, topology, provider, name-match, and family-key identity surfaces. |
| `knowledge/platform/arm-controller-prerequisites.md` | Prioritizes controller families for ARM bridge-readiness research. |
| `knowledge/platform/arm-secure-boot-source-needed.md` | Tracks secure boot as source-needed, not implementation guidance. |
| `knowledge/platform/arm-target-experiment-boundary.md` | Defines the minimum frame for any future target-processor experiment. |

## Output Rule

Prefer one of these outputs per cycle:

- one atomic note under `knowledge/`;
- one fixture README update;
- one schema guidance note;
- one planning update;
- one reduced dataset with provenance.
