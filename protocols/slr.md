# Protocol — SLR Mode (Systematic Literature Review)

Default mode for quantitative and qualitative *systematic review* following the standard PRISMA workflow.

## When This Mode Is Active

The user requests: *systematic review*, *meta-analysis*, *SLR*, the keyword "PRISMA", *quantitative synthesis*, quantitative *evidence synthesis*, or selects **SLR Mode** on the Method Selection Router.

## Mandatory Sequence

```text
1. Mode + reporting standard + RQ framework locked (GATE 0)   → framework_selection.md
2. Initialization parameters (topic, language, quartile, years, eligibility criteria)
3. Search keywords derived from PICO/PICOS
4. LITERATURE SEARCH (ONLY after 1–3 are complete)
5. 2-reviewer screening + PRISMA flow + shared Paper Review fields + SLR-specific extraction matrix
```

> SLR search results must focus on studies with synthesizable effect sizes/evidence (quantitative) or thematic qualitative findings — adjust the eligibility criteria in Step 2 accordingly.

## Mandatory Framework (Bound)

| Aspect | Framework |
|-------|-----------|
| RQ | **PICO / PICOS** (quantitative); **PICo / SPIDER** (qualitative/mixed) |
| Search procedure | Systematic Review Conduct (Cochrane/JBI-aligned) + PRISMA-P + 4-Phase PRISMA Flow |
| Reporting checklist | **PRISMA 2020** (+ PRISMA-S, + PRISMA-Abstracts) |
| Appraisal tools | RoB 2 / ROBINS-I / NOS / JBI CA — depending on design; AMSTAR 2; GRADE |

> Full framework references are in `references/research-frameworks.md`.

## Extraction Matrix (Shared Paper Review Contract + SLR Fields)

Use `papers.json` as the master dataset. Retain the shared Paper Review fields—Purpose, Method,
Key Findings, Limitations, Gaps, Theory Used, Novelty/Contribution, Future Studies, DOI & Publisher,
and provenance—then add the SLR-specific effect-size, appraisal, and eligibility fields. Details:
`references/explore-data-contract.md`, `references/literature-matrix.md`, and
`templates/literature_matrix_template.md`.

| No | Title & Authors | Journal | Year | Purpose | Method | Key Findings | Limitations | Gaps | Theory | Novelty | Future Studies | DOI & Publisher | Provenance | SLR fields |

- Separate **quantitative** extraction (effect sizes/statistics → feeding meta-analysis) and **qualitative** extraction (themes → JBI/ENTREQ) for mixed studies.
- Every row must carry a verified citation status and DOI.

## Screening Process (Mandatory to Report)

1. Deduplication → record the number of unique records.
2. **Title/abstract** screening by 2 independent reviewers + adjudication.
3. **Full-text** screening with reasons for exclusion.
4. Document the counts for each phase in the **PRISMA Flow** (Identification → Screening → Eligibility → Included).

## Synthesis

- Quantitative: meta-analysis (pooled effect, heterogeneity, subgroup, sensitivity), or *narrative synthesis* when meta-analysis is not feasible (SWiM).
- Qualitative: thematic/descriptive synthesis — **not** reciprocal translation (that belongs to Meta-Ethnography Mode).

## Auto-Validation Checklist (Mandatory at the End)

Run the **PRISMA 2020 (27 items)** checklist — items in `references/research-frameworks.md` §3A and EQUATOR/prisma-statement.org — via `templates/reporting_checklist.md`:

- Every claim that requires a reference is cited.
- Each checklist item is answered Yes / Not applicable; any "No" item → remediation plan.
- PRISMA flow is completed (+ PRISMA-S if the journal requires detailed search reporting).
- Save the results to `reporting_checklist_result.md`.

## Mode-Specific Quality Gate

- [ ] PICO/PICOS framework used and recorded in `framework_selection.md`
- [ ] Shared Paper Review fields and SLR-specific fields complete (or "—" when unavailable)
- [ ] 2-reviewer screening + adjudication documented
- [ ] PRISMA flow with all 4 phases and consistent numbers
- [ ] PRISMA 2020 check passed (0 "No" items without a plan)

## Mode Output

```text
papers.json                     — master metadata, provenance, and SLR extraction dataset
literature_matrix.md            — shared Paper Review fields + SLR matrix
prisma_flow.md                  — diagram/flow of article counts
risk_of_bias_table.md           — appraisal results
framework_selection.md          — mode framework contract
reporting_checklist_result.md   — PRISMA 2020 validation
```

## Related References

- `references/literature-search.md` — search & Scopus Quartile filtering
- `references/quality-gates.md` — mechanical + semantic gates + red-team
- `checklists/prisma_2020.md` — PRISMA 2020 items (official fallback: prisma-statement.org)