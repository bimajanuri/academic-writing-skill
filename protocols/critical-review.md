# Protocol — Critical Review Mode

Mode for *critical review / critical appraisal synthesis*: assessing and critiquing studies from epistemological, methodological, and perspective-bias standpoints — not merely summarizing.

## When This Mode Is Active

The user requests: *critical review*, *critical appraisal*, a *critique* of the literature, the keywords "epistemology", "theoretical assumptions", "perspective bias", or selects **Critical Mode** on the Method Selection Router.

> Note: This mode is cross-procedural — it can stand alone OR complement another mode as an appraisal layer.

## Mandatory Sequence

```text
1. Mode + reporting standard (appraisal checklist) + critical RQ locked (GATE 0) → framework_selection.md
2. Initialization parameters (topic, language, quartile, years, type of paper to be appraised)
3. Keywords derived from the topic + target study type
4. LITERATURE SEARCH (ONLY after 1–3 are complete)
5. Per-study appraisal (epistemological/methodological/bias) + ranking synthesis
```

> Critical search target = papers that **state methods & assumptions explicitly** (appraisable). Prioritize full-text availability & methodological transparency.

## Mandatory Framework (Bound)

| Aspect | Framework |
|-------|-----------|
| RQ | Constructed explicitly (5W+1H / critical questions) — focused on "with what assumptions", "what are the strengths", "what is occluded" |
| Procedure | Critical appraisal (CASP / JBI CA) + peer critique stance |
| Reporting checklist | Adapted: appraisal checklist (no single EQUATOR checklist; use SRQR/COREQ for qualitative and STROBE for quantitative) |

## Extraction Matrix — Critical Appraisal

The extraction focus is **assumptions, limitations, and biases** (not metadata):

| No | Authors/Year/Journal/Q | Epistemological assumptions (paradigm) | Design strengths | Methodological limitations | Perspective bias / position | Trustworthy findings (confidence) |
|----|------------------------|----------------------------------|------------------|---------------------|--------------------------|-----------------------------------------|

Details: `references/extraction-critical.md` + template `templates/extraction_critical.md`.

## Analysis (Primary Engine)

Not synthesized as an aggregate; a **per-study appraisal** is performed and then compared:

1. **Epistemological assumptions:** paradigm (positivist / interpretivist / critical); the ontological & epistemological assumptions visible in the text.
2. **Methodological limitations:** sampling, validity/reliability (quant) and trustworthiness (qual), transferability.
3. **Perspective bias:** author position, conflicts of interest, theoretical lenses influencing interpretation.
4. **Appraisal synthesis:** confidence ranking (high/medium/low) + consistent vs contradictory findings.

## Auto-Validation Checklist (Mandatory at the End)

Use `checklists/critical_review.md` (CLEAR FLOW — Critique Lenses for Evaluating And Rating) via `templates/reporting_checklist.md`:

Save to `reporting_checklist_result.md`.

## Mode-Specific Quality Gate

- [ ] Every study appraised through epistemological, methodological, and bias lenses
- [ ] Confidence level of findings (conf) rated, not assumed
- [ ] Criticism is constructive & grounded in textual evidence (not ad hominem)
- [ ] Mode checklist passed (0 "No" items without a plan)

## Mode Output

```text
literature_matrix.md            — critical appraisal matrix
appraisal_summary.md            — per-study confidence ranking
critical_synthesis.md           — critique narrative + trustworthy findings
framework_selection.md          — framework contract
reporting_checklist_result.md   — critical review validation
```

## Related References

- `references/literature-search.md` — search & Scopus Quartile filtering
- `references/quality-gates.md` — mechanical + semantic gates + red-team