# Protocol — Narrative Review Mode

Mode for *narrative / traditional review*: a narrative literature review emphasizing the organization of ideas and the development of academic argumentation.

## When This Mode Is Active

The user requests: *narrative review*, *narrative literature review*, *qualitative narrative review*, a non-systematic review, the keyword "SANRA", or selects **Narrative Mode** on the Method Selection Router.

## Mandatory Sequence

```text
1. Mode + reporting standard (SANRA) + RQ framework (5W+1H/CIMO) locked (GATE 0) → framework_selection.md
2. Initialization parameters (topic, language, quartile, years)
3. Keywords derived from the core topic + debate areas
4. LITERATURE SEARCH (ONLY after 1–3 are complete) + rational source selection
5. Extraction of argument positions + Academic Debate synthesis
```

> Narrative search results must include papers that **state positions/claims/debates** (not only empirical results) so that the Academic Debate engine can cluster pro/con.

## Mandatory Framework (Bound)

| Aspect | Framework |
|-------|-----------|
| RQ | **5W+1H / CIMO** (or ECLIPSe for policy/services) |
| Reporting checklist | **SANRA** (*Scale for the Assessment of Narrative Review Articles*, 6 items) |
| Procedure | Explicit searching + rational selection (not the full PRISMA workflow) |

> SANRA demands **methodological honesty**: explain the search and study selection criteria even though it is not an SLR. Do not pretend to be systematic.

## Extraction Matrix — Argument Positions

The extraction focus is **author position**, not variable metadata:

| No | Authors/Year/Journal/Q | Author's Claim/Position | Supporters (evidence/ref) | Opponents/against | Context/domain | Claim strength |
|----|----------------------|----------------------|----------------------|------------------|----------------|----------------|

Details: `references/extraction-narrative.md` + template `templates/extraction_narrative.md`.

## Synthesis — Academic Debate Engine

Use **`engines/academic-debate.md`** mandatorily:

1. Group papers into **pro/con/neutral positions** relative to the core question.
2. Build a **timeline of idea development** (who laid the foundation, who expanded it, who challenged it).
3. Identify open debates, consensus, and inconsistencies across groups.
4. The narrative follows the flow: origin of the idea → development → contestation → debate synthesis.

## Auto-Validation Checklist — SANRA (Mandatory at the End)

Use `checklists/sanra.md` (6 items scored 0–2) via `templates/reporting_checklist.md`:

1. Justification of the importance of the question/claim.
2. Statement of the question/objective & definition of scope (an extension of SANRA).
3. Description of the search strategy (must be explicit even if non-systematic).
4. Referencing & mention of relevant literature.
5. Scientific reasoning & argumentation.
6. Appropriate data presentation (tables/figures) + limitations.

Save the score to `reporting_checklist_result.md`.

## Mode-Specific Quality Gate

- [ ] Search strategy explained (even if non-systematic) — not hidden
- [ ] Pro/con positions analyzed, not merely summarized per paper
- [ ] Timeline/evolution of ideas constructed
- [ ] SANRA score ≥ agreed threshold (default: ≥ 60% of the maximum score)
- [ ] Does not claim "systematic" / "comprehensive" when the search was limited

## Mode Output

```text
literature_matrix.md            — argument position matrix
debate_map.md                   — pro/con clusters + timeline
narrative_review_draft.md       — narrative draft (if requested)
framework_selection.md          — framework + SANRA contract
reporting_checklist_result.md   — SANRA validation
```

## Related References

- `engines/academic-debate.md` — debate synthesis engine
- `references/literature-search.md` — search & Scopus Quartile filtering
- `checklists/sanra.md` — 6-item SANRA scale