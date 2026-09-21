# Outline Builder — Planning & Idea Organization (Stage 2)

Guide to building the paper outline from the Literature Matrix and Gap Analysis.

## 1. From Gap to Research Question

1. Take the strongest gap from `gap_analysis.md` (minimum 1 gap of High significance).
2. Aligned with Step 2.7, formulate the contribution via `references/novelty-framing.md` + `templates/contribution_statement.md` — the contribution here determines the research question's position.
2. **If an RQ framework is chosen** (`framework_selection.md` §1), formulate the RQ by filling in that framework's elements — see `references/research-frameworks.md` §1 (PICO example: P=population → I=intervention → C=comparison → O=outcome). Validate with FINER before locking it in.
3. Formulate the RQ in the form:
   - Descriptive: "How ...?"
   - Relational: "Does X relate to / affect Y?"
   - Causal: "How does X affect Y in context Z?"
4. Limit to 1–3 RQs. For each RQ determine:
   - The main theory/framework (from the Theory Used column in the matrix — choose the most frequently used or the most appropriate)
   - The design (empirical/theoretical/review)
   - The relevant reporting checklist items (if a reporting framework is chosen — so the RQ is written with elements that can be reported)

Output: `research_question.md` containing:
```yaml
research_questions:
  - rq: "Does X affect Y in Z?"
    gap_source: "Gap Analysis #2"
    theory: "Theory of Planned Behavior"
    design: "quantitative-survey"
    hypothesis: "H1: X positively affects Y"
```

## 2. Determining the Target Journal/Platform (Optional — journal-adapt)

If the user already has a target journal:
1. Ask for 5–8 recent papers published in that journal (corpus).
2. Extract the patterns:
   - Section structure (number, order)
   - Contribution framing (how they claim novelty)
   - Method/results exposition (depth, table/figure format)
   - Discussion & conclusion scope
   - Average abstract & paragraph length
3. Save as `style_profile.md`.
4. **Rule**: do not copy corpus sentences verbatim; use them as a structure model.

If there is no target journal: use an IMRaD/custom structure appropriate to the paper type (literature review → literature_review section template).

## 3. Outline Structure

The main template is in `templates/paper_outline.md`. Minimum:

```
# Paper Title
1. Abstract (150–250 words)
2. Introduction (15–20% of total)
   2.1 Background & problem
   2.2 Gap and urgency
   2.3 Research question & objectives
   2.4 Contributions (numbered, claim-first — fed directly from `contribution_statement.md`)
   2.5 Paper structure
3. Literature Review (20–25%)
   3.1 Foundational theory
   3.2 Synthesis of prior findings (from the matrix, grouped
        by theme: Purpose / Method / Theory)
   3.3 Research gap & position of the paper
4. Methodology (15–20%)
   4.1 Design
   4.2 Variables & measurement
   4.3 Population & sample
   4.4 Instruments
   4.5 Data analysis
5. Results (15–20%)
   5.1 Descriptive statistics
   5.2 Hypothesis testing / main findings (tables & figures referenced)
6. Discussion (15–20%)
   6.1 Interpretation of results vs. literature
   6.2 Theoretical & practical implications
   6.3 Limitations
7. Conclusion (5–10%)
   7.1 Summary of findings
   7.2 Contributions answered from the RQ
   7.3 Suggestions for future research
References
Appendices (optional)
```

Adjust the percentages to the paper type (literature review → Literature Review 40-50%).

## 4. Word Allocation

- Determine the total target (e.g., 7,500 words for a 15-page journal).
- Allocate according to the percentages above.
- Write the allocation next to the usual headings:
  ```
  ## 2. Introduction (1,500 words)
  ```

## 5. Topic Sentences First

**This is the key to quality.** Before writing any prose:
1. For EVERY planned paragraph, write one topic sentence (a claim sentence).
2. Read them in sequence — they must form a coherent argument without the prose.
3. If the topic sentences do not connect → fix the structure first.

Example topic sentence flow (Introduction):
```
- Student academic performance declines as social media use increases.
- Some studies find negative correlations; others do not, because moderating variables have not been analyzed.
- This study separates duration vs. frequency to explain that inconsistency.
- The results show that duration (not frequency) predicts GPA.
```

## 6. Reviewer Self-Assessment (7 Dimensions, 35 Points)

After the final outline, evaluate through a reviewer's lens (score 1–5/dimension):

| # | Dimension | Check |
|---|---------|-----|
| 1 | Argument clarity | Is the RQ clear? Logical flow? |
| 2 | Argument completeness | Do all claims have planned support? |
| 3 | Literature support | Enough planned citations (≥30 for a journal)? Key works? |
| 4 | Methodology clarity | Is the design explicit? |
| 5 | Novelty expression | Is the contribution clear & different from existing work? |
| 6 | Organization | Proportional allocation? Good flow? |
| 7 | Target fit | Suitable for the journal/paper type? |

**Decision:**
- ≥ 28/35 → proceed to writing
- 21–27 → revise the weak parts (state which)
- < 21 → redesign the outline

For each dimension < 4, provide: problem → severity (High/Med/Low) → concrete solution.

## 7. Output & Quality Gate

Output files:
```
paper_outline.md      — outline + word allocation + topic sentences
research_question.md  — RQ + hypotheses + theory + design
style_profile.md      — target journal style profile (if any)
contribution_statement.md — novelty + contribution + evidence map (Step 2.7, Module A)
```

Quality Gate 2 (from SKILL.md):
- Outline complete + word allocation
- Reviewer score ≥ 28/35
- Topic sentences coherent
- User confirmation

## Tips

- If the user only wants "citations" or "references", do not force a full Stage; focus on the matrix.
- If the paper is a **systematic review**, add a PRISMA flow & explicit search strategy to the methodology.
- Save external drafts: unclear ideas → mark them as "open questions" (cheap to fix now, expensive later).