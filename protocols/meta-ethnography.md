# Protocol — Meta-Ethnography Mode (Qualitative Meta-Synthesis)

Mode for *meta-ethnography*: an interpretive qualitative synthesis that produces a new level of understanding from primary qualitative studies.

## When This Mode Is Active

The user requests: *meta-ethnography*, *meta-synthesis*, *qualitative synthesis*, the keywords "eMERGe", "Noblit & Hare", "reciprocal translation", "constructs", "line-of-argument", or selects **Meta-Ethnography Mode** on the Method Selection Router.

## Mandatory Sequence

```text
1. Mode + reporting standard (eMERGe) + RQ framework (PICo/SPIDER) locked (GATE 0) → framework_selection.md
2. Initialization parameters (topic, language, quartile, years, QUALITATIVE STUDY eligibility criteria)
3. Keywords derived from the phenomenon of interest (PICo/SPIDER)
4. LITERATURE SEARCH (ONLY after 1–3 are complete)
5. Screening + selection of qualitative studies + extraction of 1st/2nd order constructs
```

> **Mode calibration**: meta-ethnography may only select **interpretive qualitative studies** (rich in data/constructs). Exclude quantitative surveys/experiments at the eligibility stage — otherwise the synthesis result is invalid (not meta-ethnography).

## Mandatory Framework (Bound)

| Aspect | Framework |
|-------|-----------|
| RQ | **PICo / SPIDER** (phenomenon of interest in context) |
| Procedure | **7 steps of Noblit & Hare (1988)** |
| Reporting checklist | **eMERGe** (19 criteria, France et al. 2019) |
| Appraisal | **eMERGe critical appraisal / CASP** (qualitative) — quality assessment of primary studies |

### 7 Steps of Noblit & Hare

```text
1. Getting started            — define the intellectual interest / phenomenon
2. Deciding what is relevant  — search & selection of studies (inclusion criteria)
3. Reading the studies        — read in full; record metaphors/concepts (1st & 2nd order)
4. Determining how studies are related  — compare themes across studies
5. Translating studies into one another — Reciprocal Translation (Paper A → Paper B → ...)
6. Synthesising translations  — protect new concepts (3rd order) / line-of-argument
7. Expressing the synthesis   — write the synthesis narrative
```

## Extraction Matrix — Qualitative Constructs

**Mandatory separation between the 2 layers of data** (details: `references/extraction-meta-ethnography.md` + template `templates/extraction_meta_ethnography.md`):

| No | Study (Author/Year/Journal/Q) | 1st Order Constructs | 2nd Order Constructs | Context (setting/population) | Author's key concepts (metaphors) | Quality (CASP/eMERGe) |
|----|------------------------------|----------------------|----------------------|----------------------------|--------------------------------|------------------------|

- **1st Order Constructs** = **original participant quotations** in the source paper ("...") — verbatim, with page/paragraph links.
- **2nd Order Constructs** = the **interpretation by the researcher/author** of participant data (themes, concepts, theories proposed by the author).
- **3rd Order Constructs** = new concepts resulting from **your** synthesis (not from a single paper) — they emerge in the synthesis engine, not in extraction.

## Synthesis — Reciprocal Translation Engine

Use **`engines/reciprocal-translation.md`** mandatorily:

1. Compare 2nd order constructs of Paper A vs Paper B (the first paper = "analog base").
2. Translate the findings of each subsequent paper into the concepts of the earlier paper.
3. Identify: **reciprocal** (mutually supportive themes), **refutational** (contradictory), or **line-of-argument** (complementary, forming a whole).
4. Build **3rd order constructs** that go beyond individual studies.
5. Never mix your own 1st order synthesis results with the authors' 2nd order constructs.

## Auto-Validation Checklist — eMERGe (Mandatory at the End)

Use `checklists/emerge.md` (19 criteria) via `templates/reporting_checklist.md`:

- eMERGe phases: Phase 1 Selecting meta-ethnography → Phase 2 Deciding what is relevant → Phase 3 Reading included studies → Phase 4 Determining how studies are related → Phase 5 Translating studies into one another → Phase 6 Synthesising translations → Phase 7 Expressing the synthesis → Phase 8 Reflecting on the process.
- Each criterion is answered (Yes/Not applicable); "No" → remediation plan.
- Save to `reporting_checklist_result.md`.

## Mode-Specific Quality Gate

- [ ] The 7 Noblit & Hare steps documented step by step
- [ ] 1st & 2nd order constructs extracted separately and not reversed
- [ ] 3rd order constructs produced through Reciprocal Translation (not summarization)
- [ ] Reciprocal vs refutational vs line-of-argument identified
- [ ] All 19 eMERGe criteria passed (0 "No" items without a plan)

## Mode Output

```text
literature_matrix.md            — constructs matrix (1st/2nd order)
constructs_1st_2nd.md           — separate construct lists per study
synthesis_translation.md        — reciprocal translation results + 3rd order
line_of_argument.md             — synthesis narrative (line-of-argument if present)
framework_selection.md          — PICo/SPIDER + Noblit & Hare framework contract
reporting_checklist_result.md   — eMERGe validation
```

## Related References

- `engines/reciprocal-translation.md` — core engine of this mode
- `references/extraction-meta-ethnography.md` — construct extraction guide
- `checklists/emerge.md` — 19 eMERGe criteria