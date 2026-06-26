# macOS Release Metadata

## Purpose

This directory organizes release-specific metadata for Darwin Collective. Keep release folders focused on derived metadata, indexes, and notes that can be traced back to local artifacts or documented acquisition steps.

## Current Local Runtime

- Product version: `26.5.1`
- Build version: `25F80`
- Darwin kernel: `25.5.0`
- Kernel release string observed locally: `RELEASE_ARM64_T8122`

These values describe the current research host only. They are not a complete release index.

## Existing Release Folders

- `macos/15.6/`
- `macos/16.0/`

## What Belongs Here

- release-specific artifact indexes;
- extracted plist or registry metadata after redaction;
- release comparison manifests;
- notes about SDK, kernel, and DriverKit metadata used by experiments.

## What Does Not Belong Here

- raw downloads;
- large binaries;
- unredacted IORegistry dumps;
- local process data;
- conclusions that belong in `knowledge/` or `docs/`.

## Related Tools

- `tools/ioreg-inventory/`
- `tools/kext-personality-inventory/`
- `tools/schema-validate/`
- `tools/provider-class-join/`

## Next Work

- Create a local runtime note for macOS `26.5.1`.
- Add release-specific metadata indexes after acquisition rules are defined.
