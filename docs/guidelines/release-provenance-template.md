# Release Provenance Template

Copy this template into release-specific notes or dataset READMEs when adding derived metadata.

```md
## Provenance

- Source type:
- Source path or command:
- Acquisition date:
- Host product version:
- Host build version:
- Host kernel version:
- Artifact state: raw | reduced | derived
- Redaction policy:
- Regeneration command:
- Related schema:
- Related tool:

## Redaction Review

- [ ] No local process identifiers.
- [ ] No local MAC addresses.
- [ ] No unredacted IORegistry property dumps.
- [ ] No large binary blobs.
- [ ] No raw installer/IPSW payloads.

## Limits

- What this artifact proves:
- What this artifact does not prove:
- Follow-up needed:
```

## Notes

- Keep provenance close to the artifact.
- Prefer commands that can regenerate reduced metadata.
- Mark unknowns explicitly instead of filling fields by guess.
