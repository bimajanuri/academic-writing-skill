# Academic Writing Skill

**End-to-end academic writing skill for AI coding agents** (Claude Code, OpenCode, and other Agent Skills–based agents). Designed to produce high-quality academic output — from literature search to final format conversion — with **paper output written in English (US) academic style**, while accepting research input in **Bahasa Indonesia or English**.

This skill is a **Modular Multi-Method Engine**: a 6-stage pipeline with a quality gate at every stage (human-in-the-loop), powered by a **Method Selection Router** that activates qualitative and quantitative synthesis protocols based on the task at hand.

## Key Features

- **Method Selection Router — 6 synthesis modes**: SLR (PRISMA 2020), Scoping Review (PRISMA-ScR/PCC/JBI), Meta-Ethnography (eMERGe + Noblit & Hare), Narrative Review (SANRA), Integrative Review (Whittemore & Knafl), Critical Review (appraisal lenses)
- **6-stage pipeline with quality gates**: `Explore → Plan → Write → Cite → Revise → Output`
- **Dedicated qualitative synthesis engines**:
  - **Reciprocal Translation Engine** — 1st/2nd/3rd order constructs, reciprocal vs refutational vs line-of-argument (meta-ethnography)
  - **Conceptual Mapping Engine** — concept taxonomy, geographic/timeline/methodological distribution, research gaps (scoping)
  - **Academic Debate Engine** — pro/con clusters + timeline of idea development (narrative)
- **Per-mode extraction matrix**: 7-field (SLR), PCC (scoping), 1st/2nd constructs (meta-ethnography), argument positions (narrative), qual+quant data (integrative), epistemological/methodological/bias lenses (critical)
- **Literature search** via OpenAlex / Semantic Scholar / Crossref / DOAJ / PubMed / arXiv (all free)
- **Scopus Quartile filter** (Q1–Q4)
- **Gap Analysis (Gap Matrix)** — 4 gap types + anti pseudo-gap + Research Positioning Map + gap-to-contribution conversion
- **Novelty & Contribution Framing** — 5 forms of novelty, verified contribution statement (claim-first, evidence map, anti-overclaim)
- **Journal Targeting & Submission** — journal arena, Journal Positioning Blueprint, anti-predator check, cover letter
- **Reviewer Response & Rejection Handling** — minor/major revision, decision path
- **Auto-validation checklist per mode**: PRISMA 2020 (27), PRISMA-ScR (22), eMERGe (19), SANRA (6), Whittemore & Knafl (17), Critical (10)
- **Optional research frameworks** — RQ frameworks, procedural frameworks, reporting & screening checklists
- **Outline builder** + word allocation + **7-dimension reviewer self-assessment**
- **7 citation styles**: APA 7, MLA 9, Turabian, Vancouver, Harvard, Chicago, + IEEE
- **Humanizer (25 AI patterns)**, **grammar check (English-US)**, **plagiarism check (English-US)**, **layered quality control** (mechanical/semantic/red-team gates)
- **Output conversion**: Markdown, LaTeX, DOCX (via pandoc)
- **Anti-hallucination**: never fabricate references/data; verify DOI & quartile

## Language Policy

- **Output paper: ALWAYS English (US), academic register** — not optional, not bilingual. US spelling (`analyze`, `color`, `center`, `modeling`) everywhere.
- **Input research: accepts Bahasa Indonesia OR English** depending on the Gen AI's capability — input content is understood/translated faithfully without changing meaning.
- Grammar check, humanizer, and plagiarism check all run on the **English-US** manuscript.
- Working artifacts (matrices, outlines, logs) may be written in Indonesian for session efficiency, **except any artifact that becomes part of the final manuscript** — the final manuscript and every Part of it must be English-US.

## How It Works (Modular Multi-Method Engine)

