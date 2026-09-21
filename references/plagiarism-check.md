# Plagiarism Check — Plagiarism Detection & Citation Integrity (English-US)

Guide to checking plagiarism before submission (Stage 6) on manuscripts output in **English (US)**. Goal: ensure every sentence originates from the author or is quoted/paraphrased with proper attribution. (Input content may be in Bahasa Indonesia/English, but the final manuscript is checked as English text.)

## 1. Types of Plagiarism

| Type | Description | Sign |
|-------|-----------|-------|
| **Copy-paste (direct)** | Copying sentences/paragraphs verbatim without quotation | Word blocks that do not sound like the author's surrounding style |
| **Mosaic / patchwork** | Rearranging source words without genuine paraphrasing | Sentence structure still follows the source; only words are replaced with synonyms |
| **Paraphrase without attribution** | Legitimate paraphrase but with no source named | Specific claims/data/numbers without citations |
| **Self-plagiarism** | Re-submitting parts of one's own previously published paper/assignment (unless permitted) | Sentences identical to the author's own work |
| **Citation laundering / miscitation** | Citing a source never read (secondary citations without verification) | Sources in the reference list that do not match the claim |

## 2. Workflow — Local Verification (can be done by the agent)

Runs without paid tools. Perform in order:

### 2.1 Overlap against the corpus (Literature Matrix)
- Compare the manuscript's sentences/clauses with the **source texts in the Literature Matrix / available paper files**.
- Detection: verbatim phrases of ≥ 7 consecutive words (EN) that are not citations → flag.
- Proximity claim: if the manuscript has "verbatim source wording" without quotation marks & citation → **red flag**.

### 2.2 Check verbatim quotations
- Every direct quotation must be **in quotation marks** + page (if the style requires it).
- Long quotations: block/indent rules per style.
- Verify the quotation actually exists in the source (do not invent quote content) — anti-hallucination.

### 2.3 Paraphrase quality test

For good paraphrase:
1. There is a citation to the original source.
2. The sentence structure is **not** a sequential copy of the source (check the clause order).
3. It is not merely swapping synonyms without changing the structure.
4. The meaning stays accurate — paraphrase must not change the claim.

Rate each paragraph's paraphrase: `exact match (quotation)` / `good paraphrase` / `thin paraphrase (risk)` / `copy`.

### 2.4 Self-plagiarism
- Check for sentences identical to the author's previous publications/papers (if available).
- Indonesian context: theses on platforms may be submitted with permission; still report the limits and inform the user.

### 2.5 Network source verification (optional, if access is available)
- Search typical verbatim phrases (e.g., 8–10 words) in a search engine to detect unknown sources.
- Do not rely on the search results as final proof; use them as signals for manual checking.

## 3. Similarity Score

When using tools (Turnitin/iThenticate/PlagiarismCheck) or local estimates:

| Band | Interpretation |
|------|--------------|
| 0–10% | Reasonable when from short quotations & the reference list; still check the source sentences (not templates). |
| 10–20% | Check recurring sources; re-paraphrase overlapping passages without quotes. |
| >20% | Must be revised: cite/quote/paraphrase all overlapping areas before submission. |

> A similarity tool is neither a language/grammar judge nor a substitute for miscitation verification. A low score ≠ free of plagiarism.

## 4. Rules (Anti-Plagiarism — always in effect)

1. **Do not** copy sentences from sources without quotation marks + citations.
2. **Do not** paraphrase without citation (APA/MLA/Chicago/Harvard/Vancouver — see `references/citation-formatter.md`).
3. **Do not** invent or embellish quotations.
4. **Do not** accept "AI output" text that copies sources; academic integrity still applies.
5. Every specific data point/number/claim has a source in the Literature Matrix — if not → mark `[DATA]`/`UNVERIFIED`.

## 5. Integrity & Ethics

- Legitimate paraphrase = rewriting the idea in your own words **while** citing; not synonym-switching.
- Report significant overlap findings to the user; do not silently fix them and consider it done.
- Language: the output manuscript is English-US; the reference corpus is international journals. Input content may be in Bahasa Indonesia/English; if the input is in Bahasa Indonesia, ensure the translated output is not a raw verbatim copy of a source — paraphrase remains mandatory.

## 6. Output

```
plagiarism_report.md   — list of overlapping areas (location, source, plagiarism type, decision: quote/paraphrase/cite/delete)
```

Use `checklists/plagiarism_check.md` for per-section tracking.