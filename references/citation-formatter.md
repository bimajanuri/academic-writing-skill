# Citation Formatter — Citation & Reference Formatting (Stage 4)

Guide to formatting in-text citations and bibliographies in **6 chosen styles**: **APA 7, MLA 9, Turabian, Vancouver, Harvard, Chicago** — plus **IEEE** as an additional option for engineering fields.

Detailed per-style templates are in `templates/citation_templates/`.

## 1. Choose a Style

Ask the user. Recommendations by field:

| Field | Typically Used |
|--------|-----------------|
| Psychology, Education, Social, Business, Health | **APA 7** |
| Engineering, Computer, Informatics | **IEEE** (additional option) |
| Humanities, Literature, Language | **MLA** / **Turabian** / **Chicago** |
| History, Philosophy | **Chicago (Notes)** / **Turabian (Notes)** |
| Theses/Dissertations/Student papers | **Turabian** |
| Economics, Management, Social (British English), Health | **Harvard** |
| Medicine, Biomedicine | **Vancouver** |
| Target journal | The journal's style (e.g., following the journal template) |

If the user does not know → ask for the field and give the recommendation above. **The style can also be decided in Stage 2** (based on the target journal) and fully formatted in Stage 4.

## 2. Required Reference Data

For one paper, ideally have (from the Literature Matrix):
- DOI, Title, Authors (all if fewer than the maximum; `et al.` per style)
- Journal/venue, Year, Volume, Issue, Pages, Publisher, City
- For web: URL + access date (specifically APA/MLA/Chicago)

If a field is missing → write the placeholder `[data not available]` and flag it to the user, DO NOT invent it.

## 3. Quick Format Reference

### In-Text Citation

| Style | Narrative citation | Parenthetical citation |
|------|-----------------|----------------|
| **APA 7** | Rahman (2023) states ... | (Rahman & Sari, 2023) |
| **MLA 9** | Rahman argues ... | (Rahman 45) — with page |
| **Turabian Author-Date** | Rahman and Sari (2023) ... | (Rahman and Sari 2023, 210) |
| **Vancouver** | Rahman et al. concluded ...¹ | ... ¹ |
| **Harvard** | Rahman and Sari (2023) ... | (Rahman and Sari, 2023, p. 210) |
| **Chicago Author-Date** | Rahman (2023) ... | (Rahman 2023) |
| **IEEE** | As discussed in [3] ... | ... [3] |

### References (examples, journal article)

**APA 7:**
```
Rahman, A., & Sari, D. (2023). The influence of social media on students' academic performance. Jurnal Psikologi Indonesia, 12(3), 210–225. https://doi.org/10.xxxx/xxx
```

**IEEE:**
```
[1] A. Rahman and D. Sari, "The influence of social media on students' academic performance," Jurnal Psikologi Indonesia, vol. 12, no. 3, pp. 210–225, 2023, doi: 10.xxxx/xxx.
```

**MLA 9:**
```
Rahman, Ahmad, and Dewi Sari. "The Influence of Social Media on Students' Academic Performance." Jurnal Psikologi Indonesia, vol. 12, no. 3, 2023, pp. 210–225.
```

**Chicago Author-Date:**
```
Rahman, Ahmad, and Dewi Sari. 2023. "The Influence of Social Media on Students' Academic Performance." Jurnal Psikologi Indonesia 12 (3): 210–225. https://doi.org/10.xxxx/xxx.
```

**Chicago Notes:**
```
1. Ahmad Rahman and Dewi Sari, "The Influence of Social Media on Students' Academic Performance," Jurnal Psikologi Indonesia 12, no. 3 (2023): 210–225.
Bibliography:
Rahman, Ahmad, and Dewi Sari. "The Influence of Social Media on Students' Academic Performance." Jurnal Psikologi Indonesia 12, no. 3 (2023): 210–225.
```

