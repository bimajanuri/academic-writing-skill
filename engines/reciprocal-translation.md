# Engine — Reciprocal Translation (Meta-Ethnography)

Core engine for Meta-Ethnography Mode. Transforms primary qualitative study findings into **3rd Order Constructs** through the *reciprocal translation* process à la Noblit & Hare.

> Built on the concept: 1st order (participant quotations) → 2nd order (author interpretation) → 3rd order (new interpretation by the synthesist).

## When Used

Only in Meta-Ethnography Mode (`protocols/meta-ethnography.md`), once the constructs matrix (1st/2nd order) is ready and before writing the results.

## Engine Workflow

### Input
- `constructs_1st_2nd.md` — list of 1st & 2nd order constructs per study
- `literature_matrix.md` (meta-ethnography mode)

### Steps

1. **Select the first study as the "conceptual baseline"** — the study richest in concepts.
2. **Translate the second study into the concepts of the first study** — look for equivalent concept mappings:
   - Concept A in study 1 ≈ Concept B in study 2 (same meaning, different labels) → **include**.
   - Concepts that have a DIFFERENT / contradictory meaning → **mark as refutational**.
   - Concepts that complement each other → **mark as line-of-argument**.
3. **Repeat pairwise** across all studies (sequential translation, like a chain).
4. **Synthesise the translations** — combine translation results to produce new 3rd order constructs; if the directions diverge → build a **line-of-argument**.
5. **Write the synthesis narrative** — explain how the 3rd order constructs arose from the 1st & 2nd order constructs (traceability is mandatory).

### Strict Rules (Must Not Be Violated)

- NEVER present 1st order constructs from primary studies as the synthesis results.
- NEVER merge two concepts with different meanings solely because of "similar words" — verify the context.
- A 3rd order construct may only be claimed if it can be traced back to at least 2 studies.
- Label transparency: include a concept-mapping table across studies.

### Output
```text
synthesis_translation.md   — translation results + 3rd order constructs
line_of_argument.md        — line-of-argument narrative (if relevant)
translation_matrix.md      — concept-mapping table across studies (optional)
```

## Prompt Template (work instructions for the agent)

```text
You will perform Reciprocal Translation for a meta-ethnography synthesis.
Use constructs_1st_2nd.md. Steps:
1. Determine the baseline paper (richest in concepts).
2. For each subsequent paper in order, translate its 2nd order constructs into
   the baseline concepts: mark them as reciprocal / refutational /
   line-of-argument.
3. Combine the translation results into new 3rd order constructs.
4. Write a narrative that shows the relationships between studies explicitly.
5. Include a concept-mapping table (Paper X → Paper Y).
```

[Do not proceed before the baseline & all translations are validated as consistent.]