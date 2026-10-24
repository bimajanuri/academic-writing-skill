# Literature Matrix Template

Render this table from `papers.json` for the Stage 1 output. Every paper occupies one row.
Fill in `—` when data is not available in the paper. Quartile: Q1–Q4 (Scopus/SJR) or
`non-Scopus` / `Q? [UNVERIFIED]`. Every factual extraction sentence requires a provenance marker.

## Search Metadata

- **Topic**: [research topic]
- **Scopus Quartile filter**: [Q1 / Q2 / Q3 / Q4 / No filter]
- **Year range**: [YYYY–YYYY]
- **Search date**: [date]
- **Source**: [OpenAlex / Semantic Scholar / combination]
- **Input mode**: [Search / Folder / Hybrid]
- **Target / candidate count**: [target] / [candidates]
- **Deduplication rule**: [DOI, then normalized title]
- **Verification rule**: [Crossref / publisher / local file]

## Matrix Table

| No | Title & Authors | Journal | Year | Purpose | Method (Variables/Samples) | Key Findings | Limitations | Gaps | Theory Used | Novelty/Contribution | Future Studies | DOI & Publisher | Provenance |
|----|-----------------|---------|------|---------|---------------------------|---------------|-------------|-------|-------------|----------------------|----------------|----------------|------------|
| 1  | [Author(s)] — "[Title]" | [Journal] | [Year] | [Purpose] [AB] | [Method] [M-1] | [Findings] [R-1] | [Limitations] [L-1] | [Gap] [I-2] | [Theory] [I-3] | [Contribution] [C-1] | [Future work] [F-1] | DOI: ... \| [Publisher] \| Q[1-4] | [AB] [M-1] [R-1] |
| 2  | | | | | | | | | | | | | |
| ... | | | | | | | | | | | | | |

## Search Triage Notes

Out of [X] candidates:
- Passed relevance ≥ 7/10: [Y] papers
- Deduplicated: [D]
- DOI/source verified: [V] | UNVERIFIED: [U] | Local file: [L]
- Scopus Q1: [a] | Q2: [b] | Q3: [c] | Q4: [d]
- Non-Scopus: [e]
- Excluded (relevance < 7): [f]

## Legend

- `—` : data not available / not present in the paper
- `(summarized)` : field inferred from inference (not explicit)
- `(not explicit)` : not explicitly stated in the paper
- `UNVERIFIED` : the existence of the paper/DOI has not yet been verified — check manually