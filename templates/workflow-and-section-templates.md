# Workflow Contracts, Extraction Matrices, Submission Documents, and Manuscript Section Templates

Use these output templates when saving workflow artifacts and drafting manuscript sections in the user's working folder.

---

## 1. Gate 0 Contract (`framework_selection.md`)

```markdown
# Method & Framework Selection Contract (Gate 0)

- **Topic / Working Title**: ...
- **Synthesis Mode**: SLR | Scoping Review | Meta-Ethnography | Narrative Review | Integrative Review | Critical Review
- **Reporting Standard**: PRISMA 2020 | PRISMA-ScR | eMERGe | SANRA | Whittemore & Knafl | Critical Appraisal
- **RQ Framework**: PICO / PICOS / PCC / PICo / SPIDER / 5W+1H / CIMO
- **Input Mode**: Search | Folder | Hybrid
- **Target Volume & Years**: 15–40 papers | Years: YYYY–YYYY
- **Scopus Quartile Filter**: Q1–Q4 | Q1–Q2 | Unfiltered (tag all)
- **Citation Style**: APA 7 | MLA 9 | Turabian | Vancouver | Harvard | Chicago | IEEE
- **Inclusion Criteria**: 1. ... 2. ... 3. ...
- **Exclusion Criteria**: 1. ... 2. ... 3. ...
- **Derived Boolean Search Query**: `(...) AND (...) AND (...)`
```

---

## 2. Mode Literature Extraction Matrix (`literature_matrix.md`)

Include search metadata and the provenance legend (`[AB]`, `[I-n]`, `[M-n]`, `[R-n]`, `[D-n]`, `[L-n]`, `[C-n]`, `[F-n]`) above the table. Append the active mode's specific columns from `references/stage1-explore-and-extraction.md` after `Future Studies`:

```markdown
# Literature Synthesis Matrix — [Mode Name]

- **Date**: YYYY-MM-DD | **Mode**: [Mode] | **Sources**: OpenAlex, Semantic Scholar, Crossref | **Included**: N papers

| No | Title & Authors | Journal & Quartile | Year | Purpose | Method (Variables/Samples) | Key Findings | Limitations | Gaps | Theory Used | Novelty/Contribution | Future Studies | [Mode-Specific Columns...] | DOI & Publisher |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | Author et al. — "Title" | *Journal* (Q1) | 2025 | ... [AB] | ... [M-1] | ... [R-2] | ... [L-1] | ... [I-2] | ... [I-1] | ... [C-1] | ... [F-1] | ... [R-1] | `10.xxxx/...` \| Publisher (VERIFIED) |
```

---

## 3. Research Gap Matrix (`gap_matrix.md`)

```markdown
# Research Gap Matrix

| Gap ID | Gap Type (Theoretical / Methodological / Contextual / Inconsistency) | Description of the Unresolved Problem | Supporting Evidence (>= 3 Citations + Provenance) | Why Not a Pseudo-Gap (Theoretical/Practical Stakes) | How This Manuscript Addresses the Gap |
|---|---|---|---|---|---|
| G1 | Methodological | ... | Author A (2023) [L-1]; Author B (2024) [D-3]; Author C (2025) [F-1] | ... | ... |
```

---

## 4. Paper Outline & Reviewer Self-Assessment (`paper_outline.md`)

```markdown
# Manuscript Outline & Reviewer Self-Assessment

## 1. Research Questions (FINER Validated)
- **RQ1**: ...
- **RQ2**: ...

## 2. Section & Paragraph Blueprint (Target Total: ~7,500 words)
| Section | Target Words | Paragraph # | Claim-Led Topic Sentence | Key Evidence / Citations | Synthesis Engine Artifact |
|---|---|---|---|---|---|
| 1. Introduction | 1,100 | P1–P6 | P1: ... | [P01, P04] | Move 1–5 funnel |
| 2. Background | 1,100 | P7–P12 | P7: ... | [P02, P08] | Prior review comparison |
| 3. Methodology | 1,300 | P13–P19 | P13: ... | PRISMA/eMERGe flow | Search & screening table |
| 4. Results | 2,400 | P20–P31 | P20: ... | [P01–P20] | Taxonomy / 3rd-order / Debate |
| 5. Discussion | 1,200 | P32–P38 | P32: ... | [P05, P12, P19] | Implications & Future Agenda |
| 6. Conclusion | 400 | P39–P41 | P39: ... | — | Core answer to RQs |

## 3. 7-Dimension Reviewer Self-Assessment (Threshold >= 28 / 35)
| Dimension | Score (1–5) | Justification & Weak-Point Remediation |
|---|---|---|
| 1. Problem Importance | 4/5 | ... |
| 2. Methodological Rigor | 4/5 | ... |
| 3. Literature Coverage | 4/5 | ... |
| 4. Synthesis Depth | 4/5 | ... |
| 5. Novelty & Contribution | 4/5 | ... |
| 6. Structural Clarity | 4/5 | ... |
| 7. Journal Fit | 4/5 | ... |
| **Total** | **28/35** | **Status: PASS** |
```

---

## 5. Novelty & Contribution Statement (`contribution_statement.md`)

