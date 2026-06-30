# macOS 26.5.1 Local Runtime

## Summary

This note records the local runtime context used by current macOS Research Notes experiments. It is a host observation, not a complete macOS release profile.

## Observed Runtime

- Product name: `macOS`
- Product version: `26.5.1`
- Build version: `25F80`
- Darwin kernel version: `25.5.0`
- Kernel release: `RELEASE_ARM64_T8122`

## Commands

```sh
sw_vers
uname -v
```

## Used By

- IORegistry inventory experiments.
- PCI identity decoding tests.
- Kext personality extraction experiments.
- JSON fixture generation.

## Boundaries

- This note does not describe every macOS 26.5.1 build.
- This note does not prove behavior on Intel Macs.
- This note does not include raw registry dumps.
- This note does not include downloaded artifacts.

## Next Work

- Add release acquisition rules.
- Add release-specific artifact index once acquisition is defined.
