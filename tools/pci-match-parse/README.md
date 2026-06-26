# PCI Match Parse Tool

## Summary

`pci_match_parse.py` parses PCI personality match strings into normalized value and optional mask tokens. It does not decide whether a token matches a registry device.

## Commands

Parse a plain token:

```sh
tools/pci-match-parse/pci_match_parse.py IOPCIMatch '0x2002106b'
```

Parse a masked class match:

```sh
tools/pci-match-parse/pci_match_parse.py IOPCIClassMatch '0x01800200&0xffffff00'
```

Run tests:

```sh
python3 -m unittest discover -s tools/pci-match-parse
```

## Supported Forms

- `0x2002106b`
- `0x400014e4&0xf000ffff`
- `0x01800200&0xffffff00`
- whitespace-separated lists of supported tokens

## Output Fields

- `source_key`
- `raw_token`
- `token_index`
- `parse_state`
- `normalized_value`
- `normalized_mask`, when present

## Boundaries

- Parsing is not matching.
- The tool does not split vendor and device IDs.
- The tool does not apply default masks.
- Unsupported tokens are reported instead of guessed.

## Next Work

- Schema validation implementation if dependency policy allows.
- Provider-class candidate join tool.
- Topology fixture from `topology-json`.
