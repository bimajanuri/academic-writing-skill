# Stage 1 Explore Data Contract

This contract aligns Academic Writing's exploration stage with the Paper Review skill. It defines
one acquisition and extraction model for online searches, local papers, and hybrid reviews while
leaving synthesis criteria to the selected Academic Writing mode.

## Input modes

| Mode | Acquisition | Preferred evidence |
|---|---|---|
| **Search** | OpenAlex, Semantic Scholar, Crossref, DOAJ, PubMed, arXiv, publishers, or web tools | Verified metadata and abstract |
| **Folder** | Recursive `.pdf` and `.tex` scan | Readable local full text |
| **Hybrid** | Merge Search and Folder results | Local full text overrides incomplete search metadata |

Record the selected mode, topic, queries, date, sources, target count, year range, language,
document type, quartile filter, and inclusion/exclusion rules in `papers.json.meta`.

## Master `papers.json`

`papers.json` is the single source of truth for the Stage 1 matrix and any export. Keep
bibliographic metadata separate from extracted fields:

```json
{
  "meta": {
    "mode": "Search",
    "topic": "...",
    "queries": ["..."],
    "date": "YYYY-MM-DD",
    "target": 20,
    "sources": ["OpenAlex", "Crossref"],
    "year_range": "YYYY–YYYY",
    "quartile_filter": "No filter",
    "inclusion_rules": ["..."],
    "exclusion_rules": ["..."]
  },
  "papers": [
    {
      "id": "...",
      "title": "...",
      "authors": ["Surname, Given"],
      "year": "",
      "journal": "",
      "volume": "",
      "issue": "",
      "pages": "",
      "doi": "",
      "publisher": "",
      "url": "",
      "abstract": "",
      "document_type": "",
      "quartile": "Q? [UNVERIFIED]",
      "verification_status": "VERIFIED | UNVERIFIED | LOCAL_FILE",
      "relevance_score": null,
      "provenance": {
        "title": "metadata",
        "abstract": "AB"
      },
      "purpose": "—",
      "method": "—",
      "key_findings": "—",
      "limitations": "—",
      "gaps": "—",
      "theory": "—",
      "novelty": "—",
      "future_work": "—",
      "mode_fields": {},
      "custom": {}
    }
  ]
}
```

Unavailable bibliographic values remain empty strings in JSON so they do not enter citation
exports; unavailable extraction values render as `—`.

## Candidate and verification rules

1. Search/Hybrid mode collects approximately 1.5× the target before screening.
2. Relevance is scored from title and abstract; retain scores ≥7/10 unless the mode protocol says otherwise.
3. Deduplicate by DOI, then normalized title. Record discarded duplicates and the retained source.
4. Verify DOI and metadata against Crossref, the publisher, or the readable local file.
5. Mark unresolved sources `UNVERIFIED`; never infer DOI, journal, year, quartile, or publisher.
6. Keep non-Scopus and preprint records separate when the selected filter excludes them.

## Provenance rules

Every factual sentence in an extraction field ends with a marker:

```text
[AB]      abstract or search metadata
[I-2]     Introduction, paragraph 2
[M-3]     Methods, paragraph 3
[R-1]     Results, paragraph 1
[D-2]     Discussion, paragraph 2
[L-1]     Limitations, paragraph 1
[C-1]     Conclusion, paragraph 1
[F-1]     Future Work, paragraph 1
```

Search-only records may use `[AB]`, but must not claim unavailable full-text methods, findings,
limitations, or future work. Use `—` for unavailable information and `(summarized)` only for an
explicitly labeled inference.

## Stage 1 artifact contract

```text
candidate_papers.md         — candidates, relevance, quartile, verification, and dedup status
papers.json                 — master metadata and extraction dataset
literature_matrix.md        — mode-specific matrix rendered from papers.json
gap_matrix.md               — evidence-backed gap matrix
gap_analysis.md             — gap analysis and citations
research_map.md             — research-positioning map
framework_selection.md      — locked method and search contract
```

The mode-specific matrix may add fields, but it must retain the shared Paper Review fields:
Purpose, Method, Key Findings, Limitations, Gaps, Theory Used, Novelty/Contribution, and Future
Studies. Do not create a second manually maintained source of truth.
