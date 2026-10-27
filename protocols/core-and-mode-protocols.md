# Core Guidelines, Synthesis Mode Protocols, and Qualitative Engines

## 1. Universal Guidelines (All Modes)

- **Language Policy**:
  - **Manuscript output**: Always **English (US) academic register** (`analyze`, `color`, `center`, `modeling`, serial comma). Never bilingual in the final manuscript.
  - **Research input & working notes**: Accepts **Bahasa Indonesia or English**; translate concepts faithfully into English-US academic arguments without altering meaning.
- **Style Principles**:
  - Mean sentence length ~21 words; maximum 40 words.
  - Active voice ("We analyze", not "It is analyzed").
  - Evidence-calibrated modality: align verb strength with study design; reserve causal verbs for causal designs.
  - No vague filler adjectives ("novel", "significant", "robust", "state-of-the-art") — replace with specific metrics or delete.
  - Named over vague: every mechanism, variable, construct, and metric has a specific name.
  - Headings state claims where appropriate ("X Reduces Error by 13%").
  - Interpret figures and tables in prose ("Table 2 shows X, confirming Y").
- **Claim-Evidence Map**: Every major claim requires `Claim | Evidence (citation + provenance) | Status (supported / needs evidence / unsupported)`.
- **Integrity Guidelines**:
  1. Never invent references, DOIs, quartiles, datasets, statistics, quotations, or findings. Mark unverified records `UNVERIFIED — check manually` and missing empirical values `[DATA]`.
  2. Never copy journal corpus text verbatim; use target journals only as structural models.
  3. Quote verbatim phrases with quotation marks + citation, or paraphrase thoroughly with citation (never leave >= 7 consecutive identical words uncited).
  4. Confirm with the user at each quality gate before advancing.
  5. Lock Gate 0 in `framework_selection.md` before building search queries or extracting papers.

---

## 2. Mode Protocols (Method Selection Router)

### Mode A: Systematic Literature Review (SLR — PRISMA 2020)
- **Use when**: Answering specific effectiveness, association, or thematic synthesis questions across empirical studies.
- **RQ Framework**: `PICO`, `PICOS`, `PICo`, or `SPIDER`. **Standard**: `PRISMA 2020` (27 items) + `PRISMA-S`.
- **Execution**:
  1. Derive Boolean strings from each PICO/SPIDER element across >= 3 databases (`OpenAlex`, `Semantic Scholar`, `Crossref`, `PubMed`, `DOAJ`, `arXiv`).
  2. Record PRISMA flow counts: `Identified -> Deduplicated -> Screened -> Full-Text Assessed -> Included` (with exclusion reasons).
  3. Extract the 12 shared columns plus SLR columns (`Study Design & Setting`, `Intervention/Comparator`, `Outcome Measures & Effect Estimates`, `Risk of Bias / Quality Rating`).
  4. Assess study quality (`RoB 2`, `ROBINS-I`, `Newcastle-Ottawa`, `CASP`, or `MMAT`), synthesize findings (meta-analysis or structured SWiM synthesis), and validate against the 27-item `PRISMA 2020` checklist.

### Mode B: Scoping Review (PRISMA-ScR / PCC / JBI)
- **Use when**: Mapping literature breadth, clarifying concepts/definitions, examining geographic/temporal/methodological distribution, and identifying gaps.
- **RQ Framework**: `PCC` (Population, Concept, Context). **Standard**: `PRISMA-ScR` (22 items).
- **Execution**:
  1. Build inclusive search strings around Population, Concept, and Context.
  2. Record flow counts and chart data using the PCC matrix (`Population`, `Core Concept & Definition`, `Context / Setting`, `Evidence Type`, `Mapped Theme Cluster`).
  3. Run the **Conceptual Mapping Engine** (Section 3.1). State explicitly if quality appraisal is omitted per PRISMA-ScR Item 12, and validate against the 22-item `PRISMA-ScR` checklist.

### Mode C: Meta-Ethnography (eMERGe + Noblit & Hare 7 Steps)
- **Use when**: Synthesizing interpretive qualitative studies to generate higher-order theoretical constructs or lines of argument.
- **RQ Framework**: `PICo` or `SPIDER`. **Standard**: Noblit & Hare (1988) 7 phases + `eMERGe` (19 criteria).
- **Execution**:
  1. Include **interpretive qualitative studies** with rich participant data. Exclude purely quantitative surveys.
  2. Separate two extraction layers in `literature_matrix.md`:
     - **1st-Order Constructs**: Direct participant quotations (with source paper + page/section marker).
     - **2nd-Order Constructs**: Original study authors' metaphors, themes, and interpretations.
  3. Run the **Reciprocal Translation Engine** (Section 3.2) to develop **3rd-Order Constructs** and validate against the 19-criterion `eMERGe` checklist.

