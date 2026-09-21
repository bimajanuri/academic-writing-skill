# Protocol — Integrative Review Mode

Mode for *integrative review*: includes qualitative AND quantitative studies (surveys, experimental, etc.) in a single review to produce a comprehensive understanding.

## When This Mode Is Active

The user requests: *integrative review*, a mixed (multi-method) review on the same topic, the keywords "Whittemore", "Knafl", or selects **Integrative Mode** on the Method Selection Router.

## Mandatory Sequence

```text
1. Mode + reporting standard (Whittemore & Knafl) + RQ framework locked (GATE 0) → framework_selection.md
2. Initialization parameters (topic, language, quartile, years, eligibility criteria covering qual + quant)
3. Keywords designed to capture QUALITATIVE AND QUANTITATIVE studies on the same issue
4. LITERATURE SEARCH (ONLY after 1–3 are complete; ≥ 3 databases)
5. Data evaluation + extraction of mixed matrix (QUAL & QUANT separate) + W&K 5-stage synthesis
```

> Integrative inclusion criteria must NOT be only qualitative or only quantitative — this mode needs both types of data for a valid convergent integration.

## Mandatory Framework (Bound)

| Aspect | Framework |
|-------|-----------|
| RQ | Broad question; develop from **PICO/PICo/CCD** depending on the core question (mixing is allowed) |
| Analysis methodology | **Whittemore & Knafl (2005) — 5 stages: Problem Identification → Literature Search → Data Evaluation → Data Analysis → Presentation** |
| Reporting checklist | Report follows mixed-review quality standards (combined PRISMA/SWiM for applicability) |

## Extraction Matrix — Mixed Data (Qual + Quant)

Extraction separates **data types** so they can be synthesized with deductive/inductive analysis:

| No | Authors/Year/Journal/Q | Data type (Qual/Quant/Mixed) | Design & Sample | Findings (qual: themes; quant: effects) | Context | Appraisal quality |
|----|------------------------|-------------------------------|-----------------|----------------------------------|---------|-------------------|

Details: `references/extraction-integrative.md` + template `templates/extraction_integrative.md`.

## Synthesis — Whittemore & Knafl Method (5 Stages)

1. **Problem identification** — formulate a clear question & justify its importance.
2. **Literature search** — explicit search in ≥ 3 databases + duplicate management.
3. **Data evaluation** — categorize studies by quality (not uniformly; low-quality data is eliminated/labeled).
4. **Data analysis** — 4 core steps:
   - **Data reduction** — extract data from each study into codes/themes.
   - **Data display** — arrange codes/themes in a matrix (study × theme).
   - **Data comparison** — patterns, relationships, differences across studies.
   - **Conclusion drawing & verification** — conclusions tested back against the data.
5. **Presentation** — narrate the findings with supporting tables/diagrams.

> This method does not require a single synthesis type: use **inductive thematic** synthesis for qualitative findings, and integrate them with quantitative results through convergent discussion (convergent synthesis).

## Auto-Validation Checklist (Mandatory at the End)

Use `checklists/whittemore_knafl.md` (CHECK per stage) via `templates/reporting_checklist.md`:

- Problem identification clear (RQ, significance).
- Literature search complete: databases, terminology, year range, criteria.
- Data evaluation: quality criteria & inclusion decisions.
- Data analysis: evidence of reduction, display, comparison, verification.
- Presentation: findings integrated, not merely a list of abstracts.
- Save to `reporting_checklist_result.md`.

## Mode-Specific Quality Gate

- [ ] The 5 Whittemore & Knafl stages documented
- [ ] Qualitative data reduced to themes, quantitative data summarized as effects/findings
- [ ] Display matrix (study × theme) available
- [ ] Convergent integration: the discussion explains the relationship between qual & quant data
- [ ] Mode checklist passed (0 "No" items without a plan)

## Mode Output

```text
literature_matrix.md            — mixed data matrix
data_display_matrix.md          — reduction/display matrix
integrative_synthesis.md        — integrative narrative
framework_selection.md          — framework contract
reporting_checklist_result.md   — Whittemore & Knafl validation
```

## Related References

- `references/literature-search.md` — search & Scopus Quartile filtering
- `references/quality-gates.md` — mechanical + semantic gates + red-team
- `checklists/whittemore_knafl.md` — 5-stage checklist