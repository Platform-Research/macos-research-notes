# User Client Ownership

## Summary

An `IOUserClient` name should be connected to the service or bundle that owns or exposes it, not treated as a hardware identifier. User clients are platform-adjacent because they can connect user space to services, but their names do not identify buses, devices, or support quality by themselves.

## Context

- Related user-client note: `knowledge/iokit/IOUserClient.md`
- Related service note: `knowledge/iokit/IOService.md`
- Related fixture: `datasets/fixtures/helper-outputs/ioreg-user-client-key-counts.fixture.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 212

## Observations

- `IOService.md` records that `IOServiceOpen()` requests a connection to a kernel service and calls `IOService::newUserClient` in the kernel.
- `kext-personalities.md` records that `IOUserClientClass` can appear in personality metadata.
- The user-client fixture is reduced key-count metadata and does not expose full runtime objects.

## Inferences

- User-client names should be linked back to owning service, bundle, or personality metadata when possible.
- A user client is access-surface metadata, not device identity metadata.
- Platform notes should avoid inferring reachability or authorization from user-client names without entitlement and runtime evidence.

## Unknowns

- The repo does not yet have a fixture that maps one user-client name to a specific owning service.
- DriverKit user-client ownership needs separate treatment.

## Sources

- `knowledge/iokit/IOUserClient.md`
- `knowledge/iokit/IOService.md`
- `knowledge/iokit/kext-personalities.md`
- `datasets/fixtures/helper-outputs/ioreg-user-client-key-counts.fixture.json`
