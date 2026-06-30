# macOS 15.6 Source Acquisition Log

## Session

- Date: `2026-06-30`
- Branch: `macos/15.6-source-acquisition`
- Question: What is the smallest legal and reproducible `15.6` source artifact that can unblock personality extraction?
- Output: bounded acquisition update, not an artifact download.
- Stop condition: no raw source artifact is available in this repository and no network acquisition was attempted in this session.

## Candidate Artifact

The smallest useful source target is a reduced kext or DriverKit `Info.plist` metadata set derived from an official Apple `15.6` source artifact.

Preferred source order:

1. A user-provided `15.6` installer or mounted system volume with documented provenance.
2. An official Apple `15.6` installer source acquired into `downloads/` and reduced locally.
3. A local machine already running `15.6`, using read-only extension paths and local runtime commands.

The first committed output should be reduced metadata, not a raw installer, IPSW, or full plist dump.

## Twenty Cycles

| Cycle | Focus | Result |
| --- | --- | --- |
| 1 | Confirm current release state | `macos/15.6/README.md` and `macos/15.6/artifacts.md` remain stubs with no acquired artifacts. |
| 2 | Confirm blocker | Personality extraction tooling exists, but no `15.6` source artifact exists in committed form. |
| 3 | Check allowed sources | `docs/guidelines/release-acquisition.md` allows local commands, local SDK/system files, official Apple sources, and user-provided artifacts. |
| 4 | Check commit boundary | Large raw downloads, IPSWs, installer payloads, raw IORegistry dumps, and binary blobs should not be committed. |
| 5 | Select smallest source class | Reduced `Info.plist` personality metadata is smaller and safer than a raw installer payload. |
| 6 | Select preferred provenance path | A user-provided or official Apple `15.6` source is acceptable only if provenance is recorded. |
| 7 | Avoid unsupported inference | No `15.6` behavior, build number, kernel version, or driver metadata can be claimed yet. |
| 8 | Preserve release-diff status | The `15.6` to `16.0` comparison remains `unresolved`. |
| 9 | Identify first reducible output | A schema-shaped kext personality dataset is the most direct unblocker for the existing experiment. |
| 10 | Identify validation path | Use `.venv/bin/python tools/schema-validate/validate-known-schemas.py` after manifest changes. |
| 11 | Identify redaction rule | Commit only allowlisted matching keys and bundle context; avoid full plist dumps. |
| 12 | Identify local-runtime alternative | If a host running `15.6` is available, record local command provenance before deriving metadata. |
| 13 | Identify installer alternative | If an official installer is acquired, keep raw material in `downloads/` and commit only reduced metadata. |
| 14 | Identify user-provided alternative | If the user supplies a source artifact, document the path, origin, acquisition date, and redaction boundary. |
| 15 | Record explicit non-action | This session does not acquire from the network or add raw artifacts. |
| 16 | Extend manifest coverage | The acquisition manifest should name the missing reduced personality source, not only the installer payload. |
| 17 | Extend artifact index | The release artifact index should point to this acquisition log and candidate order. |
| 18 | Keep scope narrow | No schema redesign or extractor changes are needed until a source artifact exists. |
| 19 | Define next command path | Once a source plist exists, run `tools/kext-personality-inventory/kext-personality-inventory.sh personalities-json <Info.plist>`. |
| 20 | Define done state | The next successful session should add one provenance-backed reduced `15.6` dataset or record the exact acquisition failure. |

## Cycles 21-40

| Cycle | Focus | Result |
| --- | --- | --- |
| 21 | Check local host version | `sw_vers` reports ProductVersion `26.5.1`, BuildVersion `25F80`; this host is not a `15.6` source. |
| 22 | Check local kernel version | `uname -a` reports Darwin Kernel Version `25.5.0`; this supports the host mismatch finding. |
| 23 | Check temporary acquisition area | `downloads/` contains only `.gitkeep`; no temporary `15.6` source is present. |
| 24 | Check release folder contents | `macos/15.6/` contains only stubs and this acquisition log; no source artifact is hidden there. |
| 25 | Evaluate local-runtime candidate | The local-runtime source path is rejected for `15.6` because the host version does not match. |
| 26 | Evaluate user-provided candidate | Still viable, but no user-provided path or mounted source has been supplied in this repository. |
| 27 | Evaluate official-source candidate | Still viable, but no network acquisition was attempted in this session. |
| 28 | Preserve raw-artifact boundary | Even if an installer is acquired later, it should remain outside committed files. |
| 29 | Narrow the first useful dataset | The next committed dataset should be a reduced personality inventory sample or source manifest, not a full extension tree. |
| 30 | Identify evidence command for local source | If a future host runs `15.6`, capture `sw_vers` and `uname -a` before reducing metadata. |
| 31 | Identify evidence command for mounted source | If a mounted source is supplied, record the mount path and the exact `Info.plist` path before extraction. |
| 32 | Identify evidence command for official installer | If an official installer is downloaded, record the URL or acquisition command and local storage path in `downloads/`. |
| 33 | Avoid cross-release contamination | Do not use the current `26.5.1` host's extension metadata as evidence for `15.6`. |
| 34 | Update manifest intent | The manifest should distinguish missing source from a derived host check. |
| 35 | Update artifact index intent | The artifact index should state that the local host was checked and rejected as a `15.6` source. |
| 36 | Keep release diff blocked | No `15.6` to `16.0` comparison can be improved from the `26.5.1` host check alone. |
| 37 | Define smallest next success | One reduced, schema-shaped personality record from a verified `15.6` source would be enough to move from pure blocker to partial acquisition. |
| 38 | Define next failure state | If a supplied source cannot be proven to be `15.6`, record it as unavailable rather than deriving metadata. |
| 39 | Keep tooling unchanged | Existing extraction tooling remains sufficient for the next step once a source plist exists. |
| 40 | Define branch outcome | This branch now records target selection, host rejection, empty acquisition area, and provenance requirements. |

