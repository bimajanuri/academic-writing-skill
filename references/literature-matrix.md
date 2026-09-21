# Literature Matrix — 7-Field Metadata Extraction

Guide to building a structured literature matrix from the papers that passed the search.

> **Modular Multi-Method Engine**: the 7-field matrix in this file is the standard for **SLR Mode**. For qualitative modes, use the dedicated extraction module (see the router in SKILL.md):
> - Scoping Review → `extraction-scoping.md` (PCC mapping)
> - Meta-Ethnography → `extraction-meta-ethnography.md` (1st/2nd order constructs)
> - Narrative Review → `extraction-narrative.md` (argument positioning)
> - Integrative Review → `extraction-integrative.md` (qual + quant data)
> - Critical Review → `extraction-critical.md` (appraisal lens)

## Column Structure (7 Mandatory Fields + Number)

Each paper produces **one row** with the following columns:

| Column | Extracted Content | Source in Paper |
|-------|-------------------|-----------------|
| **Authors/Title** | Author names (citation format) + paper title | Title page |
| **Purpose** | Research aim/objective (one concise sentence) | Abstract & Introduction |
| **Method (Variables/Samples)** | Design, variables (IV/DV), sample size/type, instruments | Method |
| **Theory Used** | Underlying theory/conceptual framework | Introduction / Literature Review |
| **Novelty/Contribution** | Novelty claim + main contribution | Introduction / Conclusion |
| **Future Studies** | Suggested future research | Future Work / Conclusion |
| **DOI/Publisher & Scopus Quartile** | DOI, publisher/journal name, + quartile | Metadata / SJR |

Use the template `templates/literature_matrix_template.md`.

## 1. Per-Field Extraction Rules

### Authors/Title
- Author names: `Author1, Author2, & Author3 (Year)` — use a concise author-date style in the matrix; final formatting comes later in Stage 4.
- Title: in quotation marks or italic per the style used in the matrix (consistent).
- If more than 6 authors: `Author 1 et al.`

### Purpose
- One sentence: "The aim of this study is ..." / "This research aims to test ..."
- Take it directly from the abstract if explicit; if not explicit, summarize the inference and mark `(summarized)`.

### Method (Variables/Samples)
Extract the components:
- **Design**: experiment / survey / case study / qualitative / mixed-method / longitudinal / systematic review
- **IV / DV** (if hypothesis-based): independent → dependent variable
- **Sample**: size (n=...), population, sampling technique
- **Instrument/analysis**: questionnaire, interview, regression, SEM/PLS, ANOVA, etc.
- Example completed: `Survey; IV: social media use; DV: GPA; n=312 students; Likert questionnaire; multiple regression`

### Theory Used
- List the theories/frameworks raised by the authors (e.g., Theory of Planned Behavior, Uses and Gratifications, Social Cognitive Theory).
- If the paper does not explicitly name a theory, write `Not explicitly stated`.

### Novelty/Contribution
- 1–2 sentences of contribution claims (e.g., "An ML-based predictive model with 85% accuracy for the Southeast Asian student context").
- Do not add your own opinion; take the claim from the paper.
- If unclear, mark `(not explicit)`.

### Future Studies
- Copy/summarize the future-research suggestions recommended by the authors.
- Note key statistical results (if any) that suggest future directions.
- If the paper has no suggestions, write *"—"*.

### DOI/Publisher & Scopus Quartile
- Format: `DOI: 10.xxxx/... | <Journal/Publisher> | <Q1/Q2/Q3/Q4/non-Scopus>`
- Quartile is mandatory; when unverified write `Q? [UNVERIFIED]` or `non-Scopus` for arXiv/preprints.

## 2. Extraction Sources

Use the abstract + highlights of the paper:
1. Read the **Abstract** (main source for Purpose, concise Method)
2. Read the **Introduction** (Issue → Purpose, Theory Used, Novelty)
3. Read the **Method** (variables, sample, analysis)
4. Read the **Conclusion + Future Work** (confirmed contributions, future suggestions)

If the paper exists as a file (PDF/DOCX/MD), extract the text first. If only metadata (DOI) is available, use OpenAlex/Semantic Scholar to get `title`, `abstract_inverted_index`, and reconstruct the abstract; if the abstract is unavailable → mark the missing fields with *"—"*.

## 3. Relevance Score (Optional but Recommended)

If the user requests it, insert an additional column:
```
| ... | Relevance (0–10) | Status (Used/Discarded) |
```
- Relevance score: 8–10 → enters the main analysis; 7 → supplementary; <7 → discard.
- This facilitates Gap Analysis in Stage 1, Step 1.4.

## 3b. Connection to the Gap Matrix (Module E)

The matrix is the main input for `templates/gap_matrix.md` and `references/research-gap-mapping.md` in Step 1.4:
- Sort the matrix rows oldest → newest as the basis for **literature mapping**.
- Map each row to the **gap type** it can support (theoretical/methodological/contextual/inconsistency) in an additional `Gap Potential` column.
- The **Theory Used**, **Method**, **Novelty/Contribution**, and **Future Studies** columns serve as evidence for gap claims (min. 3 citations per gap).

## 4. Anti-Hallucination for the Matrix

1. Fields that are unavailable → write *"—"*, **do not** invent the existence of data.
2. Uncertain quartile → `Q? [UNVERIFIED]`
3. Unstated theory → `Not explicitly stated`
4. DOI that failed verification → mark `[date checked: ]` and inform the user
5. Relevance scores must be based on title+abstract, not assumptions.

## 5. Matrix Quality Criteria

- At least 10 rows (or as agreed with the user).
- All 7 columns filled for every row (with *"—"* when data is absent).
- Quartile verified for papers included as "Scopus".
- No data cell is imagined.

## 6. Output

Save as a file:
```
literature_matrix.md  — final matrix table ready for Stages 2 and 3
```

Use the Novelty/Contribution & Future Studies field content as the basis for Gap Analysis (Stage 1, Step 1.4 — see §3b above for the connection to the Gap Matrix).