### Mode D: Narrative Review (SANRA)
- **Use when**: Tracing conceptual evolution, synthesizing competing schools of thought, or framing an academic debate.
- **RQ Framework**: `5W+1H` or `CIMO`. **Standard**: `SANRA` (6 items scored 0–2; target >= 10/12).
- **Execution**:
  1. Justify importance, state concrete aims, and document the search strategy (databases, years, selection logic per SANRA Item 3).
  2. Extract argument positions (`Argument Camp`, `Core Thesis`, `Primary Evidence`, `Counter-Arguments Addressed`, `Conceptual Milestone`).
  3. Run the **Academic Debate Engine** (Section 3.3) and validate against `SANRA`.

### Mode E: Integrative Review (Whittemore & Knafl 5 Stages)
- **Use when**: Combining qualitative and quantitative empirical/theoretical studies.
- **RQ Framework**: Adapted `PCC`, `PICo`, or `5W+1H`. **Standard**: Whittemore & Knafl (2005) 5 stages (`Problem Identification -> Literature Search -> Data Evaluation -> Data Analysis [Reduction, Display, Comparison, Conclusion Verification] -> Presentation`).
- **Execution**:
  1. Extract `Paradigm (Qual/Quant/Mixed)`, `Subgroup Classification`, `Quant Variables & Statistical Results`, `Qual Themes`, and `Rigor Score (1–2 / MMAT)`.
  2. Reduce into subgroups, display in unified matrices, compare patterns across streams, and validate against the 17-criterion `Whittemore & Knafl` checklist.

### Mode F: Critical Review (Appraisal Lenses)
- **Use when**: Interrogating epistemological assumptions, methodological flaws, measurement validity, and biases to propose a corrective model.
- **RQ Framework**: `5W+1H` + appraisal lenses (`CASP`, `JBI`, `MMAT`).
- **Execution**:
  1. Extract across 4 lenses: `Epistemological Assumptions`, `Sampling & Design Flaws`, `Measurement & Validity Critique`, `Biases & Credibility Tier`.
  2. Synthesize by critique dimension, rank evidence credibility, propose a **Corrective Conceptual Model**, and validate against the 10-criterion `Critical Review` checklist.

---

## 3. Qualitative Synthesis Engines

### 3.1 Conceptual Mapping Engine (Scoping Review — `synthesis_scoping.md`)
1. **Concept Taxonomy**: Group concepts into `Domain -> Sub-Concept -> Operational Definition -> Citations`, noting consensus vs. divergence.
2. **Evidence Distribution**: Tabulate counts and percentages by Geography/Setting, Year Buckets, and Research Design.
3. **Concept-by-Context Cross-Tabulation**: Expose empty or under-researched cells as evidence-backed scoping gaps.

### 3.2 Reciprocal Translation Engine (Meta-Ethnography — `synthesis_meta_ethnography.md`)
1. **Study Relationships**: Classify how studies relate: *Reciprocal* (similar accounts), *Refutational* (competing accounts), or *Line-of-Argument* (complementary facets of a whole).
2. **Chronological Translation**: Start with the richest index paper and translate its 2nd-order constructs across subsequent papers.
3. **3rd-Order Synthesis & Traceability Chain**: Elevate translated constructs into 3rd-order interpretations with a full audit trail:
   `1st-Order Quote [Paper, p. X] -> 2nd-Order Theme [Paper] -> 3rd-Order Construct -> Line-of-Argument Model`.

### 3.3 Academic Debate Engine (Narrative Review — `synthesis_narrative.md`)
1. **Cluster Competing Camps**: Group papers into 2–4 camps (`Camp Name | Core Premise | Proponents | Primary Evidence | Methodological Reliance`).
2. **Map Contention Drivers**: Contrast `Claim A vs. Claim B` and identify whether disagreement stems from definitions, populations, time horizons, or measurement.
3. **Evolution Timeline & Resolution**: Trace `Groundworkal Phase -> Expansion -> Critical Turn -> Current Frontier` and formulate an integrative proposition.
