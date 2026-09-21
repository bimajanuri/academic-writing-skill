# Research Frameworks — Research & Writing Framework Options

Catalog of frameworks the user can choose to govern how the paper is formulated, carried out, and reported. Consists of **3 categories**:

1. **Research Question (RQ) Frameworks**
2. **Research Procedure & Stage Frameworks**
3. **Reporting & Screening Frameworks (Reporting Checklist)**

> **Modular Multi-Method Engine**: for qualitative reviews, reporting/extraction frameworks are integrated into the mode protocol (`protocols/scoping-review.md` → PRISMA-ScR + PCC; `protocols/meta-ethnography.md` → eMERGe + Noblit & Hare; `protocols/narrative-review.md` → SANRA; `protocols/integrative-review.md` → Whittemore & Knafl; `protocols/critical-review.md` → appraisal lenses). See the Method Selection Router in SKILL.md.

> Principle: a framework is a **binding contract** — once selected, the RQ, the search, the methodology structure, and the final checklist follow it. Frameworks are not mandatory; if the user does not care, the agent proposes a default appropriate to the paper type (see §4).

---

## 1. Research Question Frameworks (RQ Framework)

Select one framework to formulate 1–3 RQs. Each framework element yields both a sentence component of the RQ and **search keywords** (feed to `literature-search.md`).

| Framework | Elements | Suitable for (question type) | Common disciplines |
|-----------|--------|-------------------------------|---------------|
| **PICO(T/S)** | **P**opulation, **I**ntervention, **C**omparison, **O**utcome (+**T**ime / +**S**tudy design) | Effectiveness of interventions/experiments; quantitative questions | Health, engineering, natural sciences |
| **PICo / PICoS** | **P**opulation/Participants, **P**henomena of **I**nterest, **C**ontext | Experience/meaning; qualitative evidence synthesis (JBI-endorsed) | Nursing, social sciences |
| **PEO** | **P**opulation, **E**xposure, **O**utcome | Aetiology/risk without a comparator; experience of exposure | Epidemiology, social sciences |
| **PCC** | **P**opulation, **C**oncept, **C**ontext | Scoping reviews (mapping a literature territory) | JBI-endorsed, multidisciplinary |
| **SPIDER** | **S**ample, **P**henomenon of **I**nterest, **D**esign, **E**valuation, **R**esearch type | Qualitative & mixed-methods evidence synthesis | Health, social sciences |
| **SPICE** | **S**etting, **P**erspective, **I**ntervention, **C**omparison, **E**valuation | Evaluation of services/interventions, organizational change | Management, health services |
| **ECLIPSe** | **E**xpectation, **C**lient group, **L**ocation, **I**mpact, **P**rofessionals, **S**ervice | Policy/service evaluation (qualitative) | Public policy, management |
| **CIMO** | **C**ontext, **I**ntervention, **M**echanisms, **O**utcome | "What works, for whom, when, why" questions (realist/design science) | Education, business, engineering |
| **CoCoPop** | **C**ondition, **C**ontext, **P**opulation | Prevalence/preponderance questions | Epidemiology |
| **FINER** | **F**easible, **I**nteresting, **N**ovel, **E**thical, **R**elevant | **RQ quality validation** (not sentence construction) | All |
| **5W+1H** | What, Who, Why, Where, When, How | General/exploratory questions, research journalism | All |

> References: UCL Systematic Searching guide, Booth (2006), Cooke et al. (2012), Wildridge & Bell (2002), JBI Manual for Evidence Synthesis.

### How to use
1. Choose a framework according to the question type (table above).
2. Fill in each element → combine into a structured RQ sentence.
3. Extract 3–5 core concepts → derive keyword combinations for the search (Round 1 in `literature-search.md`).
4. Evaluate clarity with **FINER** (Feasible/Interesting/Novel/Ethical/Relevant) before locking it in.

### Example (PICO)
```
P: Indonesian undergraduate students (18–25 years old)
I: video-based social media learning (duration & frequency)
C: no intervention / conventional synchronous classes
O: GPA, learning engagement
T: one semester
RQ: "Among undergraduate students in Indonesia, does social-media-based learning
     increase engagement and GPA compared to conventional classes in one semester?"
```

---

## 2. Research Procedure & Stage Frameworks

Guides **how the research is carried out** — from design through execution/reporting of the process. Select one as the methodology framework.

