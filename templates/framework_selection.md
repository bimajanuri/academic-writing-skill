# Framework Selection — Substantive Contract of the Paper

Fill out this form at **Step 1.1–1.2** (clarification), then save it as `framework_selection.md`. The agent proposes defaults based on paper type (see `references/research-frameworks.md` §4); the user decides.

```yaml
# Metadata
paper_title: ""
paper_type: ""            # research paper / systematic review / scoping review / literature review / case study / ...
language: "English (US)"  # output mandatory English-US; input may be Indonesian / English
target_journal: ""        # optional (check Instructions for Authors for mandatory checklists)
citation_style: ""        # APA 7 / MLA 9 / Turabian / Vancouver / Harvard / Chicago / IEEE (Step 2.6)
```

## 1. Research Question Framework (RQ Framework)

```yaml
framework_rq: ""         # examples: PICO, PICo, PEO, PCC, SPIDER, SPICE, ECLIPSe, CIMO, CoCoPop, 5W+1H
reason_choice: ""        # brief: why this framework
```

Fill in the elements according to the framework (PICO example):

| Element | Content | Search keywords |
|--------|-----|----------------------|
| P (Population) | | |
| I (Intervention / Interest) | | |
| C (Comparison / Context) | | |
| O (Outcome) | | |
| (T / extras) | | |

> For a different framework, replace the element rows with its components. RQ elements = the source of Round 1 keyword combinations.

## 2. Research Procedure & Stages Framework

```yaml
procedure_framework: ""  # Research Onion / Empirical Cycle / Research Process Stages / PRISMA-P / Systematic Review Conduct / 4-Phase PRISMA Flow
planned_stages: |
   1. ...
   2. ...
   3. ...
screening:              # only for evidence synthesis
  review_by: 2          # number of independent reviewers (example: 2)
  dedup_tool: ""        # example: reference manager / script
  appraisal: ""         # example: Cochrane RoB 2, NOS, QUADAS-2, JBI
```

## 3. Reporting & Screening Framework (Reporting Checklist)

```yaml
reporting_checklist: ""  # examples: PRISMA 2020, CONSORT, STROBE, COREQ, ENTREQ, ...
reporting_extension: ""  # examples: PRISMA-S, PRISMA-ScR, PRISMA-Abstracts
appraisal_tool: ""       # examples: AMSTAR 2, GRADE
item_source: |          # official URL where checklist items are taken (EQUATOR/prisma-statement.org/etc.)
  https://...
```

## 4. Mandatory vs. Optional

- [ ] Does the target journal **require** a specific checklist? → state its exact name & version (check Instructions for Authors).
- [ ] Is the protocol registered? → examples: PROSPERO, Open Science Framework (for systematic reviews).
- [ ] Does the user approve this framework? (human-in-the-loop gate)

## Output Binding

Once the form is approved, this framework **binds** the subsequent stages:
1. The RQ is formulated using the §1 framework → `research_question.md`
2. Methodology is written following the §2 framework → Methodology section
3. Screening/appraisal follows §2 & §3B → RoB table + PRISMA flow
4. Pre-submission is run with the §3 checklist → `templates/reporting_checklist.md`