# Engine — Academic Debate (Narrative Review)

Synthesis engine for Narrative Review Mode. Groups author positions (pro/con) and maps the **development of ideas across time** to build an academic debate narrative.

> Suitable for controversial/multi-interpretation questions that do not require statistical synthesis.

## When Used

Only in Narrative Review Mode (`protocols/narrative-review.md`), once the argument position matrix is ready.

## Engine Workflow

### Input
- `literature_matrix.md` (narrative mode — Position/Argument columns)

### Steps

1. **Identify the core debate question** — one or more contested claims.
2. **Cluster the positions**:
   - **Pro** — authors who support/strengthen
   - **Con** — authors who reject/contrast
   - **Neutral/complex** — authors with conditional or multi-dimensional positions
3. **Build the idea timeline** — order contributions by year: who laid the foundation, who expanded, who challenged, who synthesized.
4. **Identify open debates** — unresolved pro/con areas.
5. **Compose the debate narrative** — flow: idea history (origin) → development → contestation → resolution/synthesis (or open question).

### Strict Rules

- Positions are inferred from the **authors' explicit claims**, not guesses.
- The timeline must be based on journal dates (not the year of writing).
- Do not confuse "methodological criticism" with "substantive opposition".
- Consensus vs heterogeneity identified with evidence (how many papers pro/con).

### Output
```text
debate_map.md        — pro/con/neutral clusters + key arguments per cluster
debate_timeline.md   — chronology of ideas (table/chart)
open_debates.md      — unresolved debate questions
```

## Prompt Template

```text
From literature_matrix.md (narrative mode), build an academic debate map.
1. Determine the core disputed claim(s).
2. Group the papers into pro/con/neutral based on explicit claims.
3. Build the timeline: foundation → expansion → challenge → resolution.
4. Report the supporting counts per cluster.
5. Produce debate_map.md + debate_timeline.md.
```

[Do not routinely "resolve" debates that are still genuinely open — report their status as it is.]