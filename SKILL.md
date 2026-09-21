---
name: academic-writing
description: |
  Produces journal-quality, **English (US)** academic papers/articles via a Modular Multi-Method Engine. Research input may be provided in Bahasa Indonesia or English. Use this skill when the user asks to: write an academic paper or article, build a literature review, search and extract academic references, create a paper outline/framework, choose and run a literature synthesis framework/mode (Systematic Review/PRISMA, Scoping Review/PRISMA-ScR/PCC, Meta-Ethnography/eMERGe/Noblit & Hare/Reciprocal Translation, Narrative Review/SANRA, Integrative Review/Whittemore & Knafl, Critical Review), format citations (APA/IEEE/MLA/Turabian/Chicago/Vancouver/Harvard), revise and polish a draft, remove AI traces (humanizer), grammar-check English (US), run a plagiarism/similarity check before submission, or assess manuscript quality. Trigger phrases: "write paper", "help research", "find references", "litang", "Scopus journal", "gap analysis", "paper outline", "writing framework", "pick framework", "synthesis mode", "PCC", "PRISMA", "PRISMA-ScR", "scoping review", "meta-ethnography", "meta-synthesis", "eMERGe", "reciprocal translation", "narrative review", "SANRA", "integrative review", "critical review", "PICO", "CONSORT", "STROBE", "reporting checklist", "citation format", "revise draft", "polish", "anti AI", "grammar check", "plagiarism check", "similarity", "journal submission", "thesis", "dissertation", "systematic review". 6-stage pipeline: Explore → Plan → Write → Cite → Revise → Output, routed to the selected mode protocol & qualitative synthesis engines.
---

# Academic Writing

This skill is a **Modular Multi-Method Engine**: an end-to-end pipeline that produces journal-quality academic papers — **output MANDATORY in English (US), academic register** — supporting multiple literature synthesis methods (qualitative & quantitative) through a **router** at the start of the instructions. Working instructions for the agent are written in **English** (so any Gen AI can use the skill); research input may be given in **Bahasa Indonesia or English** depending on the Gen AI's capability, but **the output manuscript is always English-US**.

## Methodology Sources (Attribution)