| Framework | Stages | Used for |
|-----------|---------|---------------|
| **Research Onion (Saunders et al.)** | 1) Philosophy → 2) Approach → 3) Strategy → 4) Choices → 5) Time horizon → 6) Techniques & procedures | Selecting & justifying a research design (quantitative/qualitative/mixed), suitable for research papers |
| **Empirical Cycle (de Groot)** | Observation → Induction → Deduction → Testing → Evaluation | Systematic empirical research; the scientific method flow |
| **Research Process Stages** | 1) Problem identification → 2) Literature review → 3) Aim/RQ/hypotheses → 4) Research design → 5) Data collection → 6) Analysis → 7) Interpretation → 8) Reporting | General quantitative/qualitative research |
| **PRISMA-P (protocol)** | 17 protocol items (admin info, intro, methods: eligibility → information → search strategy → data appraisal & risk of bias → data → synthesis → etc.) | Writing a systematic review protocol BEFORE execution |
| **Systematic Review Conduct (Cochrane/JBI-aligned)** | 1) Define the question → 2) Eligibility criteria → 3) Search strategy → 4) Screening & study selection → 5) Risk-of-bias assessment → 6) Data extraction → 7) Synthesis (meta/descriptive) → 8) Interpretation & conclusions | Full systematic review |
| **4-Phase PRISMA Flow (screening)** | Identification → Screening → Eligibility → Included | Screening procedure & article-count reporting (PRISMA 2020 flow) |

### Screening (part of the procedure, not reporting)
- Two stages: **title/abstract → full-text**, carried out by **2 independent reviewers** + discussion/adjudication.
- Deduplicate early (reference manager or script; report the unique count vs. pre-dedup count).
- Document the counts at each phase in a **PRISMA flow diagram**.

> If the paper is not a systematic review, use the Research Onion / Empirical Cycle / Research Process Stages as the methodology framework; PRISMA-P & PRISMA Flow are only for evidence synthesis (systematic/scoping reviews).

---

## 3. Reporting & Screening Frameworks (Reporting Checklist)

Used as a **reporting checklist** and **screening crib sheet**. Official reference sources: **EQUATOR Network** (equator-network.org), prisma-statement.org, consort-spirit.org, strobe-statement.org.

### 3A. Main reporting checklists (choose per study design; check the target journal's Instructions for Authors)

| Checklist | Study design | Items | Key extensions |
|-----------|--------------|------|------------------|
| **PRISMA 2020** | Systematic review / meta-analysis | 27 | PRISMA-S (search), PRISMA-ScR (scoping), PRISMA-P (protocol), PRISMA-Abstracts, PRISMA-IPD, PRISMA-DTA, PRISMA-LSR |
| **CONSORT 2010** | RCT | 25 | Cluster, non-inferiority/equivalence, pragmatic, harm, CONSORT-Abstracts, CONSORT-Outcomes |
| **STROBE** | Observational (cohort, case-control, cross-sectional) | 22 | STREGA (genetic), STROBE-ME (molecular), STROBE-nut (nutrition), STROBE-Vet |
| **MOOSE** | Meta-analysis of observational studies | 35 | — |
| **SWiM** | Systematic synthesis WITHOUT meta-analysis | 9 | — |
| **ENTREQ** | Qualitative evidence synthesis | 21 | — |
| **COREQ** | Qualitative research based on interviews/focus groups | 32 | — |
| **SRQR** | Qualitative research (broader in scope than COREQ) | 21 | — |
| **STARLITE** | Reporting literature search strategies | 8 (S.T.A.R.L.I.T.E) | — |
| **SPIRIT** | Clinical trial protocols | 33 | — |
| **STARD** | Diagnostic accuracy | 30 | STARD-Abstracts |
| **TRIPOD** | Prediction models (prognosis/diagnosis) | 22 | TRIPOD-AI for AI models |
| **CARE** | Case report | 13 | — |
| **ARRIVE** | Preclinical animal research | 21 (ARRIVE 2.0) | — |
| **CHEERS** | Health economic evaluation | 28 (CHEERS 2022) | — |
| **SQUIRE 2.0** | Quality improvement research | 18 | — |

### 3B. Screening & critical appraisal (risk-of-bias) tools

