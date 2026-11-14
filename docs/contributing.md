# Contributing

[← Back to README](../README.md)

## Adding a provider guide

1. Copy an existing file from `providers/` as a template.
2. Keep the section order: **Overview → Key tools → Example repo → Specialized repos →
   Quick start → Strategic note**.
3. Every tool in the table must have a one-line purpose. No marketing adjectives.
4. The example repo must be (a) officially maintained or widely used, and (b) runnable.
5. Add a row to `comparisons/provider-matrix.md` and the table in `README.md`.

## Style rules

- One H1 per file; sentence-case headings.
- Use tables for tool inventories, bullets for anything longer than a sentence.
- Link out to source repositories rather than copying their content.
- Prefer concrete numbers over qualitative claims; cite the source inline.

## Before opening a PR

```bash
make lint
```
