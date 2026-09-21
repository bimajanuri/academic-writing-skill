# Grammar Check — English (US) for Academic Output Manuscripts

Guide to checking grammar, spelling, punctuation, and consistency in **English-US** on the academic output manuscript. Used in **Stage 5 (Grammar Layer)** and before submission (Stage 6).

> Differentiate from the Humanizer (Layer 1): the humanizer handles *AI-typical style*; the grammar check handles *linguistic correctness* per language rules. The two can be related, but the checks differ.
>
> **Language policy**: the output paper MUST be in English-US. Research input may be in Bahasa Indonesia/English (understood without changing meaning). The Bahasa Indonesia section below exists only to help *interpret* the intent of ID input when translating — not for writing the manuscript.

## 1. Grammar Check Workflow (English-US)

1. **Ensure the English-US register** across the entire manuscript (US spelling; do not mix US/UK).
2. **Run mechanical checks first** (patterns that can be hunted automatically, §3).
3. **Check grammar** (agreement, tense, sentence structure, prepositions).
4. **Check spelling & word choice** (US spelling).
5. **Check punctuation & format** (capitalization, serial comma, apostrophe, quotation marks).
6. **Check consistency** (terms, term forms from the Stage 5 mechanical gate, US register).
7. If available, run **LanguageTool** (free, `en-US`) as a complement, then verify its suggestions manually — do not accept them blindly.
8. When the input content is in Bahasa Indonesia, make sure the translation result leaves no trace of Indonesian sentence structures that sound awkward in English (check the translation as native English, not "translated English").

## 2. (Input Reference) Bahasa Indonesia — for Understanding Input, Not Writing

Research input may be given in Bahasa Indonesia. To interpret it correctly:
- ID rule references: EYD (Permendikbudristek No. 18 Tahun 2022) & KBBI — only to correctly understand/not misinterpret the input.
- Do not copy ID sentences into the manuscript; translate them into natural English-US.

### 2.1 Standard vs. non-standard words (common examples, for understanding ID input)

| Standard form (baku) | Non-standard variant |
|------|-----------|
| analisis | analisa |
| apotek | apotik |
| risiko | resiko |
| praktik | praktek |
| karier | karir |
| izin | ijin |

> Note: verify doubts against KBBI (kbbi.kemdikbud.go.id) when the input is ambiguous.

## 3. English (US) — Important Rules (Mandatory Output)

Reference: MLA/CMOS/APA house style per the journal; **must be consistent in the US register** (`analyze`, `color`, `center`, `modeling` — not UK).

### 3.1 Subject–verb agreement
- Singular/plural subjects must match the verb: `The results show ...` (not `shows`).
- Common errors: `Each of the studies is ...`; `The number of participants was ...` vs. `A number of participants were ...`.
- Compound subjects with `and` → plural; with `or/nor` → follows the nearest element.

### 3.2 Article usage (a/an/the)
- `a` before consonant sounds (`a university`), `an` before vowel sounds (`an hour`).
- `the` for specific/known references; no article for general plurals.

### 3.3 Tense consistency
- Manuscript convention: present tense for what remains true (`we argue`, `Table 1 shows`), past tense for reporting results/research actions (`we collected`, `the results indicated`).
- Choose one tense per function and keep it consistent across sections; do not shift without reason.

### 3.4 Prepositions
- Common errors: `different from` (not `than`), `similar to`, `consistent with`, `based on`, `in contrast to` (not `with`).
- `compared with` (comparing similarities/differences) vs. `compared to` (analogy).

### 3.5 Punctuation (US)
- **Serial comma** (Oxford comma) required in MLA/Chicago: `X, Y, and Z`.
- Comma splice: two independent clauses separated by a comma without a conjunction → replace with a period/`;`/`and`/`but`.
- Semicolon for separating dense clauses or lists that contain commas.
- Possessive apostrophe: `the study's aim` (not `studies`); `its` has no apostrophe (possessive), `it's` = it is.
- Quotes: US uses double quotes `"..."`.

### 3.6 Spelling register (MANDATORY US)
- US: `analyze, color, center, modeling, behavior, organization`.
- Remove UK variants (`analyse, colour, centre, modelling, behaviour, organisation`) from the manuscript.
- Check for a British lean on the same root words; choose ONE register and be consistent.

## 4. Common Error Patterns (best practice for English-US)

| Category | English (US) |
|----------|--------------|
| Agreement | subject–verb agreement |
| Word | spelling US/UK (must be US) |
| Preposition | prepositions |
| Tense | tense consistency |
| Punctuation | serial comma REQUIRED (MLA/Chicago) |
| Possession | `its` vs. `it's`, apostrophe |

## 5. Tools (Optional)

- **LanguageTool** — free, API: `https://api.languagetool.org/v2/check`; parameter `language=en-US`. Suggestions must be **verified manually**.
- **Hunspell** — dictionary spell checker (via CLI) for quick checks.

> Main rule: automated tools help find issues, but humans/AI decide. Do not change meaning just because "the tools trimmed it".

## 6. Output

```
grammar_report.md   — list of findings (category, location, suggestion, fix) + status per item
```

Use `checklists/grammar_check.md` as a per-section tracker of the manuscript.