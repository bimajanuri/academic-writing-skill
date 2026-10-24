# Academic Output Guardrails

Run these validators after revision and before formatting or delivery. They complement, but do not replace, the selected reporting checklist.

## Claim and evidence parity

- Every major manuscript claim maps to evidence in the claim-evidence map.
- Claim strength matches the study design and source wording; association is not upgraded to causation.
- Modality, scope, limitations, population, sample, time frame, and comparison are preserved.
- Abstract and introduction claims are supported by results or cited literature.
- Conclusions do not introduce new findings, explanations, or recommendations without support.

## Citation and source integrity

- Every borrowed technical, factual, numerical, or interpretive claim has an appropriate citation.
- Every in-text citation has one bibliography entry, and every bibliography entry is cited or explicitly marked unused.
- DOI, title, author, year, journal, and page details match a verifiable source.
- Quotes are verbatim, marked as quotations, and include page or location when available.
- No invented references, DOI, page number, dataset, participant, result, or quotation.

## Data and manuscript integrity

- Numbers, units, percentages, dates, sample sizes, statistical values, and table/figure labels match source data.
- Technical terms, abbreviations, constructs, and variables use one stable name.
- English-US spelling and grammar are consistent.
- Missing information is marked `[DATA]`, `[UNVERIFIED]`, or `[NEEDS AUTHOR CONFIRMATION]`.
- Markdown, LaTeX, DOCX conversion targets, code, and links are not silently damaged.

## Failure actions

| Failure | Action |
|---|---|
| Unsupported or fabricated claim | Stop delivery; remove it or mark `[NEEDS EVIDENCE]`. |
| Citation/DOI mismatch | Mark `UNVERIFIED — check manually`; do not repair from memory. |
| Lost or changed quotation | Restore source wording and citation. |
| Modality or causality drift | Rewrite conservatively and recheck the claim-evidence map. |
| Grammar fix changes meaning | Revert the fix and flag it for author review. |
| Missing method/data detail | Use an explicit placeholder, never a plausible invention. |

## Status record

```text
claims_checked: N
claims_without_evidence: N
citations_checked: N
citation_mismatches: N
literal_data_mismatches: N
fabrication_findings: N
flags: N
status: PASS | PASS_WITH_FLAGS | FAIL
```

`PASS_WITH_FLAGS` is allowed only for explicitly reported source or author confirmations that do not represent fabricated output.
