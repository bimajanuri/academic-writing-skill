# Stage 1 (Explore): Data Contract, Literature Search, Mode Extraction Matrices, and Gap Mapping

## 1. Shared Explore Data Contract (`Search` / `Folder` / `Hybrid`)

### 1.1 Input Modes & Deduplication
- **Search**: Query academic APIs (`OpenAlex` first, `Semantic Scholar`, `Crossref`, `DOAJ`, `PubMed`, `arXiv`). Collect ~1.5x target count, score title/abstract relevance `0–10`, retain `>= 7/10`.
- **Folder**: Recursively scan local `.pdf` and `.tex` files (`pdftotext <file.pdf> -` or `pypdf`/`pdfplumber` for PDFs; direct read for `.tex`).
- **Hybrid**: Merge Search and Folder pools; local full text supersedes abstract-only metadata. Deduplicate by normalized DOI first, then normalized title; log duplicate removals in `candidate_papers.md`.

### 1.2 Master Dataset Schema (`papers.json`)
`papers.json` is the single source of truth for `literature_matrix.md` and all bibliography exports:

```json
{
  "meta": {
    "synthesis_mode": "Scoping Review",
    "input_mode": "Search",
    "rq_framework": "PCC",
    "reporting_standard": "PRISMA-ScR",
    "topic": "...",
    "queries": ["..."],
    "date": "YYYY-MM-DD",
    "quartile_filter": "Q1-Q2",
    "counts": {"identified": 45, "deduplicated": 38, "screened": 38, "included": 20}
  },
  "papers": [
    {
      "id": "P01",
      "title": "...",
      "authors": ["Surname, Given", "Surname2, Given2"],
      "year": "2025",
      "journal": "...", "volume": "", "issue": "", "pages": "",
      "doi": "10.xxxx/...", "publisher": "...", "url": "",
      "quartile": "Q1", "verification_status": "VERIFIED",
      "evidence_source": "abstract_only | full_text",
      "purpose": "... [AB]",
      "method": "... [M-1]",
      "key_findings": "... [R-2]",
      "limitations": "... [L-1]",
      "gaps": "... [I-3]",
      "theory": "... [I-2]",
      "novelty": "... [C-1]",
      "future_work": "... [F-1]",
      "mode_fields": {}
    }
  ]
}
```

### 1.3 Provenance Markers (Required on Every Factual Extraction Sentence)
- `[AB]` Abstract or metadata only (do not claim full-text methods, subgroup results, or limitations when `evidence_source == "abstract_only"`).
- Full-text section + paragraph markers: `[I-n]` Introduction, `[M-n]` Methods, `[R-n]` Results, `[D-n]` Discussion, `[L-n]` Limitations, `[C-n]` Conclusion, `[F-n]` Future Work.
- Unavailable fields in a source must be rendered as `—` (never inferred or fabricated).

---

## 2. Literature Search & Scopus Quartile Triage

### 2.1 Mode-Calibrated Query Construction
Derive Boolean search strings (`AND` / `OR`) directly from the locked Gate 0 framework:
- **SLR (`PICO`/`SPIDER`)**: `(Population terms) AND (Intervention/Exposure terms) AND (Outcome/Design terms)`
- **Scoping (`PCC`)**: `(Participant terms) AND (Concept/Phenomenon terms) AND (Context/Setting terms)`
- **Meta-Ethnography (`PICo`/`SPIDER`)**: `(Phenomenon/Experience terms) AND (Context terms) AND ("qualitative" OR "phenomenolog*" OR "ethnograph*" OR "grounded theory" OR "interview*")`
- **Narrative (`5W+1H`/`CIMO`)**: `(Core Topic terms) AND ("debate" OR "framework" OR "paradigm" OR "controvers*" OR "review")`
- **Integrative**: `(Concept terms) AND ("empirical" OR "qualitative" OR "quantitative" OR "mixed method*")`
- **Critical**: `(Concept terms) AND ("critique" OR "limitation*" OR "methodological" OR "bias" OR "validity")`

### 2.2 Academic API Endpoints (Free, No Key Required)
- **OpenAlex**: `https://api.openalex.org/works?search=KEYWORDS&filter=from_publication_date:YYYY-01-01,type:article|review&per-page=25`
- **Semantic Scholar**: `https://api.semanticscholar.org/graph/v1/paper/search?query=KEYWORDS&fields=title,authors,year,externalIds,abstract,venue,publicationTypes&limit=25`
- **Crossref (DOI & Metadata Verification)**: `https://api.crossref.org/works/{DOI}`
- **DOAJ**: `https://doaj.org/api/search/articles/KEYWORDS`
- **PubMed E-Utilities**: `https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=KEYWORDS&retmode=json`
- **arXiv**: `http://export.arxiv.org/api/query?search_query=all:KEYWORDS&max_results=20`

