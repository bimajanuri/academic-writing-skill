# Research Gap Mapping — Structured Research Gap Mapping

Guide to extending **Stage 1, Steps 1.4–1.5**: from the *literature matrix* to *research gap* claims based on systematic mapping, not assumptions. Used together with `references/literature-matrix.md`.

## 1. Literature Mapping (Not Merely Summarizing)

A literature review is not reading and summarizing as many articles as possible. **Literature mapping** is organizing existing knowledge to find patterns, consistency, and voids in the discourse. Without mapping, a researcher only finds "surface gaps".

Group the papers in the matrix by:
1. **Main theme** — clusters of topics that recur
2. **Methodological approach** — quantitative / qualitative / mixed / experimental / review
3. **Theory used** — the `Theory Used` column
4. **Consistency of results** — findings that support vs. contradict one another

The end result of mapping is an understanding of:
- **Saturated areas** — heavily researched, where incremental contributions risk being weak
- **Emerging areas** — on the rise, with higher contribution opportunity
- **Unexplored areas** — prime gap candidates (still requiring feasibility testing §4)

Save the mapping result in `gap_analysis.md` (see §6).

## 2. Gap Classification (Gap Matrix)

After mapping, classify each gap according to **type of void**, so that gap claims are not wrong and contributions can be measured. Use `templates/gap_matrix.md`.

### 2.1 Theoretical Gap
Theory has not been tested/developed/compared in a specific context. Appears when:
- Theory is used in context A but has not been tested in context B
- Theory is used narrowly, without exploring additional variables
- There is an opportunity to integrate two theories that run separately

Highly valued in reputable journals because it touches the conceptual framework, not merely new data.

### 2.2 Methodological Gap
Previous research approaches remain limited or lacking in variety. For example:
- The majority of studies use simple quantitative approaches
- No longitudinal or mixed-method approach yet
- Analytical techniques have not used more complex models

Contribution through methodological innovation/strengthening. Valued by methodology-oriented journals.

### 2.3 Contextual Gap (with caveats)
The phenomenon is well researched but has not been tested in a specific population/region/condition. **Not every contextual difference automatically becomes a contribution.** A contextual gap is strong only when:
- The context could potentially produce conceptually different results
- There is a theoretical reason why the context matters to test

Without a theoretical basis → at risk of being a *pseudo-gap* (§3).

### 2.4 Inconsistency Gap
Previous research results are inconsistent/contradictory (study A positive, B not significant, C negative). Highly strategic because it opens space for scientific clarification through moderator variables, stronger designs, or new approaches.

### 2.5 Relation to the Old Classification
The old classification in Step 1.4 is still used as a **findings status**:
- **Complete gap** ≈ theoretical/methodological/contextual void that does not exist at all
- **Partial gap** ≈ emerging area (exists but not yet mature)
- **Controversy gap** ≈ inconsistency gap

Include both: status (complete/partial/controversy) + type (theoretical/methodological/contextual/inconsistency).

## 3. Avoiding Pseudo-Gaps

A pseudo-gap occurs when a researcher only looks at "what has not been studied" without considering "why it matters to study". Common forms:
1. Claiming no study exists in a specific location without theoretical relevance
2. Substituting variables/samples without new conceptual contribution
3. Simple replication without strengthening theory/method
4. "Not much research yet..." without systematic literature mapping

The decisive question: **"Why does this study matter for the advancement of science?"** If it is not explicitly answered, the contribution is considered weak.

**Three criteria for a strong gap:**
1. Based on clearly mapped literature (not personal assumptions)
2. Has theoretical or methodological implications
3. Relevant to active discourse in the target journal

A strong gap always answers: (a) what remains unanswered in the literature? (b) why does that void matter scientifically?

## 4. Gap Validation Checklist

Run it before writing the research gap in the manuscript.

**Literature Validation**
- [ ] Mapped at least 10–20 relevant articles
- [ ] Gap emerges from literature patterns, not personal assumptions
- [ ] Can show empirical evidence of the void

**Conceptual Validation**
- [ ] Gap has theoretical or methodological implications
- [ ] Gap is not merely a difference in study location
- [ ] Gap is not just simple replication

**Strategic Validation**
- [ ] Gap is relevant to active discourse in the target journal
- [ ] Contribution explicitly answers the gap
- [ ] Can formulate a clear contribution statement (see `references/novelty-framing.md`)

**Threshold**: if more than 2–3 points are unchecked, the gap needs strengthening before writing or submission.

## 5. Research Map

Visualize the research map from the matrix:
- Top: the dominant theory used
- Branches: previous studies
- Differences in method/results → gap indicators
- Your research position must appear as a **response** to the void

If the study cannot be clearly placed on this map, the gap is probably not strong enough. The Research Map complements the **Research Positioning Map** (Step 1.5), which maps the position within the journal arena (see `references/journal-targeting.md` §3).

## 6. Stage 1 Output (extended)

```
literature_matrix.md   — structured 7-field matrix table
gap_matrix.md          — classified gap table (theoretical/methodological/contextual/inconsistency)
gap_analysis.md        — gap synthesis: type + status + evidence + significance + feasibility + pseudo-gap test
research_map.md        — topic & theory position map
```

Directly link every gap in `gap_analysis.md` to a row in `gap_matrix.md` and to at least 3 matrix citations.

## 7. Concise Workflow

```
Matrix (1.3) → Literature mapping (§1) → Fill Gap Matrix (templates/gap_matrix.md)
→ Classify 4 gap types (§2) → Pseudo-gap test (§3) → Validation checklist (§4)
→ Research Map (§5) → gap_analysis.md → feed to Novelty Framing (references/novelty-framing.md)
```