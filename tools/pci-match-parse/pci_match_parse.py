#!/usr/bin/env python3
"""Parse PCI personality match strings into value/mask tokens."""

from __future__ import annotations

import argparse
import json
import re


TOKEN_RE = re.compile(r"^(0x[0-9a-fA-F]+)(?:&(0x[0-9a-fA-F]+))?$")


def normalize_hex(value: str) -> str:
    return f"0x{int(value, 16):x}"


def parse_match_string(key: str, value: str) -> list[dict[str, object]]:
    records: list[dict[str, object]] = []
    for index, token in enumerate(value.split()):
        match = TOKEN_RE.fullmatch(token)
        if not match:
            records.append({
                "source_key": key,
                "raw_token": token,
                "token_index": index,
                "parse_state": "unsupported",
            })
            continue
        record: dict[str, object] = {
            "source_key": key,
            "raw_token": token,
            "token_index": index,
            "parse_state": "parsed",
            "normalized_value": normalize_hex(match.group(1)),
        }
        if match.group(2):
            record["normalized_mask"] = normalize_hex(match.group(2))
        records.append(record)
    if not records:
        records.append({
            "source_key": key,
            "raw_token": "",
            "token_index": 0,
            "parse_state": "ambiguous",
        })
    return records


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("key", choices=["IOPCIMatch", "IOPCIPrimaryMatch", "IOPCISecondaryMatch", "IOPCIClassMatch"])
    parser.add_argument("value")
    args = parser.parse_args()
    print(json.dumps(parse_match_string(args.key, args.value), indent=2, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