### 2.3 Scopus Quartile Verification (`Q1`–`Q4`)
- Quartile refers specifically to **Scopus CiteScore / SCImago Journal Rank (SJR)** (`Q1`, `Q2`, `Q3`, `Q4`), not local national tiers.
- Verify journal ISSN/title against SJR/Scopus data or OpenAlex venue metrics. If exact quartile cannot be verified online, tag as `Q? [UNVERIFIED]` (or `Preprint / Non-Scopus` for arXiv/working papers) and report a Quartile Triage Summary (`Q1: n, Q2: n, Q3: n, Q4: n, Unverified: n`).

---

## 3. Shared + Mode-Specific Extraction Matrices (`literature_matrix.md`)

Every mode extracts the **12 Shared Paper Review Columns** (`No`, `Title & Authors`, `Journal & Quartile`, `Year`, `Purpose`, `Method (Variables/Samples)`, `Key Findings`, `Limitations`, `Gaps`, `Theory Used`, `Novelty/Contribution`, `Future Studies`, `DOI & Publisher`) **plus** the mode-specific columns stored in `mode_fields`:

| Synthesis Mode | Additional Mode-Specific Columns in `literature_matrix.md` |
|---|---|
| **1. SLR** | `Study Design & Setting` · `Intervention / Comparator` · `Outcome Measures & Effect Estimates` · `Risk of Bias / Quality Rating` |
| **2. Scoping Review (PCC)** | `Population (P)` · `Core Concept & Definition (C)` · `Context / Geographic & Institutional Setting (C)` · `Evidence Type` · `Mapped Theme Cluster` |
| **3. Meta-Ethnography** | `Qualitative Methodology & Paradigm` · `1st-Order Constructs (Direct Participant Quotes + Page)` · `2nd-Order Constructs (Author Themes & Metaphors)` · `Translation Role (Index / Reciprocal / Refutational)` |
| **4. Narrative Review** | `Argument Camp / School of Thought` · `Core Thesis / Claim` · `Primary Evidence Relied Upon` · `Counter-Arguments Addressed` · `Conceptual Era / Milestone` |
| **5. Integrative Review** | `Paradigm (Qual / Quant / Mixed)` · `Subgroup Classification` · `Quant Variables & Statistical Results` · `Qual Themes & Interpretations` · `Rigor Score (1–2 / MMAT)` |
| **6. Critical Review** | `Epistemological Assumptions` · `Sampling & Design Flaws` · `Measurement & Validity Critique` · `Systemic Biases / Blind Spots` · `Credibility Tier (High / Moderate / Low)` |

---

## 4. Research Gap Mapping & Positioning Map (`gap_matrix.md`, `research_map.md`)

### 4.1 Four Valid Gap Taxonomies
Every gap in `gap_matrix.md` must cite **>= 3 included papers** and classify into one or more of:
1. **Theoretical / Conceptual Gap**: Existing theories fail to explain mechanism X, or competing frameworks remain unreconciled.
2. **Methodological Gap**: Prior studies rely overwhelmingly on a single design (e.g., cross-sectional self-report) with documented validity limits.
3. **Contextual / Population Gap**: Evidence is reconsistented to specific geographies, institutions, or demographics where structural moderators differ.
4. **Empirical Inconsistency / Contradiction Gap**: Studies report conflicting effects (`Paper A, B` show positive effect; `Paper C, D` show null/negative effect) without a moderating explanation.

### 4.2 Anti-Pseudo-Gap Rules
- Never claim `"No study has ever examined X"` without documenting the systematic database queries that returned zero results and explaining *why* the absence matters theoretically or practically.
- Reject trivial gaps ("combining variable A and B for the first time without theoretical rationale").

### 4.3 Four-Quadrant Research Positioning Map (`research_map.md`)
Plot the literature along two orthogonal axes relevant to the review (e.g., *Axis X: Methodological Rigor / Scope [Descriptive -> Causal/Interpretive]*; *Axis Y: Conceptual Integration [Isolated Variable -> Multi-Level System]*), placing existing study clusters in Quadrants I–III and positioning the current manuscript in the target frontier quadrant.