**Turabian (Notes-Bibliography):**
```
1. Ahmad Rahman and Dewi Sari, "The Influence of Social Media on Students' Academic Performance," Jurnal Psikologi Indonesia 12, no. 3 (2023): 210–225.
Bibliography:
Rahman, Ahmad, and Dewi Sari. "The Influence of Social Media on Students' Academic Performance." Jurnal Psikologi Indonesia 12, no. 3 (2023): 210–225.
```

**Harvard (Cite Them Right):**
```
Rahman, A. and Sari, D. (2023) 'The influence of social media on students' academic performance', Jurnal Psikologi Indonesia, 12(3), pp. 210–225. doi: 10.xxxx/xxx.
```

**Vancouver:**
```
1. Rahman A, Sari D. The influence of social media on students' academic performance. Jurnal Psikologi Indonesia. 2023;12(3):210–225. doi:10.xxxx/xxx.
```

## 4. Name Formatting Rules (International vs Indonesian)

- **APA/MLA/Chicago/Turabian**: "Lastname, Firstname." → `Rahman, A.` / `Rahman, Ahmad`. Names following the Western format are written `Smith, J.`
- **IEEE/Vancouver**: `A. Rahman` / `Rahman A.` (in the Vancouver bibliography, entirely `Rahman A`).
- **Harvard**: `Rahman, A.` (last name + initials) — the reference list is ordered `Last, A.`
- For Indonesian names where the authors list two words without a hyphen (e.g., "Ahmad Rahman H."), retain the syllable CAPITALIZED by the author as the family name; if unclear → ask, or use the order given in the original paper.
- Avoid mistakes: if the paper writes "Rahman, Ahmad" → keep the original author in the author-date interchange.

## 5. Using `et al.` / "and colleagues"

| Style | Rule |
|------|--------|
| APA 7 | 3+ authors → in-text `et al.` from the first mention; in the reference list, all authors |
| MLA | 3+ authors → `Rahman et al.` |
| Turabian | 3+ → in-text `et al.` (Author-Date) / full note in the first note |
| Chicago Author-Date | 3+ → `Rahman et al.` |
| Harvard | 3+ → `Rahman et al.` |
| Vancouver | 6+ → `Rahman A, Sari D, ... et al.` |
| IEEE | 6+ authors → `A. Rahman et al.` (the reference list may list 6 then `et al.` per the journal) |

## 6. Citation Validation

Mandatory after formatting:

1. **Every claim needing a reference has a citation** — scan claim paragraphs without citations.
2. **In-text ↔ bibliography consistent** — check 1:1 (in one direction).
3. **Style consistent** — do not mix APA and IEEE.
4. **DOI/URL format**:
   - DOI: `https://doi.org/<doi>` (the APA-recommended form)
   - Ensure there are no unnecessary spaces/italics
5. **"et al." & "&"**: per each style (APA uses "and" at the start of a sentence, "&" in parentheses; IEEE uses "and").
6. **Year consistent** — publication year vs. web access year.

## 7. Fake Reference Detection (Anti-Hallucination)

1. All references must come from the verified Literature Matrix.
2. Never create references to make citations look complete.
3. If the user types a title/claim not in the matrix → check the source (OpenAlex/Semantic Scholar) or mark `UNVERIFIED` and ask the user.

## 8. Zotero / BibTeX Support (Optional)

- If the user uses Zotero: instruct exporting the bibliography in the target format from Zotero, then verify the format.
- If using LaTeX: provide a BibTeX block from the DOI:
  ```
  @article{rahman2023influence,
    author  = {Rahman, Ahmad and Sari, Dewi},
    title   = {The influence of social media on students' academic ...},
    journal = {Jurnal Psikologi Indonesia},
    year    = {2023},
    volume  = {12},
    number  = {3},
    pages   = {210--225},
    doi     = {10.xxxx/xxx}
  }
  ```
- Automatic formatting can be done via `doi2bib.org` or `citation-js` when available.

## 9. Stage 4 Output

```
draft_with_citations.md  — draft with in-text citations
bibliography.md          — formatted reference list per style
citation_validation.md   — validation results (checklist + findings)
```