```text
GATE 0 (Method Selection) → Lock synthesis mode + reporting standard + RQ framework BEFORE searching
STAGE 1: EXPLORE      → Search (keywords derived from mode framework) + Quartile filter + matrix per MODE + Gap Matrix + Research Map
STAGE 2: PLAN         → RQ (mode framework) + outline + reviewer self-assessment (7 dims) + contribution framing + journal targeting
STAGE 3: WRITE        → Section-by-section + claim-evidence map + outputs of mode SYNTHESIS ENGINES (Reciprocal Translation / Conceptual Mapping / Academic Debate)
STAGE 4: CITE         → Citation formatting + bibliography + claim-citation validation + DOI check
STAGE 5: REVISE       → Humanizer (25 patterns) + grammar (English-US) + mechanical gate + semantic gate + red-team
STAGE 6: OUTPUT       → MD/LaTeX/DOCX conversion + AUTO-VALIDATION checklist per mode (PRISMA 2020 / PRISMA-ScR / eMERGe / SANRA / W&K / Critical) + plagiarism + final fit & cover letter
POST-SUBMISSION       → Reviewer response (point-by-point) + rejection decision path + re-target journal
```

Each stage **must not proceed until its quality gate is passed** and the user confirms. **GATE 0** must be passed before literature search — search results are calibrated to the selected mode.

## Installation

### Claude Code

```bash
# Option 1 — symlink (canonical, update once)
mkdir -p ~/.agents/skills
ln -s $(pwd) ~/.agents/skills/academic-writing
ln -s ../../.agents/skills/academic-writing ~/.claude/skills/academic-writing

# Option 2 — direct copy
cp -R . ~/.claude/skills/academic-writing
```

### OpenCode

```bash
# Option 1 — symlink
ln -s ../../.agents/skills/academic-writing ~/.config/opencode/skills/academic-writing

# Option 2 — direct copy
cp -R . ~/.config/opencode/skills/academic-writing
```

> Recommendation: keep this repo canonical at `~/.agents/skills/academic-writing`, then **symlink** it into each client's skills folder. Edit once at the source.

### Other platforms (Codex, Cursor, Gemini, etc.)

Copy the `academic-writing/` directory into the skills folder for that platform (Agent Skills standard: `SKILL.md` as the entry point).

## Usage

The skill activates automatically whenever the AI receives an academic-writing request. Example triggers:

- "Write a paper about [topic]"
- "Find literature for my thesis/dissertation" (input may be in Indonesian or English)
- "Do a scoping review on X" (Scoping mode — PRISMA-ScR/PCC)
- "Conduct a meta-ethnography / qualitative meta-synthesis" (Meta-Ethnography mode — eMERGe)
- "Write a narrative review of the X vs Y debate" (Narrative mode — SANRA)
- "Do an integrative review of qualitative & quantitative data" (Integrative mode — Whittemore & Knafl)
- "Critically appraise this literature" (Critical mode — appraisal lenses)
- "Search Scopus Q1 references on X"
- "Find research gaps from this literature" (Gap Matrix + anti pseudo-gap)
- "Formulate this paper's contribution/novelty" (5 novelty forms + anti-overclaim)
- "Pick a suitable journal for this paper" (arena + comparison + anti-predator)
- "Write a submission cover letter"
- "Respond to reviewer comments" (minor/major revision, point-by-point)
- "My manuscript was rejected, what now?" (decision path + re-target journal)
- "Build a paper outline"
- "Pick a framework for this paper" (PICO/PRISMA/CONSORT/STROBE/etc.)
- "Pick a citation style for this paper" (APA/MLA/Turabian/Vancouver/Harvard/Chicago)
- "Format citations in APA/IEEE/MLA/Chicago/Vancouver/Harvard/Turabian"
- "Revise/polish this draft" (anti-AI humanizer)
- "Grammar-check this draft" (English-US)
- "Check plagiarism/similarity before submission"
- "Convert the draft to LaTeX/DOCX"
- "Review the draft before journal submission"

### Partial use (without full pipeline)