```markdown
# Verified Contribution Statement

- **Novelty Archetype**: Taxonomic | Higher-Order Interpretive | Debate Reconciliation | Cross-Paradigm | Methodological Corrective
- **Core Contribution Claim**: Synthesizing N studies (YYYY–YYYY) via [Mode/Engine], this review demonstrates [Core Finding/Model], addressing [Gap G1–G3].
- **Claim-to-Evidence Verification**:
  1. Contribution 1 -> Supported by Section 4.1 (`[P01, P03, P07, P12]`).
  2. Contribution 2 -> Supported by Section 4.2 (`[P02, P08, P14, P19]`).
- **Boundary Conditions (Anti-Overclaim Check)**: Reconsistented to [Population/Context]; does not claim [Unsupported Generalization].
```

---

## 6. Target Journal Comparison (`journal_comparison.md`)

```markdown
# Target Journal Comparison & Legitimacy Check

| Rank | Journal Title | Publisher | ISSN | Scopus Quartile | Scope & Method Fit | Typical Review Length & Citation Style | Legitimacy Verification (Indexed / Peer-Reviewed) |
|---|---|---|---|---|---|---|---|
| 1 | *Journal A* | Elsevier | XXXX-XXXX | Q1 | Publishes Scoping/SLR | 8,000 words \| APA 7 | Verified (Scopus + ScienceDirect) |
```

---

## 7. Mode Reporting Checklist Result (`reporting_checklist_result.md`)

```markdown
# Reporting Checklist Auto-Validation — [PRISMA 2020 / PRISMA-ScR / eMERGe / SANRA / W&K / Critical]

| Item # | Checklist Criterion | Status (Yes / Partial / No / N.A.) | Manuscript Location (Section & Paragraph) | Remediation Action (Required if Partial/No) |
|---|---|---|---|---|
| 1 | ... | Yes | Title & Section 1, P4 | — |
```

---

## 8. Submission Cover Letter (`cover_letter.md`) & Reviewer Response (`response_to_reviewer.md`)

### 8.1 Cover Letter Template
```markdown
[Date]
Dear Professor [Editor Name], Editor-in-Chief, *[Journal Name]*,

We submit our [Mode Name] manuscript titled **"[Full Title]"** for consideration in *[Journal Name]*.
1. **Problem & Fit**: [1–2 sentences on domain problem and alignment with the journal's readership].
2. **Method & Rigor**: Following [Reporting Standard], we synthesized [N] verified studies ([Years]) using [Synthesis Engine].
3. **Key Contributions**: (i) [Contribution 1]; (ii) [Contribution 2]; (iii) [Contribution 3].
4. **Declarations**: This manuscript is original, not under consideration elsewhere, and all authors approve submission with no undisclosed competing interests.

Sincerely,
[Corresponding Author, Affiliation, Email, ORCID]
```

### 8.2 Point-by-Point Reviewer Response Template
```markdown
# Response to Editor and Reviewers — Manuscript ID: [ID]

## Executive Summary to the Editor
We thank the Editor and Reviewers for their constructive assessment. We have addressed all comments as summarized below...

## Reviewer 1
### Comment R1.1
> "[Verbatim reviewer comment]"
- **Author Response**: We agree with this observation and have expanded...
- **Location of Change**: Section 3.2, Paragraph 4.
- **Revised Manuscript Text**:
  > "[Exact revised sentences inserted into the manuscript]"
```

---

## 9. Manuscript Section Templates (IMRaD + Synthesis Review Standard)

- **Abstract (`150–250 words`)**: *Background/Objective* (1–2 sentences) -> *Methods* (mode, reporting standard, databases, years, inclusion criteria) -> *Results* (N studies included, core taxonomy/constructs/effect synthesis) -> *Conclusions/Implications* (1–2 sentences) -> *Keywords* (4–6 alphabetized terms).
- **1. Introduction**: Hook & domain stakes -> Prior knowledge -> Systematic gap statement (`gap_matrix.md`) -> Review objective, RQs, & mode protocol -> Bulleted contributions & section roadmap.
- **2. Theoretical Background & Prior Reviews**: Core construct definitions -> Evolution of prior review articles (comparison table showing `Prior Review | Years Covered | N Studies | Method | Limitation Addressed by Current Review`).
- **3. Methodology**: `3.1 Protocol & Reporting Standard` -> `3.2 Search Strategy & Information Sources` (table of databases + exact search strings) -> `3.3 Eligibility Criteria` (inclusion/exclusion table) -> `3.4 Study Selection & PRISMA Flow` -> `3.5 Data Extraction & Quality Appraisal` -> `3.6 Data Synthesis Procedure` (mode engine).
- **4. Results**: `4.1 Study Selection & Characteristics` -> `4.2 Methodological Quality / Risk of Bias` -> `4.3–4.5 Thematic / Construct / Debate Synthesis Subsections` (with summary tables and traceable provenance).
- **5. Discussion**: `5.1 Interpretation of Principal Findings` -> `5.2 Theoretical Contributions` -> `5.3 Practical & Policy Implications` -> `5.4 Limitations of Evidence & Review Process` -> `5.5 Future Research Agenda` (table mapping `Gap -> Proposed RQ -> Recommended Design`).
- **6. Conclusion**: Direct synthesis answer to each RQ and closing scholarly takeaway.
