# Literature Search

Guide to academic literature search with **Scopus Quartile** filter support (Q1–Q4).

## 1. Initial Clarification

Before searching, clarify the following from the user:

| Parameter | Options | Default |
|-----------|------|---------|
| Topic / keywords | mandatory | — |
| Scopus Quartile filter | Q1 / Q2 / Q3 / Q4 / no filter | No filter (but still tag the quartile) |
| Year range | free | Last 5 years |
| Target number | free | 15–40 papers |
| Paper language | English (for English-US output; Indonesian-language papers only as context/additional grey lit) | English |
| Source | OpenAlex / Semantic Scholar / Crossref / DOAJ / PubMed / arXiv / all | All (OpenAlex first) |
| Document type | research article / review / all | Research articles + reviews |

## 2. Search Sources (Free, No API Key / Optional Key)

All sources below are free and OpenAlex-equivalent (no key or optional key). Priority order of use:

1. **OpenAlex API** (free, most comprehensive, covers Scopus-indexed journals)
   ```
   GET https://api.openalex.org/works?search=KEYWORDS&filter=from_publication_date:YYYY-MM-DD,type:article|review
   ```
   - Add `mailto:email@example.com` for the polite pool (higher rate limit)
   - The response includes `doi`, `authorships`, `publication_date`, `biblio`, `primary_location.source` (journal name, issn)
2. **Crossref API** (free, no key) — primary source for **DOI verification / metadata completeness** and confirming articles & journals:
   ```
   GET https://api.crossref.org/works?query.title=KEYWORDS&rows=20&mailto=email@example.com
   ```
   - Add `mailto:` for the polite pool (better rate limit)
   - Resolve DOI: `GET https://api.crossref.org/works/{DOI}` → confirm title, journal `container-title`, `volume`, `page`, `published`
   - Covers Crossref from all major publishers; the JSON response consists of `items` (title, author, container-title, DOI, ISSN, type)
3. **Semantic Scholar API** (free, optional key → guaranteed quota of 1 RPS)
   ```
   GET https://api.semanticscholar.org/graph/v1/paper/search?query=KEYWORDS&fields=title,authors,year,externalIds,abstract&limit=20
   ```
4. **DOAJ API** (free, no key, no registration) — relevant for curated **Open Access** journals/articles and verifying journal OA status (CC BY-SA data):
   ```
   GET https://doaj.org/api/search/articles/KEYWORDS%20AND%20bibjson.year:YYYY?page=1&pageSize=20
   ```
   - Search journals for OA verification: `GET https://doaj.org/api/search/journals/issn:XXXX-XXXX` (check `bibjson.publisher`, `bibjson.license`, `bibjson.apc.has_apc`)
5. **PubMed E-utilities API** (free, optional key for high rates) — specialized for biomedicine/health:
   ```
   GET https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=KEYWORDS&retmode=json
   GET https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esummary.fcgi?db=pubmed&id=PMID...&retmode=json
   ```
6. **arXiv API** (for CS/physics preprints) — optional, tagged UNVERIFIED for quartile:
   ```
   GET http://export.arxiv.org/api/query?search_query=all:KEYWORDS&max_results=20
   ```

Notes:
- If the agent environment has web tools (web search / fetch), use those tools; use the APIs above as candidate DOI/reference sources that are then verified.
- Crossref and DOAJ are based on validated metadata → prioritize them for **verification**, not merely for finding new candidates.
- Do not assume free APIs for other services (e.g., Consensus, The Lens, and Connected Papers are paid/restricted; Google Scholar and Garuda have no official search API — access only via web/tools).

## 3. Multi-Stage Search Strategy

### Round 1 — Direct Search (Primary Literature)
1. Extract 3–5 core concepts from the user's topic
2. Build 8–15 keyword combinations (concept + concept, concept + method, synonyms/discipline variants)
3. Search OpenAlex / Semantic Scholar / Crossref / DOAJ / PubMed for each combination (adjust per field: PubMed prioritized for biomedicine, arXiv for CS/physics preprints)
4. Collect 30–50 candidate papers
5. Score relevance 0–10; keep those ≥ 7/10

