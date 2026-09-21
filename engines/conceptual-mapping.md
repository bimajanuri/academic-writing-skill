# Engine — Conceptual Mapping (Scoping Review)

Synthesis engine for Scoping Review Mode. Transforms the PCC extraction matrix into a **concept taxonomy & literature distribution map**, not statistical aggregation.

> Grounded in PRISMA-ScR & the JBI Manual: the purpose of scoping is to map the *nature and extent* of the evidence.

## When Used

Only in Scoping Review Mode (`protocols/scoping-review.md`), once the PCC matrix is ready.

## Engine Workflow

### Input
- `literature_matrix.md` (scoping mode, PCC columns + method + context)

### Steps

1. **Code the concepts** — group the "Concept (C)" column into taxonomy clusters (theme/variable clusters) using mutually exclusive rules.
2. **Map the distribution**:
   - **Geographic**: study country/region → frequency map.
   - **Timeline**: publication year → trends.
   - **Methodology**: design type → diversity of methods used.
   - **Concept co-occurrence**: which concepts frequently appear together.
3. **Identify research gaps** — empty/sparse taxonomy areas → gaps for future research (tentative, not definitive conclusions).
4. **Build visual/table artifacts**:
   - Concept taxonomy/clusters (table or sunburst/tree).
   - Characteristics table (per study × PCC).
   - Distribution summaries (counts per category).

### Strict Rules

- Do NOT compute effects/ability — scoping does not measure quality/effectiveness.
- Do NOT claim completeness when the search coverage is limited — report the limits.
- Identified gaps must stem from matrix data, not assumptions.
- Taxonomy labels consistent with the authors' original terms (avoid silent re-labelling).

### Output
```text
scoping_map.md             — taxonomy + geographic/timeline/method distribution
characteristics_table.md   — study characteristics table
concept_matrix.md          — concept × study matrix (cross-tab)
```

## Prompt Template

```text
Build a concept taxonomy from literature_matrix.md (scoping mode).
1. Cluster the Concept column into mutually exclusive sets with labels
   traceable to the authors' terms.
2. Compute the distribution: geographic, year, methodology type.
3. Identify empty clusters (gaps) based on matrix evidence.
4. Produce scoping_map.md + characteristics_table.md.
```

[Do not use this engine to compute pooled effects — that is not within the scoping domain.]