| Tool | Used for | Template status |
|------|---------------|-----------------|
| **PRISMA 2020 Flow** | Article counts at each screening phase (reporting) | Official diagram at prisma-statement.org |
| **Cochrane RoB 2.0** | Risk of bias in RCTs | Per domain (randomization, deviations, missing data, measurement, outcome selection) |
| **ROBINS-I** | Risk of bias in non-randomized studies (interventions) | 7 domains |
| **Newcastle–Ottawa Scale (NOS)** | Quality of cohort/case-control studies | Selection, comparability, outcome |
| **QUADAS-2** | Diagnostic accuracy | 4 domains |
| **JBI Critical Appraisal Checklists** | 10+ designs (qualitative, cross-sectional, etc.) | Per design (≥8 items) |
| **AMSTAR 2** | Methodological quality of systematic reviews | 16 items |
| **GRADE** | Certainty of evidence | 5 domains per outcome |

> "Screening" means two things: (1) **selection flow** (PRISMA Flow, §2), and (2) **critical appraisal** (the tools in 3B). Both belong in the methodology report.

---

## 4. Default Recommendations per Paper Type

If the user does not mention a framework, propose one (but ask for confirmation):

| Paper type | Category 1 (RQ) | Category 2 (Procedure) | Category 3 (Reporting/Screening) |
|-------------|------------------|------------------------|-----------------------------------|
| Systematic review (quantitative) | PICO / PICOS | PRISMA-P + Conduct Steps + 4-Phase Flow | PRISMA 2020 (+PRISMA-S, +PRISMA-Abstracts); RoB 2 / NOS; AMSTAR 2; GRADE |
| Systematic review (qualitative) | PICo / SPIDER | PRISMA-P + Conduct Steps + 4-Phase Flow | ENTREQ; JBI; PRISMA 2020 (adjusted) |
| Scoping review | PCC | PRISMA-P (scoping-aware) + 4-Phase Flow | PRISMA-ScR (+PRISMA-S) |
| RCT | PICO / PICOT | Research Process Stages | CONSORT 2010 |
| Observational (cohort/case-control/cross-sectional) | PEO / PICO | Research Process Stages | STROBE |
| Qualitative research (interviews/FGD) | SPIDER / SPICE | Empirical Cycle / Research Onion | COREQ (or SRQR) |
| Literature review / conceptual / management | CIMO / 5W+1H | Research Onion | Internal quality gates (internal checklist) |
| Policy/service research | ECLIPSe / SPICE | Research Process Stages | STROBE / CHEERS (if economic) |

> Note: not all journals require EQUATOR checklists. Always check the target journal's **Instructions for Authors**; if not required, using the checklist is still recommended for quality.

---

## 5. Pipeline Workflow

1. **Stage 1 (Step 1.1)** — ask the user to select a framework (or propose a default via §4). Save it to `framework_selection.md`.
2. **Stage 1 (Step 1.2)** — build search keywords from the RQ framework elements.
3. **Stage 2 (Step 2.1)** — formulate the RQ with the chosen framework; validate with FINER.
4. **Stage 2 (Step 2.5)** — determine how the procedural framework & reporting checklist apply to the outline; mark the position of each checklist item per section.
5. **Stage 3** — write the methodology following the procedural framework; screening artifacts (RoB table, PRISMA flow numbers) are generated as results come in.
6. **Stage 6 (Step 6.3)** — run the chosen reporting checklist via `templates/reporting_checklist.md`; ensure every item has a location in the manuscript.

---

## 6. Source References

- EQUATOR Network — equator-network.org (reporting guidelines library)
- PRISMA Statement — prisma-statement.org (PRISMA 2020, -S, -ScR, -P)
- CONSORT Statement — consort-spirit.org
- Cochrane Handbook for Systematic Reviews of Interventions
- JBI Manual for Evidence Synthesis
- UCL Systematic Searching — research question frameworks
- Booth, A. (2006). *Clear and present questions* [SPICE/CIMO]. Library Hi Tech, 24(3).
- Cooke, A., Smith, D., & Booth, A. (2012). *Beyond PICO: The SPIDER tool* [SPIDER]. Qual Health Res, 22(10).
- Wildridge, V., & Bell, L. (2002). *How CLIP became ECLIPSE* [ECLIPSe]. Health Info Libr J, 19(2).
- Saunders, M., Lewis, P., & Thornhill, A. — *Research Methods for Business Students* (Research Onion).
- de Groot, A. D. (1969). *Methodology* (Empirical Cycle).