### Round 2 — Snowballing (forward & backward citation)
1. From the papers that passed Round 1, trace the citation network:
   - **Backward**: references cited within the paper → verify and add
   - **Forward**: papers that cite the key papers → use `cites:<openalex_id>` in OpenAlex or the "cited by" list
2. Collect 5–15 additional papers

### Round 3 — Classic / Foundational Literature
1. Identify relevant highly-cited papers (>100 citations)
2. Add 2–5 foundational papers to the matrix (for the Theory Used field)
3. Relax the year range for foundational works

## 4. Scopus Quartile Filter

### Principles
- **Only Scopus denominator.** Quartile refers to the Scopus **CiteScore/SJR quartile** (Q1, Q2, Q3, Q4), not SINTA/ARJUNA/others.
- Use quartile data from **Scimago Journal Rank (SJR)** at scimagojr.com or available metadata; when it cannot be verified, tag `[quartile: UNVERIFIED]`.

### Quartile Verification
For each candidate journal:

1. Get the journal name + ISSN from the paper metadata (OpenAlex `primary_location.source`; if empty → confirm via Crossref `container-title` / `ISSN`, or DOAJ `bibjson.identifier`)
2. Determine the quartile from one of:
   - Fetching the scimagojr.com page (if web tools are available)
   - Quartile data already in the knowledge base — only when confident (e.g., Nature, Cell, IEEE TPAMI, etc.)
   - Report an estimate labeled `ESTIMATED`
3. Quartile mapping:
   - **Q1**: CiteScore ranking top 25% of field
   - **Q2**: percentile 25–50%
   - **Q3**: percentile 50–75%
   - **Q4**: percentile 75–100% (or journals not indexed in Scopus → OUT)

### Filter Scheme (applies in the matrix)

| Mode | Behavior |
|------|----------|
| **No filter** | All papers passing relevance enter the matrix; the quartile column is still filled in (Journal + Quartile label) |
| **Filter Q1** | Only Q1 journals enter; Q2–Q4 and non-Scopus are discarded |
| **Filter Q1–Q2** | Quartiles Q1 and Q2 enter; Q3, Q4, and non-Scopus are discarded |
| **Filter Q3–Q4 etc.** | analogous |

**Non-Scopus journals (arXiv preprints, non-Scopus conference papers, etc.)**: add them to a SEPARATE matrix labeled `[non-Scopus]` so that standards are not mixed. Ask the user whether they need to be included.

### Screening Report
Provide a concise triage at the end of the search:
```
Out of X candidates:
- Passed relevance ≥ 7/10 : Y papers
- Scopus Q1 : a | Q2 : b | Q3 : c | Q4 : d
- Non-Scopus : e
- Discarded (relevance < 7) : f
```

## 5. Anti-Hallucination (Mandatory)

1. **Every DOI must be verified as resolvable.** Preferably: `GET https://api.crossref.org/works/{DOI}` → match title/journal/year. When in doubt — mark `UNVERIFIED`.
2. If a reference is mentioned but has no DOI/evidence of existence → **DO NOT** add it to the matrix. Leave the citation empty and inform the user.
3. Do not guess journal names, volumes, pages, or years.
4. If metadata is incomplete, mark the missing field with *"—"*.

## 6. Field-Specific Search (Mini Test)

For efficiency, mention the field in the keywords (example for the topic "effect of social media on academics"):
```
Round 1 combos:
- "social media" AND "academic performance"
- "social media usage" AND "student"
- "screen time" AND "learning outcomes"
- "media multitasking" AND "grade point average"
- plus synonyms: "digital distraction", "technology use"
```

## 7. Search Output

Submit the search output as a file ready to be filled into the matrix:
```
candidate_papers.md  → candidate list + relevance scores + quartile status + DOI verification status
```

Then proceed to `literature-matrix.md` for 7-field extraction per paper.