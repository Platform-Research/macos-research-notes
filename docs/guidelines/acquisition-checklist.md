# Acquisition Checklist

Use this checklist before adding release artifacts or derived metadata.

## Before Acquisition

- [ ] Branch name matches the artifact scope.
- [ ] Source is allowed by `docs/guidelines/release-acquisition.md`.
- [ ] Expected output folder is known.
- [ ] Raw artifact size is understood.
- [ ] Redaction plan is clear.

## During Acquisition

- [ ] Store raw temporary files under `downloads/` only.
- [ ] Record source command, URL, or path.
- [ ] Record host version when using local artifacts.
- [ ] Prefer derived metadata over raw artifacts.

## Before Commit

- [ ] No large raw downloads are staged.
- [ ] No unredacted IORegistry dumps are staged.
- [ ] No process identifiers or local MAC addresses are staged.
- [ ] Provenance is recorded.
- [ ] JSON fixtures parse with `tools/schema-validate/validate-json.sh`.

## Stop Conditions

- Source provenance is unclear.
- Redaction cannot be checked.
- The artifact is too large to review.
- The work would require risky system changes.
