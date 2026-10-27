# Academic Writing Skill

**Academic writing and literature-synthesis support for AI agents**, including Claude Code, OpenCode,
and other Agent Skills-compatible hosts. The skill covers the full path from literature discovery to
final format conversion. Manuscripts are produced in **English (US) academic style**, while research
input may be provided in **Bahasa Indonesia or English**.

The skill uses a **modular, multi-method pipeline** with seven stages and a human review gate at
each stage. Its **Method Selection Router** chooses the appropriate qualitative or quantitative
synthesis protocol for the task.

## Key Features

- **Method Selection Router — 6 synthesis modes**: SLR (PRISMA 2020), Scoping Review (PRISMA-ScR/PCC/JBI), Meta-Ethnography (eMERGe + Noblit & Hare), Narrative Review (SANRA), Integrative Review (Whittemore & Knafl), Critical Review (appraisal lenses)
- **7-stage pipeline with quality gates**: `Explore → Plan → Write → Cite → Revise → Validate → Output`
- **Dedicated qualitative synthesis engines**:
  - **Reciprocal Translation Engine** — 1st/2nd/3rd order constructs, reciprocal vs refutational vs line-of-argument (meta-ethnography)
  - **Conceptual Mapping Engine** — concept taxonomy, geographic/timeline/methodological distribution, research gaps (scoping)
  - **Academic Debate Engine** — pro/con clusters + timeline of idea development (narrative)
- **Shared Paper Review extraction contract**: Title & Authors, Journal, Year, Purpose, Method, Key Findings, Limitations, Gaps, Theory, Novelty, Future Studies, DOI & Publisher, and provenance. Each mode can add its own fields.
- **Per-mode extraction matrix**: SLR, PCC (scoping), 1st/2nd constructs (meta-ethnography), argument positions (narrative), qual+quant data (integrative), epistemological/methodological/bias lenses (critical)
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
- **Humanizer (26 prose refinement patterns)**, **grammar check (English-US)**, **plagiarism check (English-US)**, **layered quality control** (mechanical/semantic/independent peer-review audit gates)
- **Output guardrails** for claims, evidence, citations, DOI metadata, quotations, modality, literal values, terminology, and no-fabrication
- **Paper Review–aligned exploration** with Search/Folder/Hybrid acquisition, `papers.json`, provenance markers, deduplication, and DOI verification
- **Evaluation and regression testing** with an 8-dimension rubric, pairwise comparison, and hard-failure precedence
- **Composable revision patterns** and optional LanguageTool review
- **Output conversion**: Markdown, LaTeX, DOCX (via pandoc)
- **Anti-hallucination**: never fabricate references/data; verify DOI & quartile

## Language policy

- **Skill instructions: written in English** so any Gen AI can use the skill directly.
- **Manuscript output: always English (US) in an academic register** — not optional and not bilingual. Use US spelling (`analyze`, `color`, `center`, `modeling`) throughout.
- **Input research: accepts Bahasa Indonesia OR English** depending on the Gen AI's capability — input content is understood/translated faithfully without changing meaning.
- Grammar check, humanizer, and plagiarism check all run on the **English-US** manuscript.
- Working artifacts (matrices, outlines, and logs) may be written in Indonesian for session efficiency, **except when an artifact becomes part of the final manuscript**. The manuscript and all of its components must be in English-US.

## How It Works (Modular Multi-Method Engine)

```text
GATE 0 (Method Selection) → Lock synthesis mode + reporting standard + RQ framework BEFORE searching
STAGE 1: EXPLORE      → Search/Folder/Hybrid acquisition + dedup/DOI verification + papers.json + provenance matrix per MODE + Quartile filter + Gap Matrix + Research Map
STAGE 2: PLAN         → RQ (mode framework) + outline + reviewer self-assessment (7 dims) + contribution framing + journal targeting
STAGE 3: WRITE        → Section-by-section + claim-evidence map + outputs of mode SYNTHESIS ENGINES (Reciprocal Translation / Conceptual Mapping / Academic Debate)
STAGE 4: CITE         → Citation formatting + bibliography + claim-citation validation + DOI check
STAGE 5: REVISE       → Humanizer + modular patterns + grammar (English-US) + mechanical/semantic/independent peer-review audit gates
STAGE 6: VALIDATE     → Output guardrails + evaluation rubric + claim/evidence/citation regression checks
STAGE 7: OUTPUT       → MD/LaTeX/DOCX conversion + AUTO-VALIDATION checklist per mode + plagiarism + final fit & cover letter
POST-SUBMISSION       → Reviewer response (point-by-point) + rejection decision path + re-target journal
```