| Request | What gets done |
|-----------|-----------------|
| "Search references on X" | Stage 1 → matrix per mode (default 7-field) |
| "Pick a synthesis mode / do a scoping review" | Router + `protocols/scoping-review.md` + Conceptual Mapping |
| "Run a meta-ethnography on these papers" | Router + `protocols/meta-ethnography.md` + Reciprocal Translation |
| "Write a narrative review of the X debate" | Router + `protocols/narrative-review.md` + Academic Debate |
| "Do an integrative qual/quant review" | Router + `protocols/integrative-review.md` |
| "Critically appraise this literature" | Router + `protocols/critical-review.md` |
| "Pick a framework for this paper" | Load research-frameworks.md → fill framework_selection.md → apply |
| "Build an outline for paper X" | Stage 1+2 → Matrix + Outline |
| "Write the methodology section" | Draft that section |
| "Format these citations" | Stage 4 |
| "Polish/rewrite this draft" | Stage 5 (humanizer) |
| "Grammar-check this draft" | Stage 5 (grammar check English-US) |
| "Check plagiarism" | Stage 6 (plagiarism check) |
| "Convert to LaTeX/docx" | Stage 6 |
| "Review this draft" | Red-team protocol |
| "Plan a paper from scratch" | Full pipeline |

## Repo Structure

```
academic-writing/
├── SKILL.md                          # Entry point & orchestrator + Method Selection Router + initialization
├── core/
│   └── system-prompt.md              # Universal instructions for all modes (style, rules, claim-evidence, auto-validation)
├── protocols/                        # Protocol modules per synthesis mode
│   ├── slr.md                        #   SLR — PRISMA 2020, PICO/PICOS, 7-field
│   ├── scoping-review.md             #   Scoping — PCC, PRISMA-ScR, JBI
│   ├── meta-ethnography.md           #   Meta-Ethnography — eMERGe, Noblit & Hare
│   ├── narrative-review.md           #   Narrative — SANRA
│   ├── integrative-review.md         #   Integrative — Whittemore & Knafl
│   └── critical-review.md            #   Critical — appraisal lenses
├── engines/                          # Qualitative synthesis engines
│   ├── reciprocal-translation.md     #   Meta-ethnography: 1st→2nd→3rd order
│   ├── conceptual-mapping.md         #   Scoping: taxonomy & evidence distribution
│   └── academic-debate.md            #   Narrative: pro/con + timeline
├── references/                       # Detailed stage guides + per-mode extraction modules
│   ├── literature-search.md          #   Search + Scopus Quartile filter
│   ├── literature-matrix.md          #   7-field matrix (SLR)
│   ├── extraction-meta-ethnography.md#   1st/2nd order constructs
│   ├── extraction-scoping.md         #   PCC mapping
│   ├── extraction-critical.md        #   Appraisal lenses
│   ├── extraction-narrative.md       #   Argument positions
│   ├── extraction-integrative.md     #   Qual + quant data
│   ├── research-gap-mapping.md       #   Gap Matrix, anti pseudo-gap, research map
│   ├── novelty-framing.md            #   5 novelty forms, contribution statement
│   ├── journal-targeting.md          #   Journal arena, anti-predator, cover letter
│   ├── reviewer-response.md          #   Reviewer response, rejection path
│   ├── research-frameworks.md        #   RQ/procedure/checklist framework catalog
│   ├── outline-builder.md            #   Outline, word allocation, reviewer
│   ├── section-writing.md            #   Section-writing guide
│   ├── citation-formatter.md         #   7 citation styles
│   ├── revision-guide.md             #   Humanizer — 25 AI patterns
│   ├── grammar-check.md              #   English-US grammar (output)
│   ├── plagiarism-check.md           #   Plagiarism detection (English-US)
│   ├── quality-gates.md              #   Mechanical + semantic + red-team gates
│   └── output-formatter.md           #   MD/LaTeX/DOCX conversion
├── templates/                        # Output contracts
│   ├── paper_outline.md
│   ├── literature_matrix_template.md
│   ├── extraction_meta_ethnography.md
│   ├── extraction_scoping.md
│   ├── extraction_critical.md
│   ├── extraction_narrative.md
│   ├── extraction_integrative.md
│   ├── gap_matrix.md
│   ├── contribution_statement.md
│   ├── cover_letter.md
│   ├── journal_comparison.md
│   ├── response_to_reviewer.md
│   ├── framework_selection.md
│   ├── reporting_checklist.md
│   ├── section_templates/            # 7 section templates
│   └── citation_templates/           # 7 citation style templates
├── checklists/                       # Auto-validation & quality
│   ├── prisma_2020.md                #   SLR — 27 items
│   ├── prisma_scr.md                 #   Scoping — 22 items
│   ├── emerge.md                     #   Meta-Ethnography — 19 criteria
│   ├── sanra.md                      #   Narrative — 6 scored items
│   ├── whittemore_knafl.md           #   Integrative — 17 criteria
│   ├── critical_review.md            #   Critical — 10 criteria
│   ├── grammar_check.md
│   ├── plagiarism_check.md
│   ├── humanizer_checklist.md
│   ├── post_draft.md
│   ├── pre_writing.md
│   └── pre_submission.md
├── scripts/
│   └── convert.sh                    # Format conversion via pandoc
└── README.md
```

