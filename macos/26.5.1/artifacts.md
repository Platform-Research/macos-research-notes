# macOS 26.5.1 Artifact Index

## Summary

This is a stub index for local macOS `26.5.1` research artifacts. It tracks reduced or derived metadata only; raw artifacts should stay out of git unless explicitly scoped and approved.

## Runtime Commands

- `sw_vers`
- `uname -v`

## Local Metadata Sources Used

- `/System/Library/Extensions/*/Contents/Info.plist`
- `/System/Library/DriverExtensions/*.dext/Info.plist`
- IORegistry read-only output through `ioreg`
- local Xcode or SDK headers when present

## Derived Datasets And Fixtures

- `datasets/schemas/`
- `datasets/examples/schema-validation/`
- `datasets/fixtures/`

## Related Tools

- `tools/ioreg-inventory/`
- `tools/kext-personality-inventory/`
- `tools/pci-id-decode/`
- `tools/pci-match-parse/`
- `tools/provider-class-join/`

## Not Yet Acquired

- release installer metadata;
- IPSW metadata;
- dyld shared cache metadata;
- kernel collection metadata;
- cross-release diff outputs.

## Rules

Follow `docs/guidelines/release-acquisition.md` before adding any raw or downloaded artifact.