Each stage **must pass its quality gate** before the workflow continues and the user confirms the result. **GATE 0** must pass before literature search because the search is calibrated to the selected mode.

## Compatibility and prerequisites

The skill is portable when the host supports folder-based Agent Skills discovery and can read
`SKILL.md` instructions. It has no mandatory runtime dependency, API key, database, or
OS-specific requirement. Install the complete `academic-writing/` directory.

| Host | Project location | Global location | Activation/verification |
|---|---|---|---|
| Claude Code | `.claude/skills/academic-writing/` | `~/.claude/skills/academic-writing/` | Ask for a literature review; use `/skills` if available |
| OpenCode | `.opencode/skills/academic-writing/` or `.agents/skills/academic-writing/` | `~/.config/opencode/skills/academic-writing/` | Ensure the `skill` tool is enabled; ask for `academic-writing` |
| Gemini CLI | `.gemini/skills/academic-writing/` or `.agents/skills/academic-writing/` | `~/.gemini/skills/academic-writing/` | Run `/skills`, then request a review |
| GitHub Copilot CLI | `.github/skills/academic-writing/` or `.agents/skills/academic-writing/` | `~/.copilot/skills/academic-writing/` | Run `/skills reload`, then `/skills info academic-writing` |
| Antigravity | `.agents/skills/academic-writing/` | `~/.gemini/config/skills/academic-writing/` | Start a matching academic-writing task |
| Gemini Apps (Web, Mac, Mobile) | `gemini.google.com` → **Customize** → **Skills** → **Create** → **Upload** | Product-managed (Personal Google Account 18+, Keep Activity on) | Upload folder or `.zip` with `SKILL.md` in root; invoke via `/` or `@` or automatic matching |
| ChatGPT Skills | Upload the complete directory/ZIP via Skills UI | Product-managed | Upload/import the skill and invoke via `/` or natural language |
| Codex, Cursor, Windsurf, other compatible hosts | Host-specific skills directory or `.agents/skills/academic-writing/` | Host-specific | Reload/discover skills, then invoke `academic-writing` |

ChatGPT Skills availability, upload permissions, and automatic activation depend on the account,
workspace, and product surface. If a host does not support folder-based skills, use its documented
import mechanism or project-file feature. Do not copy only `SKILL.md` when the workflow needs its
supporting modules.

### Optional prerequisites

- **Pandoc** — Markdown → DOCX/LaTeX conversion (`brew install pandoc`, `apt install pandoc`, or the platform equivalent).
- **Zotero** — bibliography management and export.
- **LanguageTool** — optional mechanical review; AI suggestions must not change claims, terminology, or citations.
- **Web access/API credentials** — optional, for live OpenAlex, Crossref, PubMed, DOAJ, Semantic Scholar, or publisher verification.
- **Python evaluation tools** — optional; the built-in rubric works without Ragas or DeepEval.

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

### Gemini CLI

```bash
mkdir -p ~/.gemini/skills
cp -R /path/to/academic-writing ~/.gemini/skills/academic-writing
# In Gemini CLI:
/skills
```

### GitHub Copilot CLI

```bash
mkdir -p ~/.copilot/skills
cp -R /path/to/academic-writing ~/.copilot/skills/academic-writing
# In Copilot CLI:
/skills reload
/skills info academic-writing
```

### Antigravity

