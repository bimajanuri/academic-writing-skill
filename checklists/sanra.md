# Checklist — SANRA (Narrative Review, 6 Items)

Mandatory auto-validation for Narrative Review Mode. Source: Baethge C, et al. (2019). *Scale for the Assessment of Narrative Review Articles* (SANRA). 6 items, scored 0–2 per item (total 0–12).

## Checklist & Scoring

| # | Criterion | Score 0 | Score 1 | Score 2 | Your score |
|---|-----------|---------|---------|---------|------------|
| 1 | Importance of the question/claim | Not explained | Partially explained | Explained with strong data/context | |
| 2 | Statement of the question/aim & scope | Unclear | Mentioned but undefined | Aim & scope explicitly defined | |
| 3 | Statement of the search strategy | None | Partially described | Search strategy explicitly described | |
| 4 | Referencing | Little/none | Partial | Relevant literature comprehensively cited | |
| 5 | Scientific reasoning | Claims without argument | Brief argumentation | Critical interpretation & full argumentation | |
| 6 | Data presentation & limitations | No tables/figures & limitations | Partial | Helpful tables/figures + limitations discussed | |

## Threshold

| Total Score (0–12) | Status |
|--------------------|--------|
| ≥ 8 | Pass — ready to proceed |
| 6–7 | Improve weak items before proceeding |
| < 6 | Framework not yet viable → improve substance |

## Auto-Validation Rule

- All items scored 0–2; total computed.
- Item 3 (search strategy) **must not be scored 0** — narrative reviews must still be transparent about methods.
- Items marked "No"/low score → remediation plan; status: `complete` / `needs_fix`.

## Output

```text
reporting_checklist_result.md  — SANRA mapping results + score
```