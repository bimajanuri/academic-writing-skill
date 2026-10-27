# Stages 5–7 & Post-Submission: Prose Style Refiner, Grammar, Overlap Check, Quality Gates, Output Conversion, and Reviewer Response

## 1. Prose Style Refiner — 26 Academic Stylistic Patterns (Stage 5, Layer 1)

Scan the manuscript and eliminate these 26 formulaic draft patterns while preserving all claims, citations, numbers, quotations, and technical terms (`style_refinement_report.md`):

### Part A — Staging Instead of Stating (Edit on 1 Finding)
- **§1 Not X, but Y**: False negative contrasts ("This review is not merely a summary, but rather a comprehensive paradigm shift"). -> State the positive contribution directly.
- **§2 Dramatic One-Line Closers & Fragments**: Single-sentence paragraphs repeating a point ("That changes everything."). -> Merge into the preceding evidence paragraph or delete.
- **§3 Pseudo-Profound Aphorisms**: ("At its core, context is the currency of qualitative inquiry.") -> Replace with a concrete empirical or theoretical claim.
- **§4 Staged Meta-Run-Ups**: ("In this subsection, let us carefully examine how...") -> Open directly with the claim.
- **§5 Arguing with No One**: Defensive strawmen ("Critics might say X is irrelevant, yet...") unless citing an actual published critique.

### Part B — Mechanical Rhythm (Edit When Clustered)
- **§6 Forced Triads**: Automatic three-adjective or three-noun lists ("robust, scalable, and transformative"). -> Keep only distinct, operational terms.
- **§7 Repetitive Sentence Openings**: Consecutive sentences starting with "The results show..." or "Furthermore,". -> Vary subject openings and merge related claims.
- **§8 Em-Dashes (`—`) as Universal Connectors**: Replace all prose em-dashes with commas, colons, parentheses, or periods.
- **§9 Stacked Qualifiers**: ("may potentially tend to suggest") -> Use a single source-calibrated verb.
- **§10 Unnecessary Hyphenated Buzzwords**: ("context-aware", "value-driven" used predicatively) -> Hyphenate only compound modifiers before nouns.
- **§11 Agentless Passive Voice**: ("was conducted", "were identified") -> Name the researchers, studies, or review team where clarity improves.

### Part C — Inflated Significance & Borrowed Authority
- **§12 Overused Formulaic Vocabulary**: Replace *delve, underscore, pivotal, crucial, landscape, tapestry, multifaceted, testament, bolster, navigate, foster, showcase, realm, paradigm-shifting, profound* with precise domain verbs and nouns.
- **§13 Inflated Significance Riders**: ("laying a vital groundwork for future generations") -> End on the concrete implication.
- **§14 Unspecified Associations**: ("X is linked to Y") -> Specify direction, magnitude, or mechanism from the source.
- **§15 Trailing `-ing` Participial Clauses**: ("..., highlighting the importance of X and ensuring Y.") -> Cut the trailing clause or make it an evidence-backed sentence.
- **§16 Promotional / Sales Adjectives**: ("groundbreaking", "remarkable", "comprehensive" without numbers) -> Replace with exact study counts or effect sizes.
- **§17 Vague Borrowed Authority**: ("Experts widely agree", "Studies show" without citations) -> Cite the exact authors and years.
- **§18 Weak Copula Replacements**: ("serves as", "boasts", "features") -> Use `is`, `has`, or a direct action verb.

### Part D — Decorative Formatting & Draft Residue (Delete Entirely)
- **§19 Decorative Boldface Mid-Sentence**: Do not bold random phrases inside body paragraphs.
- **§20 Emoji or Non-Academic Symbols in Headings/Prose**: Strip completely.
- **§21 Inconsistent Quotation Marks**: Standardize to straight or journal-standard English-US double quotes (`"..."`) with single quotes (`'...'`) inside.
- **§22 Conversational Assistant Residue**: ("Certainly!", "Here is the revised section", "I hope this helps") -> Strip completely.
- **§23 Unsolicited Disclaimers**: ("As of my last update...") -> Strip completely.
- **§24 Repeating the Section Heading Verbatim in Sentence 1**: Advance the argument immediately.
- **§25 Meta-Commentary on Prior Draft Versions**: ("In this revised version, we improved...") -> Keep only in `revision_log.md`, never in the manuscript.
- **§26 Bullet-List Fragmentation in Narrative Sections**: Write full, cohesive academic paragraphs in the Introduction, Literature Review, Results, and Discussion; reserve tables and lists for structured summaries.

---

## 2. English-US Grammar & Mechanics Check (Stage 5, Layer 2 — `grammar_report.md`)

