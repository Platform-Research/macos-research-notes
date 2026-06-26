#!/usr/bin/env python3
"""Emit a minimal unresolved release diff document."""

from __future__ import annotations

import argparse
import json


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("from_release")
    parser.add_argument("to_release")
    args = parser.parse_args()
    print(json.dumps({
        "schema_version": "0.1.0",
        "source": {
            "from_release": args.from_release,
            "to_release": args.to_release,
            "policy": "metadata-only",
            "provenance": "Generated unresolved prototype; no raw artifacts compared.",
        },
        "records": [{
            "record_kind": "release_diff",
            "state": "unresolved",
            "subject": "release-metadata",
            "field": "records",
            "from_value": None,
            "to_value": None,
            "evidence": [
                f"macos/{args.from_release}/",
                f"macos/{args.to_release}/",
            ],
            "notes": "Comparable reduced metadata has not been acquired for both releases.",
        }],
        "notes": [
            "Prototype output only. This does not claim a real release difference."
        ],
    }, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
