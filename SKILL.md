---
name: academic-writing
description: |
  Menghasilkan paper/artikel ilmiah akademik berbahasa **English (US)** berkualitas jurnal melalui Modular Multi-Method Engine. Input penelitian dapat diberikan dalam Bahasa Indonesia atau English. Gunakan skill ini saat pengguna meminta: menulis paper atau artikel ilmiah, menyusun literature review, mencari dan mengekstrak referensi akademik, membuat outline/kerangka paper, memilih dan menjalankan framework/mode sintesis literatur (Systematic Review/PRISMA, Scoping Review/PRISMA-ScR/PCC, Meta-Etnografi/eMERGe/Noblit & Hare/Reciprocal Translation, Narrative Review/SANRA, Integrative Review/Whittemore & Knafl, Critical Review), format sitasi (APA/IEEE/MLA/Turabian/Chicago/Vancouver/Harvard), merevisi dan memoles draft, menghilangkan jejak AI (humanizer), memeriksa tata bahasa/grammar English (US), memeriksa plagiarisme/similarity sebelum submit, atau menilai kualitas naskah. Trigger phrases: "tulis paper", "bantu riset", "cari referensi", "litang", "jurnal Scopus", "gap analysis", "outline paper", "framework penulisan", "pilih framework", "mode sintesis", "PCC", "PRISMA", "PRISMA-ScR", "scoping review", "meta-etnografi", "meta-synthesis", "eMERGe", "reciprocal translation", "narrative review", "SANRA", "integrative review", "critical review", "PICO", "CONSORT", "STROBE", "reporting checklist", "format sitasi", "revisi draft", "polish", "anti AI", "cek grammar", "grammar check", "cek plagiarisme", "plagiarism check", "similarity", "submit jurnal", "tugas akhir", "skripsi", "tesis", "disertasi", "systematic review". Pipeline 6 tahap: Explorasi → Perencanaan → Penulisan → Sitasi → Revisi → Output, dengan perutean ke protokol mode & engine sintesis khusus kualitatif.
---

# Academic Writing — Penulisan Akademik

Skill ini adalah **Modular Multi-Method Engine**: pipeline end-to-end untuk menghasilkan paper/artikel ilmiah akademik berkualitas jurnal — **output WAJIB dalam Bahasa Inggris (English-US) bergaya akademik** — yang mendukung banyak metode sintesis literatur (kualitatif & kuantitatif) melalui **router** di awal instruksi. Instruksi kerja untuk agent ditulis dalam Bahasa Indonesia; input penelitian boleh Bahasa Indonesia atau English sesuai kemampuan Gen AI, tetapi **naskah output selalu English-US**.

## Sumber Metodologi (Attribution)