1. **US Spelling Standard**: Enforce `-ize` (`analyze`, `synthesize`, `categorize`), `-or` (`color`, `behavior`, `favor`), `-er` (`center`, `meter`), single `-l-` (`modeling`, `labeled`, `signaling`), and `-ense` (`defense`, `license`), except inside direct quotes or non-US proper nouns/titles.
2. **Academic Tense Discipline**:
   - *Past tense* (`examined`, `reported`, `extracted`) for specific completed actions by prior authors or your review methods (`"We screened 412 records"`).
   - *Present tense* (`demonstrates`, `indicates`, `shows`) for enduring theoretical truths, table/figure references (`"Table 3 summarizes"`), and the manuscript's overarching conclusions.
3. **Punctuation & Syntax**: Mandatory Oxford/serial comma (`A, B, and C`); proper Latin abbreviations (`e.g.,`, `i.e.,`, `et al.`); accurate subject-verb agreement across long prepositional phrases; zero dangling modifiers.

---

## 3. Text-Overlap & Citation Integrity Check (`overlap_and_citation_report.md`)

- **Seven-Word Rule**: Any sequence of **>= 7 consecutive words** identical to a source paper (excluding proper institutional names, standard statistical formulas, or instrument names) must either be enclosed in quotation marks with an exact citation + page number or thoroughly restructured and cited.
- **Paraphrase Integrity**: Never do "thesaurus patchwriting" (swapping 2–3 synonyms while keeping the source's sentence skeleton). Reconstruct the idea around your thematic synthesis claim and cite the source.

---

## 4. Quality Gates: Mechanical, Semantic & Independent Peer-Review Audit (Stage 5, Layers 3–5)

- **Layer 3 — Mechanical Gate**: Sentence length (mean ~21 words, 0 sentences > 40 words); 0 prose em-dashes; 0 §12 banned formulaic words; consistent acronym definition at first use.
- **Layer 4 — Semantic Gate**: Every construct defined before use; every paragraph topic sentence supported by the paragraph body; every Results claim reflected in `literature_matrix.md`; Discussion answers the exact RQs posed in the Introduction.
- **Layer 5 — Independent Peer-Review Audit (`peer_review_audit_findings.md`)**: Evaluate the manuscript from the perspective of a skeptical domain reviewer. Classify findings as `CRITICAL` (invalidates method, claim, or citation integrity), `IMPORTANT` (weakens argument or reporting compliance), or `MINOR` (stylistic polish). Iterate until `0 CRITICAL` and `0 IMPORTANT` findings remain.

---

## 5. Output Formatter & Pandoc Conversion (Stage 7)

Deliver the validated manuscript in Markdown (`.md`, default), LaTeX (`.tex`), or Word (`.docx`). When `pandoc` is available in the environment, run:

```bash
# 1. Markdown -> DOCX (with optional BibTeX and CSL style)
pandoc manuscript.md -o manuscript.docx --bibliography=refs.bib --citeproc --csl=apa.csl

# 2. Markdown -> Standalone LaTeX (.tex)
pandoc manuscript.md -o manuscript.tex --standalone --bibliography=refs.bib --citeproc --csl=apa.csl

# 3. Markdown -> PDF via XeLaTeX
pandoc manuscript.md -o manuscript.pdf --bibliography=refs.bib --citeproc --csl=apa.csl   --pdf-engine=xelatex -V mainfont=TeXGyreTermes -V fontsize=12pt
```

Run Pre-Submission Mechanical Checks (`pre_submission_checklist.md`): word count vs. target, zero broken `Figure/Table` cross-references, 1:1 citation parity, and double-blind anonymization when required.

---

## 6. Post-Submission Reviewer Response & Rejection Handling (Module C)

1. **Decision Triage**: Classify editor decision (`Minor Revision`, `Major Revision`, `Reject & Resubmit`, or `Desk/Full Reject`).
2. **Response Strategy (`response_to_reviewer.md`)**:
   - Open with a concise, appreciative 1-page Executive Summary to the Editor highlighting key manuscript improvements.
   - Number every comment (`R1.C1`, `R1.C2`, `R2.C1`) and respond using the 4-part contract:
     `1. Reviewer Comment (verbatim) -> 2. Author Response (Polite Acknowledgment + Direct Answer + Method/Evidence Justification) -> 3. Exact Location of Change (Section, Page, Lines) -> 4. Quoted Revised Text in the Manuscript`.
   - When respectfully declining a suggestion, provide methodological or scope-based evidence rather than opinion.
3. **Rejection Retargeting**: If rejected, incorporate all valid reviewer critiques first, update `journal_comparison.md` to select the next-best target journal, reformat citations/headings to the new venue, and generate a fresh `cover_letter.md`.
