# Quality Gates — Mechanical Gate, Semantic Gate, and Red-Team (Stage 5)

Guide to layered quality control adapted from the SNL-UCSB paper-writing-skill. Applies to EVERY edit of academic text, not only full drafts.

## Quality Control Layers

```text
Layer 1: Humanizer        → revision-guide.md (25 AI patterns)
Layer 2: Mechanical Gate  → grep/pattern scan (easy to automate)
Layer 3: Semantic Gate    → reader-judgment audit
Layer 4: Red-Team         → independent reviewer, fresh-reader
```

**Only text that passes Layers 1–4 may be displayed/committed.**

---

## 1. Mechanical Gate (Layer 2)

Run with a pattern/grep scan. Report the NUMBER of findings (evidence), not merely "already checked".

### M1 — Em-dash & En-dash
- Pattern: `—`, `--`, ` – `
- **Fix**: replace with periods/commas/colons/parentheses; or rewrite the sentence.
- Applies in sentences (non-code), not paths/URLs.

### M2 — Long sentences
- Sentences > 40 words → split them.
- Average target ~21 words.

### M3 — Banned words & filler adjectives
The list to avoid (in academic writing, unless needed): *novel, significant (without statistics), state-of-the-art, comprehensive, robust (without definition), substantial, promising, impressive, moreover, notably, leveraging, delve, pivotal, nuanced, meticulously, transformative, landscape (abstract).*
- Replace with specific numbers or delete.

### M4 — Passive voice
- Pattern: `is/are/was/were + past participle` without an agent.
- Fix: active. "Accuracy was achieved by X" → "X achieved accuracy."
- Legitimate exceptions: when the agent is unimportant/a specific method's convention; but keep these minimal.

### M5 — Throat-clearing
- Pattern: "In this section", "Note that", "To answer this problem", "In order to", "With respect to".
- Delete and start with an action/claim.

### M6 — Hedging
- Pattern: "may potentially", "can be expected", "will likely help", "I suspect".
- Replace with assertive wording: "produces", "reduces", "achieves".

### M7 — Negation-first
- Pattern: "not X", "rather than X" in sentences that should assert YES.
- Rewrite positively.

### M8 — Terminology drift
- The same concept under different names across sections → make consistent.

### M9 — Repetition
- Serial repeated sentences/clauses ("shows...", "shows...").
- Merge or vary.

### M10 — Fragmentation/closer
- One-line closers that repeat the point (§2 humanizer).

### M11 — Formatting by rule
- Decorative bold, Title Case/emoji headings, curly quotes (§19–§21 humanizer).

### M12 — Citations
- Every technical claim borrowed from another source has a citation carried over from the previous section (not lost when copying).

**How to present the mechanical gate results:**

| Code | Violation | Number found | Number fixed | Example fix |
|------|-------------|------------------|-------------------|------------|
| M1 | em-dash | 4 | 4 | "X — which Y" → "X, which Y" |
| M3 | banned words | 2 | 2 | "novel" → concrete number |
| ... | | | | |

---

## 2. Semantic Gate (Layer 3)

Reader audit. Run by reading the text line by line, not with grep.

### S1 — Define-before-use
- Every term/label is defined at its first occurrence.

### S2 — Followability
- The reader can follow without jumps; no hidden assumptions.

### S3 — Coherence & flow
- Last sentence of paragraph N → first sentence of N+1 connect (cause/contrast/consequence).
- Reverse outlining: every paragraph can be mapped to the section claim.

### S4 — Claim-evidence alignment
- Every claim is supported by evidence (within that same section).
- Claims in the Abstract/Introduction → must map to evidence in the Results.

### S5 — Thesis-tie / RQ-tie
- Every section clearly contributes to the RQ; no filler chapters.

### S6 — Honest positioning
- No overclaiming: claim = level of evidence.
- "describes a relationship" vs. "proves causality" → match to the design.

### S7 — Non-duplication
- No two places discuss the same thing without reason (except for style/takeaway).

### S8 — Lexical & structural consistency
- Mechanism/baseline/metric names consistent; headings reflect content; figure/table labels fit.

### S9 — Figure-text-caption consistency
- What the text says ≈ what the figure/table shows ≈ the caption.

### S10 — Limitations
- Limitations are stated; not hidden in small notes.

### S11 — Conversational signposting at every section head
- Section openers are claims, not "In this section, we discuss...". (For the appropriate academic style.)

### S12 — Closure gate
- Check whether the draft ends with a summary + implications, rather than ending abruptly.

**Presenting the semantic gate results:**

| Code | Finding | Severity (Critical/Major/Minor) | Evidence (location) | Fix |
|------|--------|--------------------------------|----------------|-----|
| S4 | Claim without evidence | Critical | Intro ¶2 | Map to Table 4 |

---

## 3. Red-Team Protocol (Layer 4)

A reviewer who did NOT write the text, re-reading it through a first-time reader's lens.

### Procedure
1. **Separate the roles**: author (Layers 2–3) ≠ reviewer (Layer 4). Treat the text as if it came from someone else.
2. **Re-run the mechanical gate** (Layer 2) without assuming it is already clean.
3. **Apply the semantic gate** (Layer 3) with a fresh-reader lens.
4. **Return detailed findings**, not yes/no:
   - Each finding: location, type (mechanical/semantic), severity, suggestion.
5. **Priority**: Critical → mandatory fix; Important → fix before submission; Minor → optional polish.

### Severity Categorization (for academic work)
- **CRITICAL**: causes rejection — claims without evidence, missing sections, major overclaiming, fake citations, broken structure.
- **IMPORTANT**: visible to reviewers — incoherence, terminology drift, excessive passive voice, unreferenced tables.
- **MINOR**: polish level — word pacing, long sentences, untidy headings.

### Audit-fix loop
```
1. Red-team → findings
2. Author fixes per findings (one area per iteration)
3. Re-run red-team on the changed areas
4. Repeat until ZERO CRITICAL/IMPORTANT remain
```
Save the resulting ledger in `revision_log.md`.

---

## 4. Reviewer Simulation (7 Dimensions) — for the Final Draft

Besides the red-team, score the whole draft with a 7-dimension rubric (35 points) as a reviewer simulation (from lishix520/academic-paper-skills):

| Dimension | Score | Brief criteria |
|---------|------|------------------|
| Argument clarity | /5 | RQ clear, logical flow |
| Argument completeness | /5 | all claims supported |
| Literature support | /5 | coverage & currency |
| Methodology clarity | /5 | reproducible |
| Novelty expression | /5 | different contribution |
| Clarity & structure | /5 | organization, headings |
| Target & technical fit | /5 | format, citations, length |

**Threshold**: ≥ 28/35 → submission-ready; 21–27 → revise; < 21 → restructure.

---

## 5. Stage 5 Output

```
draft_revised.md          — final draft after all fixes
humanizer_report.md       — patterns found vs. fixed (Layer 1)
gate_report.md            — mechanical + semantic gate results (Layers 2–3)
red_team_findings.md      — red-team findings (Layer 4)
revision_log.md           — change ledger per iteration
```

## Operating Rules

1. Never claim the audit passed merely by "reading mentally" — include evidence (example hits, counts).
2. The red-team MUST be separate from the author in the same session (clean reviewer).
3. Every substantive change → re-run the gate at least on the changed area.
4. Priorities: from Critical to Minor; do not defer as "done".
5. Fake citations = Critical (see citation-formatter §7).