```bash
mkdir -p ~/.gemini/config/skills
cp -R /path/to/academic-writing ~/.gemini/config/skills/academic-writing
```

Project-local installation for any host:

```bash
mkdir -p .agents/skills
cp -R /path/to/academic-writing .agents/skills/academic-writing
```

### Gemini Apps (Web, Mac, and Mobile) — Upload ZIP Method

Gemini Apps (`gemini.google.com`, the Gemini Mac app, and the mobile app) support installing custom skills by uploading a folder or `.zip` archive (requires a personal Google Account 18+ with **Keep Activity** turned on).

Per Google's upload requirements ([Create & manage skills for Gemini Apps](https://support.google.com/gemini/answer/17094296)):
- `SKILL.md` must be located in the **root (main) folder** of the uploaded folder or `.zip` archive.
- The skill `name` inside `SKILL.md` must be lowercase with hyphens (`academic-writing`).
- All 8 supporting modules are consolidated into clean Markdown files (`.md`) so the total package stays under Gemini Apps' 10-file Knowledge attachment limit and under 100 MB.
- Exclude hidden binary/OS metadata files (such as `.DS_Store`, `.git/`, `.pyc`, or `__MACOSX`) so the upload validation does not fail.

**Step 1: Create a clean `.zip` archive (with `SKILL.md` at the root)**

```bash
cd /path/to/academic-writing
zip -r -X academic-writing-gemini.zip \
  SKILL.md protocols references templates \
  -x "*.DS_Store" -x "__MACOSX/*" -x "*.git*" -x "*.pyc"
```

*(Alternatively, you can upload the `academic-writing` folder directly as long as it contains no hidden `.DS_Store` or `.git` files.)*

**Step 2: Upload to Gemini Web (`gemini.google.com`)**