## Cycles 41-60

| Cycle | Focus | Result |
| --- | --- | --- |
| 41 | Check PCI parser context | `experiments/pci-match-string-parser/README.md` defines conservative parsing for `IOPCIMatch`, `IOPCIPrimaryMatch`, and `IOPCIClassMatch`. |
| 42 | Check parser implementation | `tools/pci-match-parse/pci_match_parse.py` exists and parses value/mask tokens without evaluating hardware matches. |
| 43 | Check parser tests | `python3 -m unittest discover -s tools/pci-match-parse` passes 5 tests. |
| 44 | Check schema compatibility | `datasets/schemas/kext-personality.schema.json` allows `family_specific` extension data for parsed PCI tokens. |
| 45 | Check fixture precedent | `datasets/fixtures/parsed-pci-matches/parsed-pci-matches.fixture.json` demonstrates parsed PCI tokens in a reduced personality record. |
| 46 | Preserve evidence boundary | Existing PCI parser fixtures are local runtime examples, not `15.6` release evidence. |
| 47 | Identify first high-value source type | A verified `15.6` `Info.plist` containing PCI match keys would exercise both personality extraction and PCI token parsing. |
| 48 | Identify minimum useful record | One `15.6` personality record with `IOProviderClass: IOPCIDevice` and a PCI match key would be a strong first reduced dataset. |
| 49 | Identify fallback record | If no PCI personality is available in the first source, any allowlisted `IOKitPersonalities` record still improves acquisition state. |
| 50 | Avoid semantic leap | Parsed PCI tokens must not be interpreted as supported hardware or runtime attachment. |
| 51 | Avoid default-mask inference | Do not apply default masks during acquisition unless the source field and rule are explicitly documented. |
| 52 | Keep parser independent | PCI token parsing can be attached to reduced personality records without adding a registry join. |
| 53 | Keep join work blocked | Registry-to-personality joins remain out of scope until `15.6` registry or comparable metadata exists. |
| 54 | Define reduction command | For a verified source plist, use `tools/kext-personality-inventory/kext-personality-inventory.sh personalities-json <Info.plist>`. |
| 55 | Define parser validation command | Use `python3 -m unittest discover -s tools/pci-match-parse` when PCI parsing behavior is relevant. |
| 56 | Define dataset validation command | Use `.venv/bin/python tools/schema-validate/validate-known-schemas.py` after adding reduced JSON. |
| 57 | Identify metadata placement | Put release-specific reduced outputs under `macos/15.6/` or `datasets/` according to the existing promotion path. |
| 58 | Identify manifest update | Add a `reduced` manifest record only after a verified `15.6` source produces committed reduced output. |
| 59 | Update active experiment link | The PCI parser experiment should note its role as an optional enrichment for future `15.6` personality acquisition. |
| 60 | Define next branch threshold | Stay on acquisition until there is a verified source; open parser or join work only if a real `15.6` sample exposes a tooling gap. |

## Local Host Source Check

The current host was checked as a possible local source and rejected for `15.6` acquisition.

```text
Command: sw_vers
ProductName: macOS
ProductVersion: 26.5.1
BuildVersion: 25F80

Command: uname -a
Darwin Kernel Version: 25.5.0
Architecture: arm64
```

Result: local runtime metadata from this host must not be used as evidence for macOS `15.6`.

## Repository Source Check

```text
Command: find downloads -maxdepth 2 -type f -print
Result: downloads/.gitkeep

Command: find macos/15.6 -maxdepth 2 -type f -print
Result: stubs and acquisition log only
```

Result: no committed or temporary `15.6` source artifact is currently available in the repository workspace.

## Parser Readiness Check

The PCI match parser is ready to support a future reduced `15.6` personality dataset, but it does not itself provide `15.6` evidence.

```text
Command: python3 -m unittest discover -s tools/pci-match-parse
Result: 5 tests passed
```

Relevant paths:

- `experiments/pci-match-string-parser/README.md`
- `tools/pci-match-parse/pci_match_parse.py`
- `datasets/fixtures/parsed-pci-matches/parsed-pci-matches.fixture.json`
- `datasets/schemas/kext-personality.schema.json`

Result: if the first verified `15.6` source includes PCI match keys, the existing parser can produce normalized value/mask tokens inside `family_specific.pci_match_tokens`. Those parsed tokens are still parsing evidence only, not hardware support or runtime matching evidence.


## Required Provenance For The Next Artifact

Use this minimum block before committing any reduced `15.6` output:

```text
Artifact:
Source path or command:
Source type: local runtime | local mounted source | official Apple source | user-provided source
Acquisition date:
Host macOS version and build, if local:
State: reduced
Redaction policy:
Output path:
Validation:
Stop condition, if unavailable:
```

## Next Step

Acquire one legal `15.6` source artifact outside git or identify an existing mounted/user-provided source, then derive a minimal kext personality JSON record set with committed provenance. Prefer a source plist with PCI match keys if one is available, because it exercises both personality extraction and existing PCI token parsing. Do not use the current `26.5.1` host as a substitute for `15.6`.
