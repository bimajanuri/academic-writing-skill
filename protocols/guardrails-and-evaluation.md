# Output Guardrails, Composable Revision Patterns, Evaluation Protocol, and Quality Rubric

## 1. Pre-Delivery Output Guardrails

Run these checks before displaying or exporting any matrix, draft, or revised manuscript.

### 1.1 Source, Citation & Metadata Integrity
- Every cited paper exists in `papers.json` / `literature_matrix.md` with a verified DOI or readable local file.
- Unresolved metadata is marked `UNVERIFIED — check manually`; never guess DOIs, volumes, pages, or quartiles from memory.
- 1:1 parity holds between in-text citations and `bibliography.md`.

### 1.2 Claim, Modality & Literal Data Fidelity
- Every major claim maps to source evidence with a provenance marker (`[AB]`, `[I-1]`, `[M-2]`, `[R-1]`, `[D-2]`, `[L-1]`, `[C-1]`, `[F-1]`).
- Abstract-only records (`[AB]`) never claim full-text methods, subgroup results, or limitations absent from the abstract.
- Modality matches the source design (associational studies use correlational verbs; causal verbs require causal designs).
- All numbers, sample sizes (`n`), effect sizes, `p`-values, confidence intervals, dates, and quotations match the source verbatim. Missing user data uses `[DATA]`.

### 1.3 Language, Style & Originality Guardrails
- Manuscript text is 100% **English (US) academic register** (US spelling, serial comma, active voice, mean sentence length ~21 words, max 40 words, zero em-dashes in prose).
- Zero uncited verbatim overlap >= 7 consecutive English words from any source without quotation marks and citation.

### 1.4 Failure Actions

| Issue | Action |
|---|---|
| Unverified citation, DOI, statistic, or quote | Remove or replace with verified source or `[DATA]` / `UNVERIFIED`. |
| Claim lacks provenance or exceeds abstract scope | Reconsistent claim to verified `[AB]` scope or re-extract from full text. |
| Modality inflation (correlation -> causation) | Restore source-calibrated hedging verb. |
| In-text <-> bibliography mismatch | Reconcile against `papers.json` before delivery. |
| Non-US English or Indonesian in final manuscript | Standardize to English-US academic prose while preserving meaning. |

---

## 2. Composable Academic Revision Patterns

1. **Pattern A — Claim-First Topic Sentences**: Place the paragraph's core takeaway in sentence 1; follow with mechanism, cited evidence, and boundary conditions.
2. **Pattern B — Active Actor Restoration**: Convert agentless passives ("It was found that X increased Y [3]") into active statements ("Smith et al. [3] demonstrated that X increased Y by 14%").
3. **Pattern C — Compression of Formulaic Openings**: Delete meta-introductory clauses ("It is important to note that", "In recent years") and open directly with the phenomenon and evidence.
4. **Pattern D — Thematic Synthesis Merge**: Combine consecutive single-study summaries into unified thematic synthesis sentences comparing multiple studies.
5. **Pattern E — Modality Calibration**: Align verb strength with study design (`demonstrates/causes` for experiments; `is associated with/predicts` for surveys; `suggests/conceptualizes` for qualitative/theoretical studies).

---

## 3. Evaluation Protocol & 8-Dimension Quality Rubric (0–4 Scale)

Score substantial drafts or final manuscripts from `0` to `4` per dimension:

| # | Dimension | 0 (Inadequate) | 2 (Needs Revision) | 4 (Publication-Grade) |
|---|---|---|---|---|
| 1 | **Source & Metadata Verifiability** | Unverified or missing sources | Unresolved items unmarked | All sources verified in `papers.json` or marked `UNVERIFIED` |
| 2 | **Method & Protocol Compliance** | Gate 0 skipped or wrong mode | Partial adherence to mode protocol | Full compliance with mode framework, engine, and checklist |
| 3 | **Provenance & Evidence Traceability** | Claims lack citations/markers | Inconsistent provenance markers | Every claim/construct mapped (`[AB]`/`[R-1]`, 1st->2nd->3rd order) |
| 4 | **Factual, Literal & Modality Fidelity** | Altered numbers, quotes, or causality | Minor hedging or scope drift | Numbers, quotes, units, and modality match sources |
| 5 | **Synthesis Depth & Novelty Framing** | Paper-by-paper list or pseudo-gaps | Descriptive grouping with weak synthesis | Cross-study synthesis, >= 3-citation gaps, calibrated novelty |
| 6 | **Argument Coherence & Architecture** | Intro/Results mismatch | Uneven paragraph focus or transitions | Topic-sentence-led paragraphs; Intro matches Results |
| 7 | **English-US Style & Citation Integrity** | Mechanical prose, UK/ID mix, or overlap | Occasional long sentences or filler words | Crisp English-US prose (~21w mean), 0 overlap issues, 1:1 citations |
| 8 | **Reporting Standard Completeness** | Checklist omitted | Checklist items incomplete | All required items satisfied in `reporting_checklist_result.md` |

- **PASS**: Zero guardrail violations, all applicable dimensions >= 3, mean score >= 3.2 / 4.0.
- **PASS_WITH_FLAGS**: Zero guardrail violations, only documented source-access limitations (e.g., abstract-only records marked `[AB]`).
- **FAIL**: Any guardrail violation or any dimension < 3. Guardrail violations take precedence over aggregate scores.
