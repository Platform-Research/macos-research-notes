# User Client Adjacency

## Summary

User-client fields belong in platform notes as service adjacency, not as device identity. They can show where user space may connect to a service, but they do not establish hardware family or access reachability by themselves.

## Context

- Related user-client note: `knowledge/iokit/IOUserClient.md`
- Related fixture: `datasets/fixtures/helper-outputs/ioreg-user-client-key-counts.fixture.json`
- Related review guide: `docs/guidelines/platform-review-checklist.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 259

## Guidance

- Link user-client fields to owning service or personality when possible.
- Avoid treating user-client names as hardware identifiers.
- Keep reachability and authorization out of metadata-only notes.

## Sources

- `knowledge/iokit/IOUserClient.md`
- `datasets/fixtures/helper-outputs/ioreg-user-client-key-counts.fixture.json`
- `docs/guidelines/platform-review-checklist.md`
