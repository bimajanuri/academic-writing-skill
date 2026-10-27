---
name: academic-writing
description: Plans, synthesizes, writes, and revises English-US academic manuscripts across systematic, scoping, meta-ethnographic, narrative, integrative, and critical review methodologies. Use when conducting literature reviews, building extraction and gap matrices, outlining or drafting paper sections, formatting citations, refining academic prose, targeting journals, or responding to peer reviewers.
---

# Academic Writing

This skill provides a modular, multi-method pipeline for literature synthesis and academic manuscript production. All instructions in this file and its referenced modules are in English. Research input may be provided in Bahasa Indonesia or English, while the final manuscript output is always written in English (US) academic register.

## Usage

The skill activates automatically for academic writing, literature synthesis, research gap analysis, manuscript drafting, citation formatting, prose refinement, journal targeting, and reviewer-response requests. Users may also invoke it explicitly by name:

```text
Use academic-writing to plan and write a scoping review on [topic].
First lock Gate 0 (Scoping mode, PCC framework, and PRISMA-ScR reporting standard) before searching.
Preserve provenance, verify DOI metadata, build papers.json, and validate before delivery.
```

Select one of the six synthesis modes (`SLR`, `Scoping Review`, `Meta-Ethnography`, `Narrative Review`, `Integrative Review`, or `Critical Review`) before running literature acquisition or extraction. If the synthesis mode, scope, quartile filter, or citation style is ambiguous, ask once before searching.

## Load order

1. Load this `SKILL.md`.
2. Load `protocols/core-and-mode-protocols.md` for universal guidelines, the selected synthesis mode protocol, and the assigned qualitative synthesis engine.
3. Load `references/stage1-explore-and-extraction.md` for paper acquisition, `papers.json` provenance, mode extraction matrices, and research gap mapping.
4. Load `references/stage2-to-4-plan-write-cite.md` for research frameworks, outlining, novelty framing, journal targeting, section drafting, and citation formatting.
5. Load `references/stage5-to-7-revise-output-post.md` for prose style refinement, English-US grammar and text-overlap checks, quality gates, format conversion, and reviewer responses.
6. Load `templates/workflow-and-section-templates.md` and `templates/citation-style-templates.md` for output contracts and citation styles.
7. Load `protocols/guardrails-and-evaluation.md` and `protocols/validation-and-reporting-checklists.md` before final delivery.

## Method selection router (Gate 0)

Choose and lock the analysis mode before searching for or extracting any paper:

| Mode | Use when | RQ framework | Reporting standard | Extraction matrix | Synthesis engine |
|---|---|---|---|---|---|
| **SLR** | Quantitative or qualitative systematic review, meta-analysis, evidence of effect | PICO, PICOS, PICo, or SPIDER | PRISMA 2020 | Standard 7-field plus shared columns | Meta-analysis or thematic synthesis |
| **Scoping Review** | Broad mapping of evidence, concepts, geographic scope, and methodology types | PCC | PRISMA-ScR (JBI) | PCC mapping matrix | Conceptual Mapping |
| **Meta-Ethnography** | Qualitative meta-synthesis, lived experience, and theory development | PICo or SPIDER | eMERGe and Noblit-Hare 7 steps | 1st- and 2nd-order constructs | Reciprocal Translation |
| **Narrative Review** | Narrative overview, academic debate, and conceptual development | 5W+1H or CIMO | SANRA | Argument position matrix | Academic Debate |
| **Integrative Review** | Combined qualitative and quantitative empirical or theoretical literature | Adapted framework | Whittemore and Knafl | Mixed qualitative and quantitative matrix | 5-stage data reduction and comparison |
| **Critical Review** | Epistemological, methodological, or bias critique across studies | 5W+1H | CASP or JBI appraisal | Appraisal lens matrix | Per-study appraisal and ranking synthesis |

Record the locked mode, reporting standard, RQ framework, publication-year range, and Scopus Quartile target in `framework_selection.md` before building search queries.

## Pipeline & workflow checklist

- [ ] **Gate 0 — Method selection**: Lock synthesis mode, reporting standard, RQ framework, quartile filter, and year range in `framework_selection.md` (`protocols/core-and-mode-protocols.md`).
- [ ] **Stage 1 — Explore**: Run mode-calibrated acquisition (`Search`, `Folder`, or `Hybrid`), deduplicate and verify DOIs, build `papers.json` and `literature_matrix.md` with provenance, and generate `gap_matrix.md` and `research_map.md` (`references/stage1-explore-and-extraction.md`).
- [ ] **Stage 2 — Plan**: Formulate FINER research questions, compare target journals, build `paper_outline.md`, score >= 28/35 on the 7-dimension reviewer rubric, and write `contribution_statement.md` (`references/stage2-to-4-plan-write-cite.md`).
- [ ] **Stage 3 — Write**: Draft sections in sequence (Draft 0 Intro, Literature Review, Methodology, Results and Discussion from the synthesis engine, Conclusion, rewritten Final Intro, Abstract last) with `claim_evidence_map.md` (`references/stage2-to-4-plan-write-cite.md`).
- [ ] **Stage 4 — Cite**: Format in-text citations and bibliography (`APA 7`, `MLA 9`, `Turabian`, `Vancouver`, `Harvard`, `Chicago`, or `IEEE`) and verify 1:1 parity and DOIs (`templates/citation-style-templates.md`).
- [ ] **Stage 5 — Revise**: Run the 26 prose style refinement patterns, English-US grammar check, mechanical and semantic gates, and independent peer-review audit (`references/stage5-to-7-revise-output-post.md`).
- [ ] **Stage 6 — Validate**: Run output guardrails, quality rubric evaluation, and claim/citation regression checks (`protocols/guardrails-and-evaluation.md`).
- [ ] **Stage 7 — Output**: Convert to `.md`, `.tex`, or `.docx`, complete the mode reporting checklist in `reporting_checklist_result.md`, verify citation integrity, and prepare `cover_letter.md` (`protocols/validation-and-reporting-checklists.md`).

