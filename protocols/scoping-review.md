# Protocol — Scoping Review Mode

Mode for *scoping review*: mapping the breadth of literature, concepts, and types of evidence in a field — assessing scope, not effect quality.

## When This Mode Is Active

The user requests: *scoping review*, *scope the evidence*, *literature mapping*, the keywords "PRISMA-ScR", "PCC", "JBI", or selects **Scoping Mode** on the Method Selection Router.

## Mandatory Sequence

```text
1. Mode + reporting standard (PRISMA-ScR) + PCC framework locked (GATE 0) → framework_selection.md
2. Initialization parameters (topic, language, quartile, years, BROAD eligibility criteria for scopING)
3. Keywords derived from PCC elements (Population, Concept, Context)
4. LITERATURE SEARCH (ONLY after 1–3 are complete)
5. Screening + dedup + PRISMA flow + PCC extraction matrix
```

> The scoping search target = studies that **map concepts/contexts/methodologies broadly**; the volume may be larger. Do not restrict to effect studies (e.g., do not filter for RCTs only in a scoping review if the concept-mapping question requires all designs).

## Mandatory Framework (Bound)

| Aspect | Framework |
|-------|-----------|
| RQ | **PCC — Population, Concept, Context** |
| Procedure | JBI Manual for Evidence Synthesis (scoping review chapter) + 4-Phase Flow |
| Reporting checklist | **PRISMA-ScR** (22 items, Tricco et al. 2018) |
| Appraisal | Not mandatory (many scoping reviews do not assess quality); if done, record it as an optional PRISMA-ScR item |

## Scoping-Specific Extraction Matrix

Differs from the 7-field SLR. The extraction focus is **mapping**, not effect evaluation:

| No | Authors/Year | Population (P) | Concept (C) examined | Context (C): geographic/location | Type of Methodology/Design | Main findings (summary) | Gap/research direction | DOI/Publisher & Quartile |

Extraction details: `references/extraction-scoping.md` + template `templates/extraction_scoping.md`.

## Screening Process

1. Deduplication; record the number.
2. Title/abstract screening (2 reviewers, adjudication when needed).
3. Full-text review — record the characteristics of each study.
4. PRISMA flow documentation (scoping variant: the included phase is joint, appraisal optional).

## Synthesis — Conceptual Mapping Engine

**Concepts are synthesized through mapping, NOT meta-analysis.** Use `engines/conceptual-mapping.md`:

- Group studies into a **concept taxonomy** (variable/theme clusters).
- Map the geographic distribution + publication timeline.
- Summary table of "characteristics of included studies".
- Concept/co-occurrence visualization if requested by the user.

## Auto-Validation Checklist (Mandatory at the End)

Run the **PRISMA-ScR (22 items)** checklist — use `checklists/prisma_scr.md` + `templates/reporting_checklist.md`:

- All items must be answered (Yes / Not applicable); any "No" item → remediation plan.
- Ensure the RQ is written in PCC elements.
- Save to `reporting_checklist_result.md`.

## Mode Quality (Avoiding Pitfalls)

- Do NOT claim intervention quality/effectiveness (that is the SLR domain).
- Do NOT claim exhaustiveness when the search strategy is limited (report the trade-off).
- Do NOT write "systematic scoping review" as a phrase.

## Mode Output

```text
literature_matrix.md            — PCC matrix
scoping_map.md                  — concept/geographic/timeline taxonomy
characteristics_table.md        — study characteristics
framework_selection.md          — PCC framework contract
reporting_checklist_result.md   — PRISMA-ScR validation
```

## Related References

- `references/literature-search.md` — search & Scopus Quartile filtering
- `engines/conceptual-mapping.md` — concept-mapping synthesis engine
- `checklists/prisma_scr.md` — 22 PRISMA-ScR items