## Optional Prerequisites

- **pandoc** — for Markdown → DOCX/LaTeX conversion (`brew install pandoc`)
- **Zotero** (optional) — export bibliography from DOI to target style

## Core Rules (enforced in the skill)

1. Never fabricate references — verify paper existence (DOI, publisher, year); if unsure, mark `UNVERIFIED`
2. Never fabricate data/facts — use the `[DATA]` placeholder when not yet available
3. Never copy journal text verbatim — use it as a structure model, not a source of sentences
4. Anti-plagiarism — quote/paraphrase + cite every sentence taken from sources; verbatim overlap must not reach submission
5. Human-in-the-loop at every quality gate — AI proposes, humans decide
6. All artifacts saved as Markdown files (literature_matrix.md, gap_analysis.md, grammar_report.md, plagiarism_report.md, etc.)
7. Synthesis mode MUST be locked before data extraction (Method Selection Router) — never mix extraction criteria across modes

## Methodology (Attribution)

This pipeline is a combination & adaptation of open methodologies:

- **Prof. Peng Sida's open research notes** — section-writing politics — [Master-cai/Research-Paper-Writing-Skills](https://github.com/Master-cai/Research-Paper-Writing-Skills)
- **SNL-UCSB / paper-writing-skill** — 5-stage pipeline, dual mechanical+semantic audit — [SNL-UCSB/paper-writing-skill](https://github.com/SNL-UCSB/paper-writing-skill)
- **Humanizer 25 patterns** — de-technicalizing AI traces — [blader/humanizer](https://github.com/blader/humanizer)
- **journal-adapt** — target-journal corpus adaptation — [WantongC/journal-adapt-writing-skill](https://github.com/WantongC/journal-adapt-writing-skill)
- **Strategist quality gates** — 7-dimension reviewer self-assessment — [lishix520/academic-paper-skills](https://github.com/lishix520/academic-paper-skills)
- **Literature triage matrix** — structured metadata extraction — [WenyuChiou/ai-research-skills](https://github.com/WenyuChiou/ai-research-skills)
- **Qualitative synthesis protocols** (modules): eMERGe (France et al., 2019), Noblit & Hare (1988), PRISMA-ScR (Tricco et al., 2018), SANRA (Baethge et al., 2019), Whittemore & Knafl (2005), PCC (JBI Manual). Sources: EQUATOR Network, prisma-statement.org, JBI Manual for Evidence Synthesis.

## License

Released under the **[MIT License](LICENSE)**.