## Stage 1 — Explore and extract

1. Confirm input mode (`Search`, `Folder`, or `Hybrid`), synthesis mode, topic, Scopus Quartile target (`Q1`–`Q4` or unfiltered), and year range (default: last 5 years).
2. Derive search queries from the mode RQ framework elements and calibrate candidate selection to the mode.
3. Search OpenAlex first, followed by Semantic Scholar, Crossref, DOAJ, PubMed, or arXiv; for Folder or Hybrid mode, read local `.pdf` and `.tex` files and prefer full text over abstract metadata.
4. Collect ~1.5x the target count (typical target: 15–40 papers scoring >= 7/10 relevance), deduplicate by DOI and normalized title, and verify bibliographic metadata. Mark unresolved records `UNVERIFIED — check manually`.
5. Build `papers.json` as the single source of truth. Tag every extracted factual statement with `[AB]` (abstract-only) or full-text section markers (`[I-1]`, `[M-2]`, `[R-1]`, `[D-2]`, `[L-1]`, `[C-1]`, `[F-1]`).
6. Populate the shared columns (`Title & Authors`, `Journal`, `Year`, `Purpose`, `Method`, `Key Findings`, `Limitations`, `Gaps`, `Theory Used`, `Novelty/Contribution`, `Future Studies`, `DOI & Publisher`) plus the mode-specific columns in `references/stage1-explore-and-extraction.md`, then render `literature_matrix.md`.
7. Synthesize `gap_matrix.md` (>= 3 citations per gap; 0 pseudo-gaps) and `research_map.md`.

## Stage 2 to Stage 4 — Plan, write, and cite

1. Formulate research questions with FINER criteria (`research_question.md`), compare target journals (`journal_comparison.md`), and build `paper_outline.md` (Intro 15–20%, Body 60–70%, Conclusion 10–15%) with topic sentences first.
2. Score the outline with the 7-dimension reviewer rubric (require >= 28/35), map reporting checklist items (`framework_compliance.md`), and lock `contribution_statement.md`.
3. Draft in sequence: Draft 0 Intro -> Literature Review (thematic/construct synthesis) -> Methodology -> Results & Discussion (synthesis engine output) -> Conclusion -> rewritten Final Intro -> Abstract (150–250 words, 3–6 keywords).
4. Maintain `claim_evidence_map.md` and format all citations and `bibliography.md` per `templates/citation-style-templates.md` with 1:1 parity (`citation_validation.md`).

## Stage 5 to Stage 7 — Revise, validate, and export

1. Refine prose using the 26 stylistic patterns (`style_refinement_report.md`) and verify English-US grammar and spelling (`grammar_report.md`).
2. Check the mechanical gate (~21-word mean sentence length, max 40 words, active voice, evidence-calibrated modality, no em-dashes, claims-based headings), semantic gate, and independent peer-review audit (`peer_review_audit_findings.md`).
3. Run `protocols/guardrails-and-evaluation.md` before final output:

```text
claims_checked: N
citation_mismatches: N
unverified_sources: N
guardrail_violations: N
rubric_mean_score: X.X / 4.0
status: PASS | PASS_WITH_FLAGS | FAIL
```

4. Complete the mode reporting checklist from `protocols/validation-and-reporting-checklists.md` in `reporting_checklist_result.md`, verify citation integrity (`overlap_and_citation_report.md`), convert to `.md`, `.tex`, or `.docx`, and prepare `cover_letter.md` or `response_to_reviewer.md`.

## Handling missing or ambiguous information

- **Unspecified synthesis mode or RQ framework**: Pause before searching (Gate 0) and ask the user to select or confirm one of the 6 modes.
- **Missing empirical statistics or study data**: Never invent numbers, p-values, or outcomes. Insert `[DATA]` and ask the user to supply the missing values.
- **Unavailable field in a source paper**: Mark the extraction cell with `—`.
- **Abstract-only access**: Record only claims stated in the abstract with `[AB]` and mark full-text-only columns as `—`.
- **Unresolved DOI or metadata**: Preserve available source text and mark `UNVERIFIED — check manually`.

## Core guidelines

1. Lock the synthesis mode, reporting standard, and RQ framework (Gate 0) before literature search or extraction.
2. Never invent references, DOIs, quartiles, data, quotations, or study findings.
3. Keep `papers.json` and `literature_matrix.md` as the verified evidence base with explicit provenance markers.
4. Write all manuscript sections in English-US academic style following the required drafting sequence.
5. Pass human-in-the-loop quality gates, output guardrails, and the mode reporting checklist before final delivery.
