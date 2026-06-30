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

Acquire one legal `15.6` source artifact outside git or identify an existing local source, then derive a minimal kext personality JSON record set with committed provenance.
