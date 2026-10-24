# Academic Output Evaluation

Use this protocol for substantial drafts, revision comparisons, final manuscripts, or explicit quality-scoring requests. It adapts rubric-based evaluation and regression testing without requiring an external framework.

## Dimensions

Score each dimension from 0 to 4 using `references/output-rubric.md`:

1. methodological and reporting compliance;
2. claim-evidence alignment;
3. citation and source integrity;
4. factual and data fidelity;
5. argument clarity and synthesis quality;
6. English-US correctness and readability;
7. humanizer/plagiarism risk control;
8. journal and audience fit.

Use `N/A` when evidence is unavailable. Do not convert uncertainty into a zero.

## Precedence and regression

Guardrail pass precedes quality scores. A fluent manuscript with a fabricated citation or unsupported major claim fails.

Maintain regression cases for causality versus association, hedged versus absolute claims, numbers/p-values/dates/quotations, citation-to-bibliography mapping, missing-data placeholders, terminology drift, Indonesian-to-English translation fidelity, humanizer patterns, plagiarism overlap, and reporting-checklist omissions. A regression fails when a previously passing invariant breaks, even if the aggregate score improves.

## Status

- **PASS**: no guardrail failures; all required dimensions are at least 3.
- **PASS WITH FLAGS**: no guardrail failures; only explicitly reported source or author confirmations remain.
- **FAIL**: any fabrication, unsupported major claim, citation mismatch, quotation/data alteration, or required dimension below 3.