This pipeline adapts and combines the following open methodologies:
- **Prof. Peng Sida's open research notes** — section-writing politics — via [Master-cai/Research-Paper-Writing-Skills](https://github.com/Master-cai/Research-Paper-Writing-Skills)
- **SNL-UCSB paper-writing-skill** — 5-stage pipeline, dual audit style (mechanical + semantic), editing principles [SNL-UCSB/paper-writing-skill](https://github.com/SNL-UCSB/paper-writing-skill)
- **Humanizer 25 patterns** — detecting & removing AI traces [blader/humanizer](https://github.com/blader/humanizer)
- **journal-adapt** — corpus adaptation from the target journal [WantongC/journal-adapt-writing-skill](https://github.com/WantongC/journal-adapt-writing-skill)
- **Strategist quality gates** — 7-dimension reviewer assessment [lishix520/academic-paper-skills](https://github.com/lishix520/academic-paper-skills)
- **Literature triage matrix** — structured metadata extraction per paper (17-skill catalog: literature review, research design) [WenyuChiou/ai-research-skills](https://github.com/WenyuChiou/ai-research-skills)
- **Qualitative protocols** — eMERGe (France et al., 2019), Noblit & Hare (1988), PRISMA-ScR (Tricco et al., 2018), SANRA (Baethge et al., 2019), Whittemore & Knafl (2005), PCC/JBI Manual.

Use the above as a framework; do not copy text from the target journal corpus verbatim.

> **Mandatory invocation order**: after reading SKILL.md, you **MUST** load `core/system-prompt.md` (universal instructions), then `protocols/<mode>.md` (selected mode), then `engines/<engine>.md` (if assigned), then use `references/*`, `templates/*`, `checklists/*` as appropriate per stage.

---

## METHOD SELECTION ROUTER — Choose the Analysis Mode (FIRST, BEFORE ANYTHING ELSE)

This skill supports **6 literature synthesis modes**. Before searching for/uploading any paper, you **MUST** select the mode via the router below — it determines the rules, framework, extraction criteria, synthesis engine, and final checklist that are active.

| Mode | When to use | RQ Framework | Reporting Checklist | Extraction Matrix | Synthesis Engine |
|------|-------------|--------------|---------------------|-------------------|-----------------|
| **SLR** | Quantitative/qualitative systematic review, meta-analysis, evidence of effect | PICO / PICOS / PICo / SPIDER | PRISMA 2020 (+PRISMA-S) | Standard 7-field (`references/literature-matrix.md`) | — (meta-analysis / narrative synthesis) |
| **Scoping Review** | Broad mapping of evidence, concepts, geographic scope, methodology types | **PCC** | **PRISMA-ScR** (JBI) | PCC mapping (`references/extraction-scoping.md`) | **Conceptual Mapping** (`engines/conceptual-mapping.md`) |
| **Meta-Ethnography** | Qualitative meta-synthesis, experience/meaning, theory development | PICo / SPIDER | **eMERGe** + Noblit & Hare 7 steps | 1st/2nd order constructs (`references/extraction-meta-ethnography.md`) | **Reciprocal Translation** (`engines/reciprocal-translation.md`) |
| **Narrative Review** | Narrative overview, academic debate, idea development | 5W+1H / CIMO | **SANRA** | Argument positions (`references/extraction-narrative.md`) | **Academic Debate** (`engines/academic-debate.md`) |
| **Integrative Review** | Combined qualitative + quantitative data | adapted | **Whittemore & Knafl** | Mixed data (`references/extraction-integrative.md`) | W&K 5-stage (reduction/display/comparison) |
| **Critical Review** | Epistemological/methodological/bias critique | 5W+1H | Critical appraisal (CASP/JBI) | Appraisal lenses (`references/extraction-critical.md`) | — (per-study appraisal + ranking synthesis) |

**Navigation**:
1. See the table above + protocol details in `protocols/*.md`.
2. **FORBIDDEN to start literature search (Step 1.2) before the mode is locked.** Mode determines the keyword strategy, inclusion criteria, and extraction matrix — search results will differ per mode.
3. If the user has not specified a mode → **ask** (or propose one based on the question type). Do not guess, do not proceed with search before the mode is locked.
4. SLR = default for quantitative/classical; choose another qualitative mode when the user asks for mapping/interpretive synthesis.
5. Record the mode + framework choice into `framework_selection.md` (form: `templates/framework_selection.md`) as a contract.

> **GATE 0 (Method Selection Gate) — MUST PASS BEFORE SEARCH**:
> - [ ] Analysis mode locked (SLR / Scoping / Meta-Ethnography / Narrative / Integrative / Critical)
> - [ ] Reporting standard selected (PRISMA 2020 / PRISMA-ScR / eMERGe / SANRA / W&K / appraisal)
> - [ ] Mode RQ framework recorded (PCC / PICo / SPIDER / etc.)
> - [ ] Search strategy derived from the mode framework elements
> Paper/article search may ONLY begin once all four items are satisfied. Search results must be calibrated to the mode: e.g. scoping → target broad mapping (not effect), meta-ethnography → target qualitative studies with rich data (not quantitative surveys), narrative → target position/debate papers.

---

## INITIALIZATION — Mandatory Parameters Before Starting

**Mandatory execution order (cannot be reordered):**

```text
1. METHOD SELECTION (router)  → mode + reporting standard + RQ framework        [GATE 0]
2. INITIALIZATION PARAMETERS  → topic, language, quartile, year range,
                                mode-specific inclusion criteria                [GATE 0]
3. SEARCH STRATEGY            → keywords derived from the mode framework
4. LITERATURE SEARCH          → starts only after 1–3 are complete
5. MATRIX EXTRACTION          → per the mode template
```

Parameters confirmed *before* the search (not only before paper upload):

1. **Analysis mode** (from Method Selection Router): SLR / Scoping / Meta-Ethnography / Narrative / Integrative / Critical Review — **top priority**
2. **Reporting standard** desired (default follows mode): PRISMA 2020 / PRISMA-ScR / eMERGe / SANRA / Whittemore & Knafl / appraisal checklist
3. **Topic / research idea** & paper type
4. **Input language**: Bahasa Indonesia / English — **PAPER OUTPUT IS ALWAYS English-US** (not optional)
5. **Scopus Quartile filter target**: Q1–Q4 or no filter
6. **Year range**: default last 5 years (changeable)
7. **RQ framework selected** (default from the mode router) + **mode-specific initial inclusion/exclusion criteria**

> **Initialization contract**: save the result into `framework_selection.md`. **Without a locked mode, do not build search queries, do not call paper APIs, do not upload/extract. Ask the user first.** If the user uploads papers without naming a mode → ask for the mode first; do not guess extraction criteria.

---

## 6-STAGE PIPELINE (applies to all modes, linked to the protocol)

```text
STAGE 1: EXPLORE        → Literature search + Quartile filter + [MODEl-specific matrix extraction] + Gap Analysis + Research Map
STAGE 2: PLAN           → Research question (mode framework) + outline + word allocation + reviewer self-assessment
STAGE 3: WRITE          → Section-by-section in the mandatory order + claim-evidence map (+ MODE SYNTHESIS ENGINE outputs)
STAGE 4: CITE           → Citation formatting + bibliography + claim-citation validation + DOI check
STAGE 5: REVISE         → Humanizer (25 patterns) + English-US grammar check + mechanical gate + semantic gate + red-team review
STAGE 6: OUTPUT         → MD/LaTeX/DOCX conversion + final grammar + plagiarism check + [MODE AUTO-VALIDATION checklist] + pre-submission
```

Each stage has a **quality gate** — cannot proceed before passing. Per-mode protocol details are in `protocols/<mode>.md`; general stage details are in `references/*`.

---

## STAGE 1: EXPLORE

> Load `protocols/<mode>.md` for mode-specific extraction criteria.
> Load (per mode) `references/extraction-*.md` for the mode-specific extraction matrix.
> Search details: `references/literature-search.md`; gap mapping: `references/research-gap-mapping.md`.

### Step 1.1 — Method Selection + Initialization (MANDATORY first)
1. Lock the **analysis mode** via the Method Selection Router (GATE 0). **The only entry point into Stage 1.**
2. Confirm the INITIALIZATION parameters (above) — topic, language, quartile, years, RQ framework, initial inclusion criteria.
3. Save the contract to `framework_selection.md`.
4. **Only after this** execute Step 1.2.

### Step 1.2 — Mode-Calibrated Literature Search (after GATE 0 passes)
1. **Derive keywords from the mode RQ framework elements** — not a generic query:
   - **SLR**: P/I/C/O(S) — PICO/PICOS.
   - **Scoping**: P, C, C — Population, Concept, Context (PCC).
   - **Meta-Ethnography**: phenomenon of interest, setting, experience (PICo/SPIDER).
   - **Narrative**: main topic + debate territory.
   - **Integrative**: combination of qual & quant on the concept.
   - **Critical**: besides the topic, include appraisal/critique terms when relevant.
2. **Calibrate the search target to the mode** (results must fit the method):
   - Scoping → target papers that map concepts/contexts/methodologies broadly (conceptual relevance ≥ 7/10), volume may be larger.
   - Meta-Ethnography → target **interpretive qualitative studies** (data/construct rich), NOT quantitative surveys/experiments.
   - Narrative → target position/claim/debate papers, conceptual synthesis.
   - Integrative → target qual + quant studies on the same issue.
   - Critical → target papers that can be appraised (clear method & assumptions).
3. Search sources: OpenAlex API (free, try first), Semantic Scholar, Crossref (DOI verification), DOAJ, PubMed E-utilities (biomedical), arXiv (optional preprints).
4. Apply the Scopus Quartile filter when requested (verify via scimagojr.com); if unfiltered, quartile tagging is mandatory.
5. For systematic review/scoping: run 2 independent reviewers screening, dedup, record counts per PRISMA flow phase.
6. Target volume: 15–40 relevant papers (relevance ≥ 7/10); scoping may be broader.

### Step 1.3 — MODE-specific Extraction Matrix
- **SLR**: standard 7-field — `references/literature-matrix.md` + `templates/literature_matrix_template.md`.
- **Scoping**: PCC mapping — `references/extraction-scoping.md` + `templates/extraction_scoping.md`.
- **Meta-Ethnography**: 1st/2nd order constructs SEPARATED — `references/extraction-meta-ethnography.md` + `templates/extraction_meta_ethnography.md`.
- **Narrative**: argument positions — `references/extraction-narrative.md` + `templates/extraction_narrative.md`.
- **Integrative**: QUAL & QUANT data separated — `references/extraction-integrative.md` + `templates/extraction_integrative.md`.
- **Critical**: appraisal lenses (epistemological/methodological/bias) — `references/extraction-critical.md` + `templates/extraction_critical.md`.

If a field is empty → write *"—"* (do not fabricate).

### Step 1.4 — Gap Analysis (Gap Matrix)
Use `references/research-gap-mapping.md` + `templates/gap_matrix.md`:
1. Literature mapping (oldest → newest).
2. Gap Matrix (theoretical/methodological/contextual/inconsistency; min. 3 citations per gap).
3. Anti pseudo-gap.
4. Save to `gap_analysis.md`.

> **Qualitative mode note**: gaps for scoping/meta-ethnography are often *conceptual* (concept not yet synthesized/defined) — make sure they are supported by the evidence matrix.

### Step 1.5 — Research Positioning Map
Create `research_map.md` (4 quadrants) + connect to Module B (`references/journal-targeting.md`).

### Stage 1 Outputs
```
literature_matrix.md        — matrix per MODE (7-field / PCC / constructs / positions / mixed / appraisal)
gap_matrix.md               — gap matrix
gap_analysis.md             — gap analysis + evidence
research_map.md             — topic position map
framework_selection.md      — mode + framework contract
```

### Quality Gate 1
- [ ] **GATE 0 passed BEFORE search**: mode + reporting standard + RQ framework locked & recorded in `framework_selection.md`
- [ ] Search strategy derived from the mode framework (not a generic query)
- [ ] Search results calibrated to the mode (study type matches; scoping broad / meta-ethnography qualitative / etc.)
- [ ] Matrix extracted per the mode template (correct columns)
- [ ] Scopus Quartile listed
- [ ] ≥ 3 gaps with evidence; 0 pseudo-gaps
- [ ] User agrees to continue

---

## STAGE 2: PLAN

> Load `references/outline-builder.md`, `references/journal-targeting.md`, `references/novelty-framing.md`.

### Step 2.1 — Research Question & Hypotheses
Formulate the RQ with the mode framework (`protocols/<mode>.md` — e.g. PCC for scoping, PICo/SPIDER for meta-ethnography). Validate with FINER.

### Step 2.2 — Journal Targeting (Module B)
Strategy in `references/journal-targeting.md`. Match the mode to the journal arena (methodological/scoping journals vs qualitative synthesis journals).

### Step 2.3 — Outline Construction
Template `templates/paper_outline.md`. Proportions Intro 15–20% | Body 60–70% | Conclusion 10–15%. Write topic sentences first.

> **Qualitative mode**: the "Results" section contains the **synthesis results** (taxonomy/3rd order/debate), not paper-by-paper bread.

### Step 2.4 — Reviewer Self-Assessment (7 dimensions, 35 points)
Threshold ≥ 28/35. Low score → revise the outline.

### Step 2.5 — Framework Compliance Plan
Apply the mode framework to the outline: research procedure + reporting checklist → item→section map. Mandatory for evidence synthesis: PRISMA flow, risk-of-bias (or critical appraisal), complete search description.

### Step 2.6 — Citation Style
APA 7, MLA 9, Turabian, Vancouver, Harvard, Chicago, or IEEE. Record in `style_profile.md`/`framework_selection.md`.

### Step 2.7 — Novelty & Contribution Framing
`references/novelty-framing.md` + `templates/contribution_statement.md`. Contribution follows the mode type (e.g. scoping: new taxonomy map; meta-ethnography: new 3rd order construct).

### Stage 2 Outputs
```
paper_outline.md, research_question.md, framework_selection.md, framework_compliance.md, style_profile.md, contribution_statement.md
```

### Quality Gate 2
- [ ] RQ follows the mode framework & passes FINER
- [ ] Reviewer score ≥ 28/35
- [ ] Framework compliance complete
- [ ] Citation style selected & approved
- [ ] Contribution statement valid (0 overclaims)

---

## STAGE 3: WRITE

> Load `references/section-writing.md` + mode template.

### Mandatory Writing Order
```text
1. Draft 0 Introduction  (disposable framework — framing guardrails)
2. Literature Review      (fed directly from the mode matrix)
3. Methodology            (following the mode procedural framework)
4. Results & Discussion   (SYNTHESIS RESULTS from the mode engine)
5. Conclusion
6. Final Introduction     (REWRITTEN)
7. Abstract               (very last)
```

### Per-Section Process
1. Write topic sentences first → check argument flow → fill full paragraphs (4–6 sentences).
2. One paragraph, one message.
3. Run `checklists/post_draft.md`.
4. Map every major claim to evidence (claim-evidence map).

### Style Principles — see `core/system-prompt.md` (Non-Negotiable; applies to all modes): ~21-word sentences, active voice, zero hedging, no filler adjectives, named over vague, headings as claims.

### Claim-Evidence Map
For qualitative modes, ensure the evidence chain: 1st order → 2nd order → 3rd order (meta-ethnography); cluster → evidence (scoping/narrative).

### Stage 3 Outputs
```
draft_<section>.md      — per-section drafts
claim_evidence_map.md   — claim-evidence map
synthesis_<mode>.md     — synthesis engine artifact (if qualitative mode)
```

### Quality Gate 3
- [ ] All sections written in the mandatory order
- [ ] Final Introduction rewritten
- [ ] Abstract written last
- [ ] Claim-evidence map complete
- [ ] Mode synthesis artifacts (engineering outputs) integrated into Results

---

## STAGE 4: CITATION & REFERENCES

> Load `references/citation-formatter.md`.

### Steps 4.1–4.3
Confirm style → format all citations → validate (claim→citation, citation↔bibliography 1:1, DOI active).

> **Qualitative mode**: direct quotes of 1st order constructs in the synthesis narrative MUST be marked with the source paper + page (if available) — not just in the reference list.

### Stage 4 Outputs
```
draft_with_citations.md, bibliography.md, citation_validation.md
```

### Quality Gate 4
- [ ] All major claims are cited
- [ ] In-text ↔ bibliography 1:1
- [ ] Style consistent
- [ ] 1st order quotes traced correctly

---

## STAGE 5: REVISION & QUALITY CONTROL

> Load `references/revision-guide.md`, `references/grammar-check.md`, `references/quality-gates.md`.

### Layer 1 — Humanizer (25 patterns)
Summary in `references/revision-guide.md`. (Applies to the English-US output manuscript.)

### Layer 2 — Grammar Check (English-US; mandatory)
Details in `references/grammar-check.md`; checklist `checklists/grammar_check.md`. The check runs the full **English-US register** (US spelling: `analyze`, `color`, `center`; etc.) — on the paper output, not the input.

### Layer 3 — Mechanical Gate
Em-dash, sentences >40 words, passive voice, banned words, terminology drift.

### Layer 4 — Semantic Gate
Define-before-use, claim-evidence alignment, coherence & flow, honest positioning, followability.

### Layer 5 — Red-Team Review
Simulate a fresh-reader reviewer; findings ranked CRITICAL/IMPORTANT/MINOR; iterate until clean.

### Stage 5 Outputs
```
draft_revised.md, humanizer_report.md, grammar_report.md, red_team_findings.md, revision_log.md
```

### Quality Gate 5
- [ ] 0 remaining critical AI tells
- [ ] Grammar: 0 meaning-changing errors
- [ ] Mechanical gate 0 violations
- [ ] All claims supported (mode evidence chain valid)
- [ ] Red-team without CRITICAL/IMPORTANT

---

## STAGE 6: OUTPUT & MODE AUTO-VALIDATION

> Load `references/output-formatter.md`; `checklists/<mode>.md`; `templates/reporting_checklist.md`.

### Steps 6.1–6.2 — Formatting & Conversion
MD (default) / LaTeX / DOCX (pandoc).

### Step 6.3 — MODE Auto-Validation Checklist (mandatory, not optional)
Run the final checklist for the selected mode via `templates/reporting_checklist.md`, save to `reporting_checklist_result.md`:

| Mode | Final checklist |
|------|-----------------|
| SLR | `checklists/prisma_2020.md` (27 items) |
| Scoping | `checklists/prisma_scr.md` (22 items) |
| Meta-Ethnography | `checklists/emerge.md` (19 criteria) |
| Narrative | `checklists/sanra.md` (6 scored items) |
| Integrative | `checklists/whittemore_knafl.md` (17 criteria) |
| Critical | `checklists/critical_review.md` (10 criteria) |

Every "No"/"Incomplete" item MUST have a remediation plan before being considered complete.

### Step 6.3b — Pre-Submission Mechanical & Other Checks
Word count, broken references, terminology consistency, figure/table labels, final grammar, plagiarism (`checklists/plagiarism_check.md` → `plagiarism_report.md`), selected reporting checklist.

### Step 6.4 — Final Journal Fit & Cover Letter (Module B)
Fit re-check, re-verify journal (quartile today, anti-predator), self-assessment ≥ 28/35, cover letter (`templates/cover_letter.md`), supplementary documents (ORCID, data availability).

### Stage 6 Outputs
```
<paper_title>.md / .tex / .docx, reporting_checklist_result.md (mode auto-validation), plagiarism_report.md, grammar_report.md, pre_submission_checklist.md, journal_comparison.md, cover_letter.md, revision_summary.md
```

### Quality Gate 6
- [ ] All gates 1–5 satisfied
- [ ] **Mode auto-validation checklist clean (0 critical items)** + result saved
- [ ] Final grammar & plagiarism clean
- [ ] Target journal re-verified
- [ ] Acceptance self-assessment ≥ 28/35
- [ ] User approves the final version

---

## POST-SUBMISSION: REVIEWER RESPONSE & REJECTION HANDLING (Module C)

> Load `references/reviewer-response.md`; template `templates/response_to_reviewer.md`.

1. Classify the decision: desk reject / minor / major / reject.
2. Minor: comply with all points. Major: split into agree / partially comply / reject with strong reasons.
3. Write the response: editor letter (1 page) → point-by-point (acknowledgment + changes + evidence).
4. Rejection: decision path — resubmit to a better-fitting journal (Module B).
5. If the contribution changes → update `contribution_statement.md` & claims in the manuscript.
6. Outputs: `response_to_reviewer.md`, `revision_log.md`, `decision_log.md`.

---

## QUICK-USE FLOW (Without the Full Pipeline)

Users do not always need the full pipeline. Handle the request directly:

| Request | Action |
|---------|--------|
| "Pick/get a synthesis method" (scoping, meta-ethnography, narrative, integrative) | Method Selection Router → load `protocols/<mode>.md` → contract `framework_selection.md` |
| "Search references on X" | Stage 1 → matrix per mode (default SLR 7-field) |
| "Do a scoping review on X" | Scoping mode → `protocols/scoping-review.md` + `extraction_scoping.md` + Conceptual Mapping |
| "Run a meta-ethnography on these papers" | Meta-Ethnography mode → `protocols/meta-ethnography.md` + 1st/2nd order + Reciprocal Translation |
| "Write a narrative review of the X vs Y debate" | Narrative mode → `protocols/narrative-review.md` + Academic Debate Engine |
| "Do an integrative review of qual & quant" | Integrative mode → `protocols/integrative-review.md` + Whittemore & Knafl |
| "Critically appraise this literature" | Critical mode → `protocols/critical-review.md` + appraisal lenses |
| "Build an outline for paper X" | Stage 1+2 → Matrix + Outline |
| "Write the methodology section" | Load section-writing + mode procedural framework |
| "Format these citations" | Stage 4 only |
| "Polish/revise this draft" | Stage 5 only |
| "Grammar-check this draft" | Stage 5 Layer 2 (English-US) |
| "Check plagiarism/similarity" | Stage 6 (plagiarism check) |
| "Pick which journal for this paper" | Stage 2.2 (Module B) → `journal_comparison.md`; finalized in Stage 6.4 |
| "Write a cover letter" | Stage 6.4 → `templates/cover_letter.md` |
| "Respond to reviewer comments" | Post-submission (Module C) |
| "Convert to LaTeX/docx" | Stage 6 only |
| "Review this draft" | Red-team protocol (Stage 5 Layer 5) |
| "Plan a paper from scratch" | Full pipeline Stages 1–6 |

Ask for the user's confirmation before running the full pipeline if the context is unclear.

---

## Internal References

### Core & Router
| File | Use for |
|------|---------|
| [core/system-prompt.md](core/system-prompt.md) | Universal instructions for all modes (style, rules, claim-evidence, auto-validation) — ALWAYS LOAD |

### Mode Protocols (Method Selection Router)
| File | Use for |
|------|---------|
| [protocols/slr.md](protocols/slr.md) | SLR mode: PRISMA, PICO/PICOS, 7-field, screening |
| [protocols/scoping-review.md](protocols/scoping-review.md) | Scoping mode: PCC, PRISMA-ScR, JBI |
| [protocols/meta-ethnography.md](protocols/meta-ethnography.md) | Meta-Ethnography mode: eMERGe, Noblit & Hare 7 steps |
| [protocols/narrative-review.md](protocols/narrative-review.md) | Narrative mode: SANRA |
| [protocols/integrative-review.md](protocols/integrative-review.md) | Integrative mode: Whittemore & Knafl 5 stages |
| [protocols/critical-review.md](protocols/critical-review.md) | Critical mode: appraisal lenses |

### Qualitative Synthesis Engines
| File | Use for |
|------|---------|
| [engines/reciprocal-translation.md](engines/reciprocal-translation.md) | Meta-ethnography: 1st→2nd→3rd order, reciprocal/refutational/line-of-argument |
| [engines/conceptual-mapping.md](engines/conceptual-mapping.md) | Scoping: concept taxonomy, geographic/timeline/method distribution, research gaps |
| [engines/academic-debate.md](engines/academic-debate.md) | Narrative: pro/con clusters, idea timeline, open debate |

### General Stage Guides (references/)
| File | Use for |
|------|---------|
| [references/literature-search.md](references/literature-search.md) | Literature search + Scopus Quartile filter |
| [references/literature-matrix.md](references/literature-matrix.md) | 7-field matrix (SLR mode) |
| [references/extraction-meta-ethnography.md](references/extraction-meta-ethnography.md) | 1st/2nd order constructs extraction |
| [references/extraction-scoping.md](references/extraction-scoping.md) | PCC mapping extraction |
| [references/extraction-critical.md](references/extraction-critical.md) | Appraisal lens extraction |
| [references/extraction-narrative.md](references/extraction-narrative.md) | Argument position extraction |
| [references/extraction-integrative.md](references/extraction-integrative.md) | Qual+quant data extraction |
| [references/research-gap-mapping.md](references/research-gap-mapping.md) | Literature mapping, Gap Matrix, anti pseudo-gap |
| [references/novelty-framing.md](references/novelty-framing.md) | Gap→novelty, contribution statement |
| [references/journal-targeting.md](references/journal-targeting.md) | Journal arena, anti-predator, cover letter |
| [references/reviewer-response.md](references/reviewer-response.md) | Reviewer response & rejection path |
| [references/research-frameworks.md](references/research-frameworks.md) | RQ framework catalog (PCC, PICo, SPIDER, etc.) |
| [references/outline-builder.md](references/outline-builder.md) | Outline, word allocation, reviewer assessment |
| [references/section-writing.md](references/section-writing.md) | Per-section writing guide |
| [references/citation-formatter.md](references/citation-formatter.md) | APA/IEEE/MLA/Turabian/Chicago/Vancouver/Harvard formatting |
| [references/revision-guide.md](references/revision-guide.md) | Humanizer 25 patterns + revision workflow |
| [references/grammar-check.md](references/grammar-check.md) | English-US grammar & mechanics (output) + input ID/EN support |
| [references/plagiarism-check.md](references/plagiarism-check.md) | Plagiarism detection & citation integrity (EN primary) |
| [references/quality-gates.md](references/quality-gates.md) | Mechanical + semantic + red-team gates |
| [references/output-formatter.md](references/output-formatter.md) | MD/LaTeX/DOCX conversion |

### Templates
| File | Use for |
|------|---------|
| [templates/paper_outline.md](templates/paper_outline.md) | Paper framework |
| [templates/literature_matrix_template.md](templates/literature_matrix_template.md) | 7-field matrix (SLR) |
| [templates/extraction_meta_ethnography.md](templates/extraction_meta_ethnography.md) | Constructs matrix (meta-ethnography) |
| [templates/extraction_scoping.md](templates/extraction_scoping.md) | PCC matrix (scoping) |
| [templates/extraction_critical.md](templates/extraction_critical.md) | Appraisal matrix (critical) |
| [templates/extraction_narrative.md](templates/extraction_narrative.md) | Position matrix (narrative) |
| [templates/extraction_integrative.md](templates/extraction_integrative.md) | Mixed matrix (integrative) |
| [templates/gap_matrix.md](templates/gap_matrix.md) | Gap Matrix with 4 gap types |
| [templates/contribution_statement.md](templates/contribution_statement.md) | Novelty + contribution statement |
| [templates/cover_letter.md](templates/cover_letter.md) | Submission cover letter |
| [templates/journal_comparison.md](templates/journal_comparison.md) | Candidate journal comparison |
| [templates/response_to_reviewer.md](templates/response_to_reviewer.md) | Editor letter + point-by-point |
| [templates/framework_selection.md](templates/framework_selection.md) | Mode/framework selection form |
| [templates/reporting_checklist.md](templates/reporting_checklist.md) | Reporting checklist item mapping |
| [templates/section_templates/*](templates/section_templates/) | Per-section templates |
| [templates/citation_templates/*](templates/citation_templates/) | Per-style citation templates |

### Checklists (Auto-Validation)
| File | Use for |
|------|---------|
| [checklists/prisma_2020.md](checklists/prisma_2020.md) | SLR — 27 items |
| [checklists/prisma_scr.md](checklists/prisma_scr.md) | Scoping — 22 items |
| [checklists/emerge.md](checklists/emerge.md) | Meta-Ethnography — 19 criteria |
| [checklists/sanra.md](checklists/sanra.md) | Narrative — 6 scored items |
| [checklists/whittemore_knafl.md](checklists/whittemore_knafl.md) | Integrative — 17 criteria |
| [checklists/critical_review.md](checklists/critical_review.md) | Critical — 10 criteria |
| [checklists/grammar_check.md](checklists/grammar_check.md) | English-US grammar (output) |
| [checklists/plagiarism_check.md](checklists/plagiarism_check.md) | Anti-plagiarism (EN primary) |
| [checklists/*](checklists/) | Other quality checklists |

### Other
| File | Use for |
|------|---------|
| [scripts/convert.sh](scripts/convert.sh) | Format conversion |

---

## Core Rules (Always Apply)

1. **Never fabricate references.** Verify each paper actually exists (DOI, publisher, year). If unsure → "UNVERIFIED — check manually".
2. **Never fabricate data/facts/findings.** If not provided, ask or write the placeholder `[DATA]`.
3. **Never copy JOURNAL corpus text verbatim.**
4. **Language**: **paper output MUST be English-US academic register**; research input may be Bahasa Indonesia/English (translate input content faithfully without changing meaning).
5. **Human-in-the-loop** at every quality gate.
6. **Save all artifacts** as Markdown files in the project working folder.
7. Use templates & checklists as output contracts.
8. **Anti-plagiarism**: verbatim overlap (≥7 English words) must not pass.
9. **The mode must be locked before extraction** — do not mix extraction criteria across modes.

## Platform Note

This skill uses the Agent Skills format (SKILL.md), portable to:
- **OpenCode**: `~/.config/opencode/skills/academic-writing/`
- **Claude Code**: `~/.claude/skills/academic-writing/`
- Cross-platform (Codex, Cursor, Gemini, etc.): copy the `academic-writing/` directory into the respective skills folder.