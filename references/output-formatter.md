# Output Formatter — Format Conversion (Stage 6)

Guide to final formatting and converting the manuscript to **Markdown**, **LaTeX**, or **DOCX**.

## 1. Output Formats

| Format | When used | How |
|--------|---------------|------|
| **Markdown** (.md) | Default; easy to read & share | Direct |
| **LaTeX** (.tex) | Journal/conference submission; scientific papers | Conversion + template |
| **DOCX** (.docx) | Drafts for supervisors/colleagues; Word collaboration | Pandoc or library |

Ask the user for the target format. If not specified → Markdown.

## 2. Final Manuscript Structure (IMRaD / academic standard)

Ensure the final file contains (per the template):
```
1. Title
2. Abstract (150–250 words)
3. Keywords (3–6)
4. Introduction
5. Literature Review
6. Methodology
7. Results
8. Discussion
9. Conclusion
10. References (per citation style)
11. Appendices (if any)
```

Keeping headings consistent (sentence case in English; title style per each set of rules). Section numbering optional per target.

## 3. Markdown → LaTeX Conversion

### Standard LaTeX output (article class) — example skeleton:
```latex
\documentclass[12pt]{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{amsmath,amssymb}
\usepackage{graphicx}
\usepackage{booktabs}
\usepackage[hidelinks]{hyperref}

\title{Paper Title}
\author{Author Name}
\date{}

\begin{document}
\maketitle

\begin{abstract}
...abstract text...
\end{abstract}

\noindent\textbf{Keywords}: keyword1, keyword2, keyword3

\section{Introduction}
...
\begin{thebibliography}{99}
\bibitem{rahman2023} Ahmad Rahman and Dewi Sari.
``The influence of social media on academic performance.'' ...
\end{thebibliography}
\end{document}
```

### Markdown → LaTeX mapping
| Markdown | LaTeX |
|----------|-------|
| `#` `##` `###` | `\section{}` `\subsection{}` `\subsubsection{}` |
| `**text**` | `\textbf{text}` |
| `*text*` | `\textit{text}` |
| Pipe tables | `tabular` / `booktabs` |
| Images `![alt](file)` | `\begin{figure}...\includegraphics...` |
| Formulas `$...$` / `$$...$$` | unchanged |
| Links `[x](url)` | `\href{url}{x}` |
| Lists `- ` | `itemize` |

**Automatic conversion**: use the script `scripts/convert.sh` if pandoc is available:
```bash
pandoc draft.md -o paper.tex --bibliography=refs.bib
```
Without pandoc → convert manually per the table above.

### For journals/conferences (IEEE/ACM/NeurIPS/Elsevier):
- Use the official templates: `\documentclass[conference]{IEEEtran}`, `\usepackage{acmart}`, `\documentclass{article}` + elsarticle, etc.
- Instructions: download the template from the publisher's site, copy its skeleton, and insert your content. Do not invent class files.

## 4. Markdown → DOCX Conversion

### Via pandoc (easiest):
```bash
pandoc draft.md -o paper.docx
```
- With references: `pandoc draft.md -o paper.docx --bibliography=refs.bib --citeproc`
- Citation styles: `--csl=apa.csl` / `ieee.csl` / etc. (download from the Zotero style repository).

### Without pandoc:
- Create a basic .docx file using a library available in the environment (python-docx, pandoc, libreoffice), OR
- Load into Word/Google Docs from Markdown and adjust the formatting manually (Times New Roman 12, 1.5 spacing, margins 4/4/3/3 cm, bold headings).

### Common Word format (Indonesian journals):
- Font: Times New Roman 12 pt
- Spacing: 1.5 (abstract single-spaced)
- Margins: left 4, top 4, right 3, bottom 3 cm
- Headings: bold, per the rules
- Citations: `....` (name, year)

## 5. Pre-Submission Mechanical Checks

After the final manuscript, run the following automatically:

1. **Word/page count** vs. target (must be compared with the outline allocation).
2. **Broken references**:
   - LaTeX: check the `.log` → "Undefined references" / `[?]` / `??`
   - `grep -n "LaTeX Warning.*undefined" paper.log`
3. **Embedded fonts** (LaTeX PDF): `pdffonts paper.pdf | grep -v yes` → all must be `yes`.
4. **Figures**: every `\includegraphics` references an existing file; prefer vector (PDF); flag PNG/JPG photos.
5. **Anonymization** (double-blind): search for names/institutions/grants/acknowledgments that leak identity:
   - `grep -rni 'name\|institution\|\thanks' *.tex`
6. **Figure/table labels**: every float is referenced in the text (`Figure X`, `Table Y`).
7. **Citation consistency**: check 1:1 in-text ↔ bibliography (from Stage 4).
8. **Column balancing** (2-column LaTeX): use `\usepackage{balance}`.

**Report**:

| Check | Status | Detail |
|-------|--------|--------|
| Word count | ✓/✗ | 7,520 / target 7,500 |
| Broken refs | ✓/✗ | 0 |
| Fonts embedded | ✓/✗ | all yes |
| Figures referenced | ✓/✗ | 5/5 |
| Anonymization | ✓/✗ | 0 leaks |
| Column balance | ✓/✗ | package present |

## 6. Stage 6 Output

```
<paper_title>.md              — final Markdown manuscript (always)
<paper_title>.tex             — LaTeX (if requested/pandoc/template available)
<paper_title>.docx            — Word (if requested/eventual)
pre_submission_checklist.md   — pre-submission check results
revision_summary.md           — summary of the whole process (changes, gates, etc.)
```

## Technical Notes

- Pandoc may not be installed; check `command -v pandoc` before using it. If absent, offer installation or provide the Markdown file + conversion instructions.
- Never send a file without passing Stage 5 (revision) — always review before output.
- Keep all file versions with clear naming (`draft_v1.md`, `final.md`).