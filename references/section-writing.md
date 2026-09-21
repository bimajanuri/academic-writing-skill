# Section Writing — Per-Section Writing Guide (Stage 3)

Guide to writing section-by-section with a mandatory order, paragraph principles, and claim-evidence mapping. Adapted from the methodology of Prof. Peng Sida and SNL-UCSB.

## 1. Mandatory Writing Order

```
1.  Draft 0 Introduction   → disposable framework (guardrails)
2.  Literature Review       → fed from the Literature Matrix
3.  Methodology            → design, variables, sample, analysis
4.  Results & Discussion   → real evidence
5.  Conclusion             → answers to the RQ
6.  Final Introduction     → REWRITTEN from scratch
7.  Abstract               → last
```

**Why write the Introduction twice?** Draft 0 forces clarity on the claims before experimentation/writing. The Final Introduction is guaranteed to promise only what the evidence actually supports. Do not "copy-edit" Draft 0 into the Final — rewrite it.

## 2. Paragraph Principles (Global)

1. **One paragraph = one message.** The first sentence states the message.
2. **Topic sentence = claim**, not context/background.
3. **Explicit flow**: every sentence connects to the previous one (cause, contrast, consequence, elaboration, example).
4. **Define-before-use**: new terms are defined before they are used.
5. **Paragraph length**: 4–6 sentences.
6. **Reverse outlining** after finishing each section:
   - Write the section's main claim
   - Write each paragraph's topic sentence
   - Write each paragraph's evidence point
   - Ensure topic→claim and evidence→topic mapping
7. If the flow is weak → add temporary headings + explicit transitions, then remove the unnecessary headings.

## 3. Per-Section Guide

### 3.1 Abstract
- Write it **last**.
- Structure (in order): Problem background → Method (concise) → Main findings (with numbers!) → Contribution/implications.
- 150–250 words, one paragraph (per journal style).
- No citations, no undefined jargon.
- Every claim in the abstract MUST appear in the paper (claim-evidence).

### 3.2 Introduction (Final)
Move order (from SNL-UCSB & Prof. Peng):
1. **Stakes**: who is affected, why the domain matters
2. **Problem gap**: structural limitations of existing approaches (not "not yet accurate", but "assumption X fails when Y")
3. **Key abstraction**: a named concept capturing your insight
4. **Design intuition**: why your approach makes sense
5. **Contributions**: numbered, claim-first, provable (feed the list from `contribution_statement.md` — Module A; do not reduce or add without reason)
6. **Results preview**: your best numbers at the end
- The last sentence of the opening paragraph is a claim sentence (not filler).
- Use named headings: claims, not topics.
- An outline paragraph at the end is optional (& per journal style).

### 3.3 Literature Review
- Group matrix papers **by theme** (e.g., effects of duration, effects of content type, meta-analytic reviews).
- For each group: synthesis → what is known → its weaknesses → leads to the gap.
- Do not produce a "dictionary of studies" (paper by paper); focus on findings.
- Explain **Theory Used** as the framework.
- End with a "Research Gap & Position of This Paper" subsection.
- Complete citations (from the matrix, final format via citation-formatter).

### 3.4 Methodology
- Descriptive & reproducible: could someone repeat the study from the text?
- Components: design, population/sample (n, sampling technique), instruments (validity/reliability), variables (IV/DV/operational definitions), procedure, data analysis (statistics/software).
- Order: Participant → Measures → Procedure → Analysis (for empirical work).
- Every choice is designed: "we use X because Y" (not merely "we used X").
- For reviews: PRISMA flow, inclusion/exclusion criteria, search strategy, quality assessment.

### 3.5 Results
- Descriptive first, then inferential.
- Tables/figures are argument tools, not decoration. Every float is referenced in the text.
- **Interpretation in the text**: "Table 2 shows GPA dropping 0.4 points (p < .01) for duration > 4 hours, confirming H1."
- End each experimental cluster with a **takeaway paragraph** (synthesis).
- Do not repeat the table numbers in the text — highlight only what matters.
- Do not discuss or compare with the literature here (that is the Discussion's job).

### 3.6 Discussion
- Return to the RQ: what do the findings answer?
- Compare with the literature in the matrix (confirmation/contradiction/extension).
- Theoretical implications (contribution to Theory Used) & practical ones.
- Limitations (honest; no overclaiming).
- Future research suggestions go here.
- Do not introduce new results.

### 3.7 Conclusion
- Summarize the key findings (main numbers).
- Answer the RQs one by one.
- Contributions (concise from the intro, now supported by evidence).
- Practical suggestions & future research.
- No padding, no new claims.

## 4. Sentence Style — Quick Rules

- Average ~21 words/sentence; max 40.
- Always active voice; no "It is believed that".
- Zero hedging: "The results show" not "The results may show".
- No filler adjectives: "novel", "significant" (without statistics), "robust", "state-of-the-art", "comprehensive". Replace them with specific numbers.
- Named over vague: "an event-centric decomposition" not "a decomposition method".
- "We show X" vs. "X is shown" → always active.
- Figure interpretation: "Figure 1 reveals ...", not "See Figure 1".
- The first sentence of a section is the section's conclusion statement (skim-reader friendly), not "In this section ...".

## 5. Claim-Evidence Map

Created when writing a claim paragraph or after a section is finished. Format:

| # | Claim | Evidence (location) | Status |
|---|-------|-------------------|--------|
| 1 | Social media duration lowers GPA | Regression results, Table 3 | supported |
| 2 | Frequency is not significant | Regression results, Table 3 | supported |
| 3 | Findings hold across genders | No subgroup analysis | needs evidence |

**Rule**: claims rated "needs evidence" or "unsupported" must be corrected (weaken the claim, find evidence, or delete) before the quality gate.

## 6. Per-Section Checklist

After writing a section, run the relevant checklist:
- General: `checklists/post_draft.md`
- Before submission: `checklists/pre_submission.md`

## 7. Stage 3 Output

```
draft_<section>.md      — per-section draft (e.g., draft_introduction.md)
claim_evidence_map.md   — claim-evidence map for the whole paper
```

## Anti-Patterns (Do Not Do)

- **Incremental patching**: writing as if patching a naive baseline. Position the work as a structural solution.
- **Dictionary of studies** in the literature review.
- **Overclaiming**: claims that exceed the evidence.
- **So-what syndrome**: results without implications.
- **Hidden limitations**.
- **Switching terminology** for the same concept.