Pipeline ini diadaptasi dan dikombinasikan dari metodologi terbuka berikut:
- **Prof. Peng Sida's open research notes** politik penulisan section — via [Master-cai/Research-Paper-Writing-Skills](https://github.com/Master-cai/Research-Paper-Writing-Skills)
- **SNL-UCSB paper-writing-skill** — pipeline 5 tahap, gaya audit ganda (mekanis + semantik), prinsip editing [SNL-UCSB/paper-writing-skill](https://github.com/SNL-UCSB/paper-writing-skill)
- **Humanizer 25 patterns** — deteksi & penghapusan jejak AI [blader/humanizer](https://github.com/blader/humanizer)
- **journal-adapt** — adaptasi korpus dari jurnal target [WantongC/journal-adapt-writing-skill](https://github.com/WantongC/journal-adapt-writing-skill)
- **Strategist quality gates** — penilaian reviewer 7 dimensi [lishix520/academic-paper-skills](https://github.com/lishix520/academic-paper-skills)
- **Literature triage matrix** — ekstraksi metadata terstruktur per paper (17-skill catalog: literature review, research design) [WenyuChiou/ai-research-skills](https://github.com/WenyuChiou/ai-research-skills)
- **Protokol kualitatif** — eMERGe (France et al., 2019), Noblit & Hare (1988), PRISMA-ScR (Tricco et al., 2018), SANRA (Baethge et al., 2019), Whittemore & Knafl (2005), PCC/JBI Manual.

Gunakan pendekatan di atas sebagai kerangka kerja; jangan menyalin teks dari korpus jurnal target secara verbatim.

> **Urutan invocation mutlak**: setelah membaca SKILL.md, **WAJIB** load `core/system-prompt.md` (instruksi universal), lalu `protocols/<mode>.md` (mode terpilih), lalu `engines/<engine>.md` (jika ditunjuk), lalu gunakan `references/*`, `templates/*`, `checklists/*` sesuai tahap.

---

## METHOD SELECTION ROUTER — Pilih Mode Analisis (Pertama Kali, SEBELUM APA PUN)

Skill ini mendukung **6 mode sintesis literatur**. Sebelum mencari/upload paper apa pun, **WAJIB** tentukan mode via router berikut — ini menentukan aturan, framework, kriteria ekstraksi, engine sintesis, dan checklist akhir yang aktif.

| Mode | Kapan dipakai | RQ Framework | Reporting Checklist | Extraction Matrix | Engine Sintesis |
|------|---------------|--------------|---------------------|-------------------|-----------------|
| **SLR** | Systematic review kuantitatif/kualitatif, meta-analisis, bukti efek | PICO / PICOS / PICo / SPIDER | PRISMA 2020 (+PRISMA-S) | 7-field standar (`references/literature-matrix.md`) | — (meta-analisis / narrative synthesis) |
| **Scoping Review** | Pemetaan luas bukti, konsep, lingkup geografis, tipe metodologi | **PCC** | **PRISMA-ScR** (JBI) | PCC mapping (`references/extraction-scoping.md`) | **Conceptual Mapping** (`engines/conceptual-mapping.md`) |
| **Meta-Etnografi** | Qualitative meta-synthesis, pengalaman/makna, full theory development | PICo / SPIDER | **eMERGe** + Noblit & Hare 7 langkah | 1st/2nd order constructs (`references/extraction-meta-ethnography.md`) | **Reciprocal Translation** (`engines/reciprocal-translation.md`) |
| **Narrative Review** | Ulasan naratif, debat akademik, perkembangan gagasan | 5W+1H / CIMO | **SANRA** | Posisi argumen (`references/extraction-narrative.md`) | **Academic Debate** (`engines/academic-debate.md`) |
| **Integrative Review** | Gabungan data kualitatif + kuantitatif | disesuaikan | **Whittemore & Knafl** | Mixed data (`references/extraction-integrative.md`) | W&K 5-tahap (reduction/display/comparison) |
| **Critical Review** | Kritik epistemologis/metodologis/bias | 5W+1H | Critical appraisal (CASP/JBI) | Lensa appraisal (`references/extraction-critical.md`) | — (appraisal per studi + sintesis ranking) |

**Navigasi**:
1. Lihat tabel di atas + detail protokol di `protocols/*.md`.
2. **DILARANG memulai pencarian literatur (Langkah 1.2) sebelum mode terkunci.** Mode menentukan strategi kata kunci, kriteria inklusi, dan matrix ekstraksi — hasil pencarian akan berbeda per mode.
3. Jika pengguna belum menyebut mode → **tanyakan** (atau usulkan berdasarkan jenis pertanyaan). Jangan menebak, jangan lanjut pencarian sebelum mode terkunci.
4. Mode SLR = default bila kuantitatif/klasik; pilih mode kualitatif lain bila pengguna meminta pemetaan/sintesis interpretatif.
5. Tulis pilihan mode + framework ke `framework_selection.md` (form: `templates/framework_selection.md`) sebagai kontrak.

> **GATE 0 (Method Selection Gate) — WAJIB LULUS SEBELUM PENCARIAN**:
> - [ ] Mode analisis terkunci (SLR / Scoping / Meta-Etnografi / Narrative / Integrative / Critical)
> - [ ] Standar pelaporan terpilih (PRISMA 2020 / PRISMA-ScR / eMERGe / SANRA / W&K / appraisal)
> - [ ] Framework RQ mode dicatat (PCC / PICo / SPIDER / dst.)
> - [ ] Strategi pencarian diturunkan dari elemen framework mode
> Pencarian paper/artikel HANYA boleh dimulai setelah keempat item ini terpenuhi. Hasil pencarian harus dikalibrasi ke mode: mis. scoping → target pemetaan luas (bukan efek), meta-etnografi → target studi kualitatif dengan data ekstensif (bukan survei kuantitatif), narrative → target paper posisi/debat.

---

## INISIALISASI — Parameter Wajib Sebelum Memulai

**Urutan eksekusi wajib (tidak boleh dipertukarkan):**

```text
1. METHOD SELECTION (router)   → mode + standar pelaporan + framework RQ      [GATE 0]
2. PARAMETER INISIALISASI      → topik, bahasa, quartile, rentang tahun,
                                 kriteria inklusi sesuai mode                 [GATE 0]
3. STRATEGI PENCARIAN          → kata kunci diturunkan dari framework mode
4. PENCARIAN LITERATUR         → hanya dimulai setelah 1–3 tuntas
5. EKSTRAKSI MATRIX            → sesuai template mode
```

Parameter yang dikonfirmasikan sebelum *pencarian* (bukan hanya sebelum upload paper):

1. **Mode analisis** (dari Method Selection Router): SLR / Scoping / Meta-Etnografi / Narrative / Integrative / Critical Review — **prioritas nomor satu**
2. **Standar pelaporan** yang dikehendaki (default mengikuti mode): PRISMA 2020 / PRISMA-ScR / eMERGe / SANRA / Whittemore & Knafl / appraisal checklist
3. **Topik / ide penelitian** & jenis paper
4. **Bahasa input**: Bahasa Indonesia / English — **PAPER OUTPUT SELALU English-US** (tidak opsional)
5. **Target Scopus Quartile filter**: Q1–Q4 atau tanpa filter
6. **Rentang tahun**: default 5 tahun terakhir (bisa diubah)
7. **Framework RQ terpilih** (default dari router mode) + **kriteria inklusi/eksklusi awal sesuai mode**

> **Kontrak inisialisasi**: simpan hasil ke `framework_selection.md`. **Tanpa mode terkunci, jangan buat query pencarian, jangan panggil API paper, jangan unggah/ekstrak. Tanya pengguna dulu.** Jika pengguna mengunggah paper tanpa menyebut mode → tanyakan mode terlebih dahulu, jangan menebak kriteria ekstraksi.

---

## PIPELINE 6 TAHAP (berlaku untuk semua mode, dengan kaitan ke protokol)

```text
TAHAP 1: EXPLORASI      → Search literatur + filter Quartile + [Ekstraksi matrix sesuai MODE] + Gap Analysis + Research Map
TAHAP 2: PERENCANAAN    → Research question (framework mode) + outline + alokasi kata + reviewer self-assessment
TAHAP 3: PENULISAN      → Section-by-section sesuai urutan wajib + claim-evidence map (+ hasil ENGINE SINTESIS mode)
TAHAP 4: SITASI         → Format sitasi + bibliography + validasi klaim-sitasi + cek DOI
TAHAP 5: REVISI         → Humanizer (25 pola) + grammar check EN-US + gate mekanis + gate semantik + red-team review
TAHAP 6: OUTPUT         → Konversi MD/LaTeX/DOCX + grammar final + plagiarism check + [AUTO-VALIDATION checklist mode] + pre-submission
```

Setiap tahap memiliki **quality gate** — tidak boleh lanjut sebelum lolos. Detil protokol per mode ada di `protocols/<mode>.md`; detil tahap umum ada di `references/*`.

---

## TAHAP 1: EXPLORASI

> Load `protocols/<mode>.md` untuk kriteria ekstraksi sesuai mode.
> Load (per mode) `references/extraction-*.md` untuk matrix ekstraksi khusus.
> Detail pencarian: `references/literature-search.md`; gap mapping: `references/research-gap-mapping.md`.

### Langkah 1.1 — Method Selection + Inisialisasi (WAJIB pertama)
1. Kunci **mode analisis** lewat Method Selection Router (GATE 0). **Satu-satunya jalan masuk ke Tahap 1.**
2. Konfirmasikan parameter INISIALISASI (di atas) — topik, bahasa, quartile, tahun, framework RQ, kriteria inklusi awal.
3. Simpan kontrak ke `framework_selection.md`.
4. **Baru setelah ini** eksekusi Langkah 1.2.

### Langkah 1.2 — Pencarian Literatur Disesuaikan Mode (setelah GATE 0 lolos)
1. **Turunkan kata kunci dari elemen framework RQ mode** — bukan query generik:
   - **SLR**: P/I/C/O(S) — PICO/PICOS.
   - **Scoping**: P, C, C — Population, Concept, Context (PCC).
   - **Meta-Etnografi**: fenomena minat, setting, pengalaman (PICo/SPIDER).
   - **Narrative**: topik utama + wilayah debat.
   - **Integrative**: kombinasi qual & quant pada konsep.
   - **Critical**: selain topik, tambahkan istilah appraisal/kritik bila relevan.
2. **Kalibrasi target pencarian ke mode** (hasil harus cocok dengan metode):
   - Scoping → target paper yang memetakan konsep/konteks/metodologi luas (relevansi konseptual ≥ 7/10), volume boleh lebih besar.
   - Meta-Etnografi → target **studi kualitatif interpretatif** (kaya data/constructs), BUKAN survei/eksperimen kuantitatif.
   - Narrative → target paper posisi/klaim/debat, sintesis konseptual.
   - Integrative → target studi qual + quant pada isu sama.
   - Critical → target paper yang bisa diappraisal (jelas metode & asumsinya).
3. Sumber pencarian: OpenAlex API (gratis, wajib coba dulu), Semantic Scholar, Crossref (verifikasi DOI), DOAJ, PubMed E-utilities (biomedik), arXiv (preprint opsional).
4. Filter Scopus Quartile bila diminta (verifikasi via scimagojr.com); jika tanpa filter, tag quartile wajib.
5. Untuk systematic review/scoping: terapkan screening 2 reviewer independen, dedup, catat jumlah per fase PRISMA flow.
6. Target volume: 15–40 paper relevan (relevansi ≥ 7/10); scoping boleh lebih luas.

### Langkah 1.3 — Extraction Matrix sesuai MODE
- **SLR**: 7-field standar — `references/literature-matrix.md` + `templates/literature_matrix_template.md`.
- **Scoping**: PCC mapping — `references/extraction-scoping.md` + `templates/extraction_scoping.md`.
- **Meta-Etnografi**: 1st/2nd order constructs TERPISAH — `references/extraction-meta-ethnography.md` + `templates/extraction_meta_ethnography.md`.
- **Narrative**: posisi argumen — `references/extraction-narrative.md` + `templates/extraction_narrative.md`.
- **Integrative**: data QUAL & QUANT terpisah — `references/extraction-integrative.md` + `templates/extraction_integrative.md`.
- **Critical**: lensa appraisal (epistemologis/metodologis/bias) — `references/extraction-critical.md` + `templates/extraction_critical.md`.

Jika field kosong → tulis *"—"* (jangan mengarang).

### Langkah 1.4 — Gap Analysis (Gap Matrix)
Gunakan `references/research-gap-mapping.md` + `templates/gap_matrix.md`:
1. Literature mapping (oldest → newest).
2. Gap Matrix (teoretis/metodologis/kontekstual/inkonsistensi; min. 3 sitasi per gap).
3. Anti pseudo-gap.
4. Simpan ke `gap_analysis.md`.

> **Catatan mode kualitatif**: gap untuk scoping/meta-etnografi sering berupa *konseptual* (konsep belum tersintesis/didefinisikan) — pastikan didukung evidence matrix.

### Langkah 1.5 — Research Positioning Map
Buat `research_map.md` (4 kuadran) + hubungkan ke Modul B (`references/journal-targeting.md`).

### Output Tahap 1
```
literature_matrix.md        — matrix sesuai MODE (7-field / PCC / constructs / posisi / mixed / appraisal)
gap_matrix.md               — gap matrix
gap_analysis.md             — analisis gap + bukti
research_map.md             — peta posisi topik
framework_selection.md      — kontrak mode + framework
```

### Quality Gate 1
- [ ] **GATE 0 lolos SEBELUM pencarian**: mode + standar pelaporan + framework RQ terkunci & ter-rekam di `framework_selection.md`
- [ ] Strategi pencarian diturunkan dari framework mode (bukan query generik)
- [ ] Hasil pencarian terkalibrasi ke mode (tipe studi sesuai; scoping luas / meta-etnografi kualitatif / dll.)
- [ ] Matrix diekstraksi sesuai template mode (kolom benar)
- [ ] Quartile Scopus tercantum
- [ ] Gap ≥ 3 dengan evidence; 0 pseudo-gap
- [ ] Pengguna setuju lanjut

---

## TAHAP 2: PERENCANAAN

> Load `references/outline-builder.md`, `references/journal-targeting.md`, `references/novelty-framing.md`.

### Langkah 2.1 — Research Question & Hipotesis
Rumuskan RQ dengan framework mode (`protocols/<mode>.md` — contoh: PCC untuk scoping, PICo/SPIDER untuk meta-etnografi). Validasi FINER.

### Langkah 2.2 — Journal Targeting (Modul B)
Strategi `references/journal-targeting.md`. Cocokkan mode dengan arena jurnal (jurnal metodologis/scoping vs sintesis kualitatif).

### Langkah 2.3 — Penyusunan Outline
Template `templates/paper_outline.md`. Proporsi Intro 15–20% | Isi 60–70% | Kesimpulan 10–15%. Buat topic sentences dulu.

> **Mode kualitatif**: section "Hasil" berisi hasil **sintesis** (taksonomi/3rd order/debat), bukan roti per-paper.

### Langkah 2.4 — Reviewer Self-Assessment (7 dimensi, 35 poin)
Ambang ≥ 28/35. Skor rendah → revisi outline.

### Langkah 2.5 — Framework Compliance Plan
Terapkan framework mode ke outline: prosedur riset + reporting checklist → peta item→section. Untuk evidence synthesis wajib: PRISMA flow, risk-of-bias (atau critical appraisal), deskripsi pencarian lengkap.

### Langkah 2.6 — Gaya Sitasi
APA 7, MLA 9, Turabian, Vancouver, Harvard, Chicago, atau IEEE. Rekam di `style_profile.md`/`framework_selection.md`.

### Langkah 2.7 — Novelty & Contribution Framing
`references/novelty-framing.md` + `templates/contribution_statement.md`. Kontribusi mengikuti jenis mode (mis. scoping: peta taksonomi baru; meta-etnografi: 3rd order construct baru).

### Output Tahap 2
```
paper_outline.md, research_question.md, framework_selection.md, framework_compliance.md, style_profile.md, contribution_statement.md
```

### Quality Gate 2
- [ ] RQ sesuai framework mode & lolos FINER
- [ ] Skor reviewer ≥ 28/35
- [ ] Framework compliance lengkap
- [ ] Gaya sitasi terpilih & disetujui
- [ ] Contribution statement valid (0 overclaim)

---

## TAHAP 3: PENULISAN

> Load `references/section-writing.md` + template mode.

### Urutan Wajib Menulis
```text
1. Draft 0 Introduction   (kerangka disposable — framing guardrails)
2. Literature Review       (feed langsung dari matrix mode)
3. Methodology             (mengikuti framework prosedur mode)
4. Results & Discussion    (HASIL SINTESIS dari engine mode)
5. Conclusion
6. Final Introduction      (ditulis ULANG)
7. Abstract                (paling terakhir)
```

### Proses per Section
1. Topic sentences dulu → cek alur argumen → isi full paragraphs (4–6 kalimat).
2. Satu paragraf, satu pesan.
3. Jalankan `checklists/post_draft.md`.
4. Mapping setiap klaim besar ke evidence (claim-evidence map).

### Prinsip Gaya — lihat `core/system-prompt.md` (Non-Negotiable; berlaku semua mode): sentence ~21 kata, aktif voice, zero hedging, tanpa filler adjective, named over vague, heading sebagai klaim.

### Claim-Evidence Map
Untuk mode kualitatif, pastikan rantai bukti: 1st order → 2nd order → 3rd order (meta-etnografi); cluster → bukti (scoping/narrative).

### Output Tahap 3
```
draft_<section>.md      — draft per section
claim_evidence_map.md   — peta klaim-evidence
synthesis_<mode>.md     — artefak sintesis engine (jika mode kualitatif)
```

### Quality Gate 3
- [ ] Semua section ditulis sesuai urutan wajib
- [ ] Introduction final ditulis ulang
- [ ] Abstract terakhir
- [ ] Claim-evidence map lengkap
- [ ] Artefak sintesis mode (engineering output) terintegrasi di Results

---

## TAHAP 4: SITASI & REFERENSI

> Load `references/citation-formatter.md`.

### Langkah 4.1—4.3
Konfirmasi gaya → format semua sitasi → validasi (klaim→sitasi, sitasi↔bibliography 1:1, DOI aktif).

> **Mode kualitatif**: kutipan langsung 1st order construct dalam narasi sintesis WAJIB diberi indikasi sumber paper + halaman (jika tersedia) — bukan hanya daftar pustaka.

### Output Tahap 4
```
draft_with_citations.md, bibliography.md, citation_validation.md
```

### Quality Gate 4
- [ ] Semua klaim besar bersitasi
- [ ] In-text ↔ bibliography 1:1
- [ ] Gaya konsisten
- [ ] Kutipan 1st order di-trace dengan benar

---

## TAHAP 5: REVISI & QUALITY CONTROL

> Load `references/revision-guide.md`, `references/grammar-check.md`, `references/quality-gates.md`.

### Layer 1 — Humanizer (25 pola)
Ringkasan di `references/revision-guide.md`. (Berlaku pada naskah English-US output.)

### Layer 2 — Grammar Check (English-US; wajib)
Detail di `references/grammar-check.md`; checklist `checklists/grammar_check.md`. Pemeriksaan menjalani **register English-US** secara penuh (spelling US: `analyze`, `color`, `center`; dll.) — pasca output paper, bukan input.

### Layer 3 — Gate Mekanis
Em-dash, kalimat >40 kata, passive voice, banned words, terminologi drift.

### Layer 4 — Gate Semantik
Define-before-use, claim-evidence alignment, coherence & flow, honest positioning, followability.

### Layer 5 — Red-Team Review
Simulasi reviewer fresh reader; temuan berperingkat CRITICAL/IMPORTANT/MINOR; iterasi sampai bersih.

### Output Tahap 5
```
draft_revised.md, humanizer_report.md, grammar_report.md, red_team_findings.md, revision_log.md
```

### Quality Gate 5
- [ ] 0 critical AI tells tersisa
- [ ] Grammar: 0 kesalahan pengubah makna
- [ ] Gate mekanis 0 pelanggaran
- [ ] Semua klaim supported (rantai bukti mode valid)
- [ ] Red-team tanpa CRITICAL/IMPORTANT

---

## TAHAP 6: OUTPUT & AUTO-VALIDATION MODE

> Load `references/output-formatter.md`; `checklists/<mode>.md`; `templates/reporting_checklist.md`.

### Langkah 6.1—6.2 — Format & Konversi
MD (default) / LaTeX / DOCX (pandoc).

### Langkah 6.3 — Auto-Validation Checklist MODE (wajib, bukan opsional)
Jalankan checklist akhir sesuai mode terpilih via `templates/reporting_checklist.md`, simpan ke `reporting_checklist_result.md`:

| Mode | Checklist akhir |
|------|-----------------|
| SLR | `checklists/prisma_2020.md` (27 item) |
| Scoping | `checklists/prisma_scr.md` (22 item) |
| Meta-Etnografi | `checklists/emerge.md` (19 kriteria) |
| Narrative | `checklists/sanra.md` (6 item, skor) |
| Integrative | `checklists/whittemore_knafl.md` (17 kriteria) |
| Critical | `checklists/critical_review.md` (10 kriteria) |

Setiap item "Tidak"/"Tidak lengkap" WAJIB punya rencana perbaikan sebelum dianggap complete.

### Langkah 6.3b — Pre-Submission Mechanical & Other Checks
Word count, broken references, konsistensi istilah, label fig/tabel, grammar final, plagiarism (`checklists/plagiarism_check.md` → `plagiarism_report.md`), reporting checklist terpilih.

### Langkah 6.4 — Final Journal Fit & Cover Letter (Modul B)
Fit re-check, re-verifikasi jurnal (quartile hari ini, anti-predator), self-assessment ≥ 28/35, cover letter (`templates/cover_letter.md`), dokumen pelengkap (ORCID, data availability).

### Output Tahap 6
```
<paper_title>.md / .tex / .docx, reporting_checklist_result.md (auto-validation mode), plagiarism_report.md, grammar_report.md, pre_submission_checklist.md, journal_comparison.md, cover_letter.md, revision_summary.md
```

### Quality Gate 6
- [ ] Semua gate 1–5 terpenuhi
- [ ] **Auto-validation checklist mode bersih (0 item kritis)** + hasil tersimpan
- [ ] Grammar & plagiarism final bersih
- [ ] Jurnal target re-verified
- [ ] Self-assessment acceptance ≥ 28/35
- [ ] Pengguna menyetujui versi final

---

## PASCA SUBMISI: REVIEWER RESPONSE & REJECTION HANDLING (Modul C)

> Load `references/reviewer-response.md`; template `templates/response_to_reviewer.md`.

1. Klasifikasi keputusan: desk reject / minor / major / reject.
2. Minor: patuhi semua poin. Major: pisahkan setuju / patuh sebagian / tolak dengan alasan kuat.
3. Tulis response: surat editor (1 halaman) → point-by-point (acknowledgment + perubahan + bukti).
4. Rejection: decision path — kirim ke jurnal lain yang lebih cocok (Modul B).
5. Jika kontribusi berubah → perbarui `contribution_statement.md` & klaim di naskah.
6. Output: `response_to_reviewer.md`, `revision_log.md`, `decision_log.md`.

---

## Alur Pemakaian Cepat (Tanpa Full Pipeline)

Pengguna tidak selalu butuh pipeline penuh. Tangani request langsung:

| Permintaan | Action |
|-----------|--------|
| "Pilih/dapatkan metode sintesis" (scoping, meta-etnografi, narrative, integrative) | Method Selection Router → load `protocols/<mode>.md` → kontrak `framework_selection.md` |
| "Cari referensi tentang X" | Tahap 1 → matrix sesuai mode (default SLR 7-field) |
| "Buat scoping review tentang X" | Mode Scoping → `protocols/scoping-review.md` + `extraction_scoping.md` + Conceptual Mapping |
| "Lakukan meta-etnografi atas paper ini" | Mode Meta-Etnografi → `protocols/meta-ethnography.md` + 1st/2nd order + Reciprocal Translation |
| "Buat narrative review debat X vs Y" | Mode Narrative → `protocols/narrative-review.md` + Academic Debate Engine |
| "Review integratif kual & kuant" | Mode Integrative → `protocols/integrative-review.md` + Whittemore & Knafl |
| "Kritisi literatur ini" | Mode Critical → `protocols/critical-review.md` + appraisal lenses |
| "Buatkan outline paper X" | Tahap 1+2 → Matrix + Outline |
| "Tulis bagian metodologi" | Load section-writing + framework prosedur mode |
| "Format sitasi ini" | Tahap 4 saja |
| "Polis/revise draft ini" | Tahap 5 saja |
| "Cek grammar/tata bahasa draft ini" | Tahap 5 Layer 2 (English-US) |
| "Cek plagiarisme/similarity" | Tahap 6 (plagiarism check) |
| "Pilih/mana jurnal untuk paper ini" | Tahap 2.2 (Modul B) → `journal_comparison.md`; final di Tahap 6.4 |
| "Buatkan cover letter" | Tahap 6.4 → `templates/cover_letter.md` |
| "Tanggapi komentar reviewer" | Pasca submisi (Modul C) |
| "Konversi ke LaTeX/docx" | Tahap 6 saja |
| "Review draft ini" | Red-team protocol (Tahap 5 Layer 5) |
| "Plan paper dari nol" | Full pipeline Tahap 1–6 |

Minta konfirmasi pengguna sebelum menjalankan pipeline penuh jika konteks tidak jelas.

---

## Referensi Internal

### Core & Router
| File | Gunakan untuk |
|------|---------------|
| [core/system-prompt.md](core/system-prompt.md) | Instruksi universal semua mode (gaya, aturan, claim-evidence, auto-validation) — LOAD SELALU |

### Protokol Mode (Method Selection Router)
| File | Gunakan untuk |
|------|---------------|
| [protocols/slr.md](protocols/slr.md) | Mode SLR: PRISMA, PICO/PICOS, 7-field, screening |
| [protocols/scoping-review.md](protocols/scoping-review.md) | Mode Scoping: PCC, PRISMA-ScR, JBI |
| [protocols/meta-ethnography.md](protocols/meta-ethnography.md) | Mode Meta-Etnografi: eMERGe, Noblit & Hare 7 langkah |
| [protocols/narrative-review.md](protocols/narrative-review.md) | Mode Narrative: SANRA |
| [protocols/integrative-review.md](protocols/integrative-review.md) | Mode Integrative: Whittemore & Knafl 5 tahap |
| [protocols/critical-review.md](protocols/critical-review.md) | Mode Critical: appraisal lenses |

### Engine Sintesis Kualitatif
| File | Gunakan untuk |
|------|---------------|
| [engines/reciprocal-translation.md](engines/reciprocal-translation.md) | Meta-etnografi: 1st→2nd→3rd order, reciprocal/refutational/line-of-argument |
| [engines/conceptual-mapping.md](engines/conceptual-mapping.md) | Scoping: taksonomi konsep, distribusi geografis/timeline/metode, research gaps |
| [engines/academic-debate.md](engines/academic-debate.md) | Narrative: klaster pro/kontra, timeline gagasan, debat terbuka |

### Panduan Tahap Umum (references/)
| File | Gunakan untuk |
|------|---------------|
| [references/literature-search.md](references/literature-search.md) | Pencarian literatur + filter Scopus Quartile |
| [references/literature-matrix.md](references/literature-matrix.md) | Matrix 7-field (Mode SLR) |
| [references/extraction-meta-ethnography.md](references/extraction-meta-ethnography.md) | Ekstraksi constructs 1st/2nd order |
| [references/extraction-scoping.md](references/extraction-scoping.md) | Ekstraksi PCC mapping |
| [references/extraction-critical.md](references/extraction-critical.md) | Ekstraksi lensa appraisal |
| [references/extraction-narrative.md](references/extraction-narrative.md) | Ekstraksi posisi argumen |
| [references/extraction-integrative.md](references/extraction-integrative.md) | Ekstraksi data qual+quant |
| [references/research-gap-mapping.md](references/research-gap-mapping.md) | Literature mapping, Gap Matrix, anti pseudo-gap |
| [references/novelty-framing.md](references/novelty-framing.md) | Gap→novelty, contribution statement |
| [references/journal-targeting.md](references/journal-targeting.md) | Arena jurnal, anti-predator, cover letter |
| [references/reviewer-response.md](references/reviewer-response.md) | Reviewer response & rejection path |
| [references/research-frameworks.md](references/research-frameworks.md) | Katalog framework RQ (PCC, PICo, SPIDER, dll.) |
| [references/outline-builder.md](references/outline-builder.md) | Outline, alokasi kata, reviewer assessment |
| [references/section-writing.md](references/section-writing.md) | Panduan menulis per section |
| [references/citation-formatter.md](references/citation-formatter.md) | Format APA/IEEE/MLA/Turabian/Chicago/Vancouver/Harvard |
| [references/revision-guide.md](references/revision-guide.md) | Humanizer 25 pola + workflow revisi |
| [references/grammar-check.md](references/grammar-check.md) | Grammar & mekanika English-US (output) + dukungan input ID/EN |
| [references/plagiarism-check.md](references/plagiarism-check.md) | Deteksi plagiarisme & integritas sitasi (EN utama) |
| [references/quality-gates.md](references/quality-gates.md) | Gate mekanis + semantik + red-team |
| [references/output-formatter.md](references/output-formatter.md) | Konversi MD/LaTeX/DOCX |

### Templates
| File | Gunakan untuk |
|------|---------------|
| [templates/paper_outline.md](templates/paper_outline.md) | Kerangka paper |
| [templates/literature_matrix_template.md](templates/literature_matrix_template.md) | Matrix 7-field (SLR) |
| [templates/extraction_meta_ethnography.md](templates/extraction_meta_ethnography.md) | Matrix constructs (meta-etnografi) |
| [templates/extraction_scoping.md](templates/extraction_scoping.md) | Matrix PCC (scoping) |
| [templates/extraction_critical.md](templates/extraction_critical.md) | Matrix appraisal (critical) |
| [templates/extraction_narrative.md](templates/extraction_narrative.md) | Matrix posisi (narrative) |
| [templates/extraction_integrative.md](templates/extraction_integrative.md) | Matrix campuran (integrative) |
| [templates/gap_matrix.md](templates/gap_matrix.md) | Gap Matrix 4 jenis gap |
| [templates/contribution_statement.md](templates/contribution_statement.md) | Novelty + contribution statement |
| [templates/cover_letter.md](templates/cover_letter.md) | Cover letter submisi |
| [templates/journal_comparison.md](templates/journal_comparison.md) | Perbandingan jurnal kandidat |
| [templates/response_to_reviewer.md](templates/response_to_reviewer.md) | Surat editor + point-by-point |
| [templates/framework_selection.md](templates/framework_selection.md) | Form pilihan mode/framework |
| [templates/reporting_checklist.md](templates/reporting_checklist.md) | Pemetaan item reporting checklist |
| [templates/section_templates/*](templates/section_templates/) | Template per section |
| [templates/citation_templates/*](templates/citation_templates/) | Template sitasi per gaya |

### Checklists (Auto-Validation)
| File | Gunakan untuk |
|------|---------------|
| [checklists/prisma_2020.md](checklists/prisma_2020.md) | SLR — 27 item |
| [checklists/prisma_scr.md](checklists/prisma_scr.md) | Scoping — 22 item |
| [checklists/emerge.md](checklists/emerge.md) | Meta-Etnografi — 19 kriteria |
| [checklists/sanra.md](checklists/sanra.md) | Narrative — 6 item berskor |
| [checklists/whittemore_knafl.md](checklists/whittemore_knafl.md) | Integrative — 17 kriteria |
| [checklists/critical_review.md](checklists/critical_review.md) | Critical — 10 kriteria |
| [checklists/grammar_check.md](checklists/grammar_check.md) | Grammar English-US (output) |
| [checklists/plagiarism_check.md](checklists/plagiarism_check.md) | Anti-plagiarisme (EN utama) |
| [checklists/*](checklists/) | Checklist kualitas lain |

### Lainnya
| File | Gunakan untuk |
|------|---------------|
| [scripts/convert.sh](scripts/convert.sh) | Konversi format |

---

## Aturan Penting (Selalu Berlaku)

1. **Jangan mengarang referensi.** Verifikasi setiap paper benar-benar ada (DOI, penerbit, tahun). Ragu → "UNVERIFIED — cek manual".
2. **Jangan mengarang data/fakta/temuan.** Jika tidak diberikan, tanyakan atau tulis placeholder `[DATA]`.
3. **Jangan menyalin teks corpus JURNAL verbatim.**
4. **Bahasa**: **output paper WAJIB English-US bergaya akademik**; input penelitian boleh Bahasa Indonesia/English (terjemahkan konten input dengan benar tanpa mengubah makna).
5. **Human-in-the-loop** di setiap quality gate.
6. **Simpan semua artefak** sebagai file Markdown di folder kerja proyek.
7. Gunakan template & checklist sebagai kontrak output.
8. **Anti-plagiarisme**: overlap verbatim (≥7 kata EN) tidak boleh lolos.
9. **Mode harus terkunci sebelum ekstraksi** — jangan mencampur kriteria ekstraksi antar mode.

## Platform Note

Skill ini menggunakan format Agent Skills (SKILL.md) yang portabel ke:
- **OpenCode**: `~/.config/opencode/skills/academic-writing/`
- **Claude Code**: `~/.claude/skills/academic-writing/`
- Cross-platform (Codex, Cursor, Gemini, dll): salin direktori `academic-writing/` ke folder skills masing-masing.