1. Go to [gemini.google.com](https://gemini.google.com) (or open the Gemini app on Mac).
2. On the left sidebar, click **Customize** (if you don't see it, first click **More**) → **Skills**.
3. At the top of the Skills page, click **Create** → **Upload**.
4. Select `academic-writing-gemini.zip` (or the `academic-writing/` folder) and click **Open**.
5. Review the imported skill details and click **Create** at the top.
6. **Usage**: In any chat or task thread, type `/` (or `@`) and select `academic-writing`, or describe your academic writing/review task in natural language — Gemini automatically applies activated skills when relevant.

### ChatGPT Skills — Upload ZIP Method

ChatGPT Skills can be installed by uploading a `.zip` package on accounts and workspaces with the Skills feature enabled (or attached directly in chat sessions if the Skills UI is unavailable).

**Step 1: Create a clean `.zip` package**

You can package either the root files (`academic-writing-gemini.zip` above) or the complete `academic-writing/` directory without hidden OS/Git files:

```bash
zip -r -X academic-writing.zip academic-writing \
  -x "*/.git/*" -x "*/.DS_Store" -x "__MACOSX/*" -x "*.pyc"
```

**Step 2: Upload to ChatGPT**

1. In ChatGPT, open **Skills** from the sidebar or profile menu.
2. Click **Create** → **Upload from your computer**, and select `academic-writing.zip`.
3. Enable the skill for your conversation or workspace.
4. **Usage**: Invoke the skill with `/` or natural-language prompts such as:

```text
Use the academic-writing skill to plan and write a scoping review on [topic].
First lock GATE 0 (PCC framework and PRISMA-ScR reporting standard) before searching.
Preserve evidence, verify DOIs, and run output guardrails before delivery.
```

If the Skills UI is not available on your plan, upload/attach the `.zip` archive (or the relevant Markdown files) directly in the chat message composer and instruct ChatGPT to read and follow `SKILL.md`.

> **Note:** ChatGPT may scan an uploaded skill and mark it as **Needs Review** or **Blocked**. This is a workspace/product safety check rather than an issue with the Agent Skills format; review workspace permissions before retrying.

### Other platforms (Codex, Cursor, Windsurf, etc.)

Copy the complete directory into the platform's documented skills folder. If it supports `.agents/skills/`, use the project-local installation above. Reload the host and verify that `SKILL.md` is discovered.

## Usage

The skill activates automatically when a request clearly asks for academic writing, literature
search, evidence synthesis, manuscript revision, citation formatting, journal targeting, or
reviewer-response support. Use natural language, or explicitly name `academic-writing` when you
want to make the workflow unambiguous. Before searching, the skill locks the analysis mode,
reporting standard, and RQ framework.

### Full pipeline

```text
Use academic-writing to plan and write a paper about [topic].
First lock the synthesis mode, reporting standard, and RQ framework before searching.
Preserve evidence; do not invent citations, DOI metadata, data, or findings.
Run output guardrails and report PASS, PASS_WITH_FLAGS, or FAIL before delivery.
```

### Mode-specific requests

```text
Use academic-writing for a scoping review on [topic].
Lock PCC and PRISMA-ScR first, then search, extract the evidence matrix,
map concepts, and run the final reporting checklist.
```

```text
Use academic-writing for a meta-ethnography on [topic].
Lock PICo/SPIDER and eMERGe first, then extract first- and second-order constructs
and perform reciprocal translation without inventing evidence.
```

```text
Use academic-writing to revise this manuscript for [journal].
Preserve every claim, citation, number, quotation, and modality; run grammar,
humanizer, plagiarism, and output-guardrail checks before returning the revision.
```

### Targeted requests

```text
Find and verify literature on [topic], build papers.json and the mode-specific matrix,
then identify evidence-backed research gaps. Do not start searching until GATE 0 is locked.
```

```text
Format these references in APA 7 and check citation-to-reference completeness.
Flag missing or conflicting metadata instead of inventing it.
```

```text
Review this draft as a simulated peer reviewer. Check methodology, evidence,
claims, citations, reporting compliance, English-US style, and journal fit.
```

### Common request triggers

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
- "Revise/polish this draft" (academic prose humanizer)
- "Grammar-check this draft" (English-US)
- "Check plagiarism/similarity before submission"
- "Convert the draft to LaTeX/DOCX"
- "Review the draft before journal submission"

### Partial use (without full pipeline)

| Request | What gets done |
|-----------|-----------------|
| "Search references on X" | Stage 1 → Search/Folder/Hybrid acquisition → papers.json → matrix per mode |
| "Pick a synthesis mode / do a scoping review" | Router + `protocols/core-and-mode-protocols.md#scoping-review-mode` + Conceptual Mapping |
| "Run a meta-ethnography on these papers" | Router + `protocols/core-and-mode-protocols.md#meta-ethnography-mode` + Reciprocal Translation |
| "Write a narrative review of the X debate" | Router + `protocols/core-and-mode-protocols.md#narrative-review-mode` + Academic Debate |
| "Do an integrative qual/quant review" | Router + `protocols/core-and-mode-protocols.md#integrative-review-mode` |
| "Critically appraise this literature" | Router + `protocols/core-and-mode-protocols.md#critical-review-mode` |
| "Pick a framework for this paper" | Load research-frameworks.md → fill framework_selection.md → apply |
| "Build an outline for paper X" | Stage 1+2 → Matrix + Outline |
| "Write the methodology section" | Draft that section |
| "Format these citations" | Stage 4 |
| "Polish/rewrite this draft" | Stage 5 (humanizer) |
| "Grammar-check this draft" | Stage 5 (grammar check English-US) |
| "Check plagiarism" | Stage 7 (plagiarism check) |
| "Convert to LaTeX/docx" | Stage 7 |
| "Review this draft" | Independent peer-review audit protocol |
| "Plan a paper from scratch" | Full pipeline |

## Repo Structure

All 76 modular guides, protocols, synthesis engines, templates, and checklists are consolidated into **8 structured Markdown files** (plus `SKILL.md`) so the skill loads with minimal tool calls in CLI/IDE agents and satisfies the $\le$ 10 reference-file attachment limit in web AI platforms (such as Gemini Apps and ChatGPT Skills):

```text
academic-writing/
├── SKILL.md                                              # Entry point, Method Selection Router & 7-stage orchestrator
├── protocols/
│   ├── core-and-mode-protocols.md                        # Core universal rules + 6 mode protocols + 3 qualitative engines
│   ├── guardrails-and-evaluation.md                      # Pre-delivery output guardrails, revision patterns, evaluation & rubric
│   └── validation-and-reporting-checklists.md            # 6 mode reporting checklists (PRISMA 2020, PRISMA-ScR, eMERGe, SANRA, W&K, Critical) + 6 stage checklists
├── references/
│   ├── stage1-explore-and-extraction.md                  # Explore data contract, literature search, 6 mode matrices & gap mapping
│   ├── stage2-to-4-plan-write-cite.md                    # Frameworks, outlining, novelty, journal targeting, writing & citations
│   └── stage5-to-7-revise-output-post.md                 # Prose style refiner (26 patterns), grammar, overlap check, gates, Pandoc & reviewer response
├── templates/
│   ├── workflow-and-section-templates.md                 # 14 stage/extraction/submission templates + 7 manuscript section templates
│   └── citation-style-templates.md                       # 7 citation style templates (APA 7, MLA 9, Turabian, Vancouver, Harvard, Chicago, IEEE)
└── README.md
```

## Optional Prerequisites

- **pandoc** — for Markdown → DOCX/LaTeX conversion (`brew install pandoc`)
- **Zotero** (optional) — export bibliography from DOI to target style
- **LanguageTool** (optional) — mechanical grammar review; never apply suggestions that change meaning

## Core Rules (enforced in the skill)

1. Never fabricate references — verify paper existence (DOI, publisher, year); if unsure, mark `UNVERIFIED`
2. Never fabricate data/facts — use the `[DATA]` placeholder when not yet available
3. Never copy journal text verbatim — use it as a structure model, not a source of sentences
4. Anti-plagiarism — quote/paraphrase + cite every sentence taken from sources; verbatim overlap must not reach submission
5. Human-in-the-loop at every quality gate — AI proposes, humans decide
6. All artifacts saved as Markdown files (literature_matrix.md, gap_analysis.md, grammar_report.md, plagiarism_report.md, etc.)
7. Synthesis mode MUST be locked before data extraction (Method Selection Router) — never mix extraction criteria across modes
8. Output guardrails MUST run before delivery; report `PASS`, `PASS_WITH_FLAGS`, or `FAIL`
9. A guardrail failure overrides aggregate quality scores

## Methodology (Attribution)

This pipeline is a combination & adaptation of open methodologies:

- **Prof. Peng Sida's open research notes** — section-writing politics — [Master-cai/Research-Paper-Writing-Skills](https://github.com/Master-cai/Research-Paper-Writing-Skills)
- **SNL-UCSB / paper-writing-skill** — 5-stage pipeline, dual mechanical+semantic audit — [SNL-UCSB/paper-writing-skill](https://github.com/SNL-UCSB/paper-writing-skill)
- **Humanizer 25 patterns** — refining mechanical prose patterns — [blader/humanizer](https://github.com/blader/humanizer)
- **journal-adapt** — target-journal corpus adaptation — [WantongC/journal-adapt-writing-skill](https://github.com/WantongC/journal-adapt-writing-skill)
- **Strategist quality gates** — 7-dimension reviewer self-assessment — [lishix520/academic-paper-skills](https://github.com/lishix520/academic-paper-skills)
- **Literature triage matrix** — structured metadata extraction — [WenyuChiou/ai-research-skills](https://github.com/WenyuChiou/ai-research-skills)
- **Qualitative synthesis protocols** (modules): eMERGe (France et al., 2019), Noblit & Hare (1988), PRISMA-ScR (Tricco et al., 2018), SANRA (Baethge et al., 2019), Whittemore & Knafl (2005), PCC (JBI Manual). Sources: EQUATOR Network, prisma-statement.org, JBI Manual for Evidence Synthesis.

## License

Released under the **[MIT License](LICENSE)**.
