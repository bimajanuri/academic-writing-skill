---
name: academic-writing
description: |
  Menghasilkan konten akademik berkualitas tinggi (Bahasa Indonesia / English). Gunakan skill ini saat pengguna meminta: menulis paper atau artikel ilmiah, menyusun literature review, mencari dan mengekstrak referensi akademik, membuat outline/kerangka paper, memilih framework penelitian (PICO, PICo, PEO, PCC, SPIDER, SPICE, ECLIPSe, CIMO, Research Onion, PRISMA/PROSPERO, CONSORT, STROBE, COREQ, ENTREQ, dan lainnya), format sitasi (APA/IEEE/MLA/Turabian/Chicago/Vancouver/Harvard), merevisi dan memoles draft, menghilangkan jejak AI (humanizer), memeriksa tata bahasa/grammar (Bahasa Indonesia sesuai EYD/PUEBI dan English), memeriksa plagiarisme/similarity sebelum submit, konversi format output (Markdown/LaTeX/DOCX), atau menilai kualitas naskah sebelum submit. Trigger phrases: "tulis paper", "bantu riset", "cari referensi", "litang", "jurnal Scopus", "gap analysis", "outline paper", "framework penulisan", "pilih framework", "PICO", "PRISMA", "CONSORT", "STROBE", "reporting checklist", "format sitasi", "revisi draft", "polish", "anti AI", "cek grammar", "grammar check", "EYD", "PUEBI", "cek plagiarisme", "plagiarism check", "similarity", "submit jurnal", "tugas akhir", "skripsi", "tesis", "disertasi", "systematic review". Covers a 6-stage pipeline: Explorasi → Perencanaan → Penulisan → Sitasi → Revisi → Output.
---

# Academic Writing — Penulisan Akademik

Skill ini adalah pipeline end-to-end untuk menghasilkan konten akademik berkualitas tinggi. Berbahasa Indonesia dengan istilah teknis dalam Bahasa Inggris.

## Sumber Metodologi (Attribution)

Pipeline ini diadaptasi dan dikombinasikan dari metodologi terbuka berikut:
- **Prof. Peng Sida's open research notes** politik penulisan section — via [Master-cai/Research-Paper-Writing-Skills](https://github.com/Master-cai/Research-Paper-Writing-Skills)
- **SNL-UCSB paper-writing-skill** — pipeline 5 tahap, gaya audit ganda (mekanis + semantik), prinsip editing [SNL-UCSB/paper-writing-skill](https://github.com/SNL-UCSB/paper-writing-skill)
- **Humanizer 25 patterns** — deteksi & penghapusan jejak AI [blader/humanizer](https://github.com/blader/humanizer)
- **journal-adapt** — adaptasi korpus dari jurnal target [WantongC/journal-adapt-writing-skill](https://github.com/WantongC/journal-adapt-writing-skill)
- **Strategist quality gates** — penilaian reviewer 7 dimensi [lishix520/academic-paper-skills](https://github.com/lishix520/academic-paper-skills)
- **Literature triage matrix** — ekstraksi metadata terstruktur per paper (17-skill catalog: literature review, research design) [WenyuChiou/ai-research-skills](https://github.com/WenyuChiou/ai-research-skills)

Gunakan pendekatan di atas sebagai kerangka kerja; jangan menyalin teks dari korpus jurnal target secara verbatim.

## Pipeline 6 Tahap

```text
TAHAP 1: EXPLORASI      → Search literatur + filter Scopus Quartile + Literature Matrix + Gap Analysis + Research Map
TAHAP 2: PERENCANAAN    → Research question (dengan framework pilihan) + outline + alokasi kata + reviewer self-assessment
TAHAP 3: PENULISAN      → Section-by-section sesuai urutan wajib + claim-evidence map
TAHAP 4: SITASI         → Format sitasi + bibliography + validasi klaim-sitasi + cek DOI
TAHAP 5: REVISI         → Humanizer (25 pola) + grammar check (ID/EN) + gate mekanis + gate semantik + red-team review
TAHAP 6: OUTPUT         → Konversi MD/LaTeX/DOCX + grammar final + plagiarism check + pre-submission mechanical checks
```

Setiap tahap memiliki **quality gate** — tidak boleh lanjut sebelum lolos.

---

## TAHAP 1: EXPLORASI

> Load `references/literature-search.md` untuk detail pencarian.
> Load `references/literature-matrix.md` untuk detail ekstraksi metadata.
> Load `references/research-gap-mapping.md` untuk literature mapping & klasifikasi gap (Gap Matrix, anti pseudo-gap).

### Langkah 1.1 — Klarifikasi Topik
Tanyakan kepada pengguna (minimal):
1. Topik / ide penelitian
2. Jenis paper (literature review, research paper, systematic review)
3. Bahasa output (Indonesia / Inggris / campuran)
4. Target Scopus Quartile filter (opsional): **Q1, Q2, Q3, Q4, atau tanpa filter**
5. Rentang tahun (default: 5 tahun terakhir, bisa diubah)
6. **Framework yang dipilih** (opsional — lihat `references/research-frameworks.md`):
   - RQ framework (PICO, PICo, PEO, PCC, SPIDER, SPICE, ECLIPSe, CIMO, CoCoPop, 5W+1H, dll.)
   - Framework prosedur/tahapan riset (Research Onion, Empirical Cycle, Research Process Stages, PRISMA-P, Systematic Review Conduct, 4-Phase Flow)
   - Reporting & screening checklist (PRISMA 2020, CONSORT, STROBE, COREQ, ENTREQ, STARLITE, dll. + appraisal tools)
   - Jika pengguna tidak menyebut, usulkan default sesuai jenis paper (§4 `research-frameworks.md`) lalu **minta konfirmasi**
   - Simpan pilihan ke `framework_selection.md` (form: `templates/framework_selection.md`)

### Langkah 1.2 — Pencarian Literatur dengan Filter Scopus Quartile
1. Jika framework RQ sudah dipilih, **turunkan kata kunci dari elemen framework** (mis. P/I/C/O dari PICO) sebagai basis kombinasi kata kunci Round 1 (lihat `references/research-frameworks.md` §1).
2. Gunakan sumber pencarian (lihat `references/literature-search.md`):
   - OpenAlex API (gratis, wajib dicoba dulu)
   - Semantic Scholar API
   - Crossref API (verifikasi DOI/metadata & fallback pencarian)
   - DOAJ API (artikel/jurnal Open Access)
   - PubMed E-utilities (khusus biomedik)
   - arXiv API (untuk preprint, opsional)
3. Terapkan filter **Scopus Quartile** jika diminta:
   - Verifikasi quartile jurnal via Scopus SJR (scimagojr.com) atau metadata API
   - Hanya paper dari jurnal dengan quartile sesuai yang masuk matrix
   - Jika tidak ada filter, semua boleh masuk tapi **tag quartile wajib dicantumkan**
4. Untuk systematic review: terapkan **prosedur screening** sesuai framework (screening 2 reviewer independen, dedup, dan catat jumlah per fase PRISMA flow).
5. Target volume: 15–40 paper relevan (relevansi skor ≥ 7/10)

### Langkah 1.3 — Ekstraksi Literature Matrix
Untuk setiap paper, ekstrak **7 field wajib** ke tabel:

| No | Authors/Title | Purpose | Method (Variables/Samples) | Theory Used | Novelty/Contribution | Future Studies | DOI/Penerbit & Scopus Quartile |
|----|--------------|---------|---------------------------|-------------|---------------------|----------------|-------------------------------|

**Sumber ekstraksi**: Abstract, Introduction, Method, Conclusion, dan Future Work dari paper. Jika field kosong di paper, tulis *"—"* (jangan mengarang).

Gunakan template `templates/literature_matrix_template.md`.

### Langkah 1.4 — Gap Analysis (Gap Matrix)
Gunakan `references/research-gap-mapping.md` + template `templates/gap_matrix.md`:
1. **Literature mapping** — urutkan paper matrix dari oldest → newest; petakan klaim-klaim utama pada sumbu topik untuk melihat "district" yang padat vs kosong.
2. Isi **Gap Matrix** (baris = jenis gap, kolom = status & evidence):
   - **Theoretical gap** — teori tidak menjelaskan kasus/konteks tertentu
   - **Methodological gap** — metode/desain/measurement belum dipakai di konteks ini
   - **Contextual gap** — populasi/lokasi/waktu belum disentuh
   - **Inconsistency gap** — temuan bertentangan antar studi (controversy)
   - Status: completed / partial / empty, plus evidence (min. 3 sitasi dari matrix)
3. **Anti pseudo-gap** — coret gap yang bukan gap sejati: "belum banyak diteliti" (tanpa bukti), gap produk riset (pendekatan/buku, bukan pengetahuan), gap "perlu evaluasi lebih lanjut" tanpa spesifikasi, gap dari klaim tanpa sumber.
4. Pilih gap terkuat (High significance + feasible + align dengan data yang ada); simpan ke `gap_analysis.md` dalam format: definisi (50–100 kata) + evidence + significance (High/Medium/Low) + feasibility + jenis gap.

### Langkah 1.5 — Research Positioning Map
Buat `research_map.md`: ringkasan posisi topik relatif terhadap literatur (dua sumbu publikasi → kuadran):
- Kuadran 1: banyak diteliti + banyak publikasi → hindari klaim "menyeluruh"
- Kuadran 2: banyak publikasi tapi kesenjangan konseptual → peluang sintesis/inkonsistensi
- Kuadran 3: sedikit publikasi tapi ada tanda-tanda interest → peluang kontribusi dini
- Kuadran 4: hampir tidak tersentuh → verifikasi kembali (cek istilah sinonim yang beda keyword)
- Tentukan di kuadran mana kontribusi pengguna masuk, dan hubungkan ke Modul B (`references/journal-targeting.md`) untuk mengecek kesesuaian arena jurnal.

### Output Tahap 1 (wajib disimpan sebagai file)
```
literature_matrix.md        — tabel matrix terstruktur
gap_matrix.md               — gap matrix (4 jenis gap + status + evidence)
gap_analysis.md             — analisis celah riset + bukti (gap terpilih)
research_map.md             — peta posisi topik (kuadran)
```

### Quality Gate 1
- [ ] Matrix minimal 10 paper (atau sesuai kesepakatan awal)
- [ ] Semua 7 field terisi (atau tanda "—" bila tidak ada)
- [ ] Quartile Scopus tercantum
- [ ] Gap ≥ 3 dengan evidence sitasi; setiap gap punya jenis (teoretis/metodologis/kontekstual/inkonsistensi)
- [ ] 0 pseudo-gap lolos validasi (cek `references/research-gap-mapping.md` §3)
- [ ] Posisi pada Research Positioning Map ditentukan
- [ ] Pengguna setuju untuk lanjut (konfirmasi)

---

## TAHAP 2: PERENCANAAN

> Load `references/outline-builder.md` untuk detail.
> Load `references/journal-targeting.md` + `references/novelty-framing.md` untuk Modul B & A.

### Langkah 2.1 — Research Question & Hipotesis
Dari Gap Analysis, rumuskan RQ **menggunakan RQ framework yang dipilih** (`framework_selection.md` §1, detail di `references/research-frameworks.md` §1):
- Isi setiap elemen framework (mis. P/I/C/O untuk PICO) → gabung jadi RQ terstruktur
- Research question (1–3 pertanyaan utama)
- Hipotesis (jika empiris)
- Teori/kerangka konseptual yang akan digunakan (feed dari kolom Theory Used di matrix)
- **Validasi FINER** (Feasible, Interesting, Novel, Ethical, Relevant) sebelum RQ dikunci

### Langkah 2.2 — Menentukan Jurnal/Platform Target (Journal Targeting, Modul B)
Strategi lengkap di `references/journal-targeting.md`. Jika pengguna menyebut target jurnal:
1. **Pilih arena** — cocokkan posisi pada Research Map (Modul E) dengan perimeter publikasi jurnal (jurnal "rumah" vs "tamu")
2. **Cek kelayakan jurnal** — verifikasi indeks Scopus/WoS/DOAJ, publisher, kebijakan APC, proses review; **tandai risiko predator** (jangan hanya percaya klaim)
3. **Journal Positioning Blueprint** — minta 5–8 paper dari jurnal tersebut (corpus); ekstrak pola: struktur, framing kontribusi, eksposisi method/results, cakupan discussion → simpan `style_profile.md`
4. Bandingkan ≥ 2 kandidat di `templates/journal_comparison.md` (fit, prestige, APC, durasi review)
5. Turunkan **gaya sitasi** dari author guidelines jurnal target → rekam di `style_profile.md` (default jika tidak ada panduan: lihat Langkah 2.6)
6. Jika tidak ada target: tetap lakukan cek arena minimal 1 kandidat agar paper tidak "submit ke mana saja yang kebetulan"

### Langkah 2.3 — Penyusunan Outline
1. Struktur outline mengikuti template `templates/paper_outline.md`
2. Alokasi proporsi: Intro 15–20% | Isi 60–70% | Kesimpulan 10–15%
3. Setiap section memiliki klaim utama
4. Buat **topic sentences** untuk setiap paragraf DULU, verifikasi koherensi argumen, baru lanjut

### Langkah 2.4 — Reviewer Self-Assessment (7 Dimensi, 35 poin)
Nilai outline sebagai reviewer, skor 1–5 per dimensi:

| Dimensi | Poin |
|---------|------|
| Kejelasan argumen | 5 |
| Kelengkapan argumentasi | 5 |
| Dukungan literatur | 5 |
| Kejelasan metodologi | 5 |
| Ekspresi kebaruan | 5 |
| Organisasi | 5 |
| Kesesuaian target | 5 |

**Ambang**: ≥ 28/35 untuk lanjut menulis. Jika kurang, revisi outline.

### Langkah 2.5 — Framework Compliance Plan
Terapkan framework yang dipilih ke outline (dari `framework_selection.md`):
1. **Prosedur riset** (§2 framework): rantai langkah metodologi yang akan dilaporkan → petakan ke sub-bab Methodology (mis. Research Onion: philosophy→approach→strategy→choices→horizon→techniques).
2. **Reporting checklist** (§3): ambil item resmi checklist (EQUATOR/prisma-statement.org/dll.), lalu tandai di section mana tiap item akan dipenuhi. Simpan peta ini.
3. Untuk evidence synthesis: rencanakan artefak **PRISMA flow** + tabel **risk-of-bias** + laporan kelengkapan pencarian (PRISMA-S).
4. Jika jurnal target mewajibkan checklist, cantumkan nama/versi persisnya di `framework_selection.md`.

### Langkah 2.6 — Pemilihan Gaya Sitasi
Tentukan GAYA SITASI di tahap perencanaan ini (sebelum menulis), lalu format penuh di Tahap 4:
1. Pilih dari opsi: **APA 7, MLA 9, Turabian, Vancouver, Harvard, Chicago** (+ **IEEE** untuk bidang teknik)
2. Jika target jurnal sudah ada → ikuti gaya yang diminta author guidelines (rekam di `style_profile.md`)
3. Jika belum → rekomendasi bidang (lihat `references/citation-formatter.md` §1) dan **minta konfirmasi pengguna**
4. Catat pilihan di `framework_selection.md` / `paper_outline.md` agar penguncian gaya konsisten sampai Tahap 4

### Langkah 2.7 — Novelty & Contribution Framing
Rumuskan kontribusi paper SECARA TERTULIS di tahap perencanaan (detail di `references/novelty-framing.md`):
1. Petakan gap terpilih (Tahap 1) → bentuk novelty yang jujur (kombinasi baru / konteks baru / metode baru / temuan baru / reframing)
2. Tulis **contribution statement** (backbone 1 kalimat + 2–4 bullet claim-first) di `templates/contribution_statement.md`
3. Pastikan setiap bullet kontribusi punya **bukti yang direncanakan** (peta claim → evidence)
4. Validasi: bukan incremental patching, tidak overclaim, sesuai scope arena jurnal (Modul B)
5. Kontribusi ini menjadi sumber section "Kontribusi" intro (ditulis ulang di Tahap 3) dan paragraf cover letter

### Output Tahap 2
```
paper_outline.md             — outline lengkap + alokasi kata
research_question.md          — RQ + hipotesis + kerangka teori
framework_selection.md        — kontrak framework (RQ, prosedur, reporting checklist) + gaya sitasi terpilih
framework_compliance.md       — peta item checklist → lokasi section + rencana artefak prosedur
style_profile.md             — profil gaya jurnal target (jika ada)
contribution_statement.md     — novelty + contribution statement + peta bukti (Modul A)
```

### Quality Gate 2
- [ ] Outline selesai dengan alokasi kata
- [ ] RQ dirumuskan sesuai framework pilihan & lolos FINER
- [ ] Framework compliance plan lengkap (item checklist punya lokasi section)
- [ ] Skor reviewer ≥ 28/35
- [ ] Topic sentences membentuk argumen koheren
- [ ] Gaya sitasi terpilih (dari Langkah 2.6) direkam & disetujui
- [ ] Contribution statement valid (0 overclaim, semua bullet punya bukti terencana)
- [ ] Pengguna setujui outline

---

## TAHAP 3: PENULISAN

> Load `references/section-writing.md` untuk detail per section.

### Urutan Wajib Menulis
```
1.  Draft 0 Introduction   (kerangka disposable — framing guardrails)
2.  Literature Review       (feed langsung dari Literature Matrix)
3.  Methodology
4.  Results & Discussion
5.  Conclusion
6.  Final Introduction      (ditulis ULANG dari nol setelah hasil nyata)
7.  Abstract                (paling terakhir)
```
Introduction ditulis **dua kali** — Draft 0 untuk guardrails, Final setelah semua bukti jelas.

**Metodologi mengikuti framework prosedur terpilih** (`framework_selection.md` §2). Untuk evidence synthesis wajib menampilkan: alur **PRISMA flow**, kriteria eligibilitas dari elemen RQ framework, **tabel risk-of-bias**, dan strategi pencarian lengkap (PRISMA-S).

### Proses per Section
1. Tulis topic sentences dulu → baca berurutan → cek alur argumen
2. Jika koheren, isi full paragraphs (4–6 kalimat per paragraf)
3. Satu paragraf, satu pesan (pertama kalimat = pesan utama)
4. Hubungan antar kalimat eksplisit (sebab, kontras, konsekuensi, elaborasi)
5. Jalankan checklists yang relevan (`checklists/post_draft.md`)
6. Mapping setiap klaim besar ke evidence

### Prinsip Gaya (Non-Negotiable)
- Mean sentence length: ~21 kata; maksimum 40 kata
- Aktif voice — tanpa pasif ("We show" bukan "It is shown")
- Zero hedging untuk hasil ("meningkat 13×" bukan "dapat meningkatkan")
- Tanpa filler adjective: "novel", "significant", "state-of-the-art", "robust" → ganti angka spesifik atau hapus
- Named over vague: setiap konsep/mekanisme/metrik punya nama spesifik
- Headings adalah klaim, bukan topik ("Efek X menurunkan error 13×" bukan "Experimental Results")
- Interpretasi figur, bukan sekadar rujuk ("Gambar 3 menunjukkan X, mengonfirmasi Y")

### Claim-Evidence Map
Setiap klaim besar wajib punya peta:
```
Claim: ...
Evidence: ...
Status: supported / needs evidence / unsupported
```

### Output Tahap 3
```
draft_<section>.md      — draft per section
claim_evidence_map.md   — peta klaim-evidence seluruh paper
```

### Quality Gate 3
- [ ] Semua section ditulis sesuai urutan wajib
- [ ] Introduction final ditulis ulang (bukan edit Draft 0)
- [ ] Abstract terakhir
- [ ] Claim-evidence map lengkap untuk klaim-klaim besar
- [ ] Section checklist lolos

---

## TAHAP 4: SITASI & REFERENSI

> Load `references/citation-formatter.md` untuk detail.

### Langkah 4.1 — Konfirmasi Gaya Sitasi
Tanya pengguna: **APA 7, MLA 9, Turabian, Vancouver, Harvard, Chicago** (atau **IEEE** untuk teknik) — atau gaya jurnal target dari `style_profile.md`. Gunakan pilihan di `framework_selection.md` (Langkah 2.6) sebagai default; konfirmasi ulang bila berubah.

### Langkah 4.2 — Format Semua Sitasi
1. In-text citation sesuai gaya
2. Bibliography/daftar pustaka lengkap
3. Data dari kolom DOI/Penerbit di Literature Matrix

### Langkah 4.3 — Validasi
1. Setiap klaim yang membutuhkan rujukan HARUS punya sitasi
2. Setiap sitasi dalam teks muncul di bibliography (dan sebaliknya)
3. DOI/URL divalidasi (sebutkan yang tidak aktif)
4. Cek "et al." dan "&" sesuai gaya

### Output Tahap 4
```
draft_with_citations.md  — draft dengan sitasi terpasang
bibliography.md          — daftar pustaka terformat
citation_validation.md   — laporan validasi
```

### Quality Gate 4
- [ ] Semua klaim-klaim besar bersitasi
- [ ] In-text ↔ bibliography konsisten 1:1
- [ ] Gaya sitasi konsisten
- [ ] DOI tercantum (gunakan dari matrix)

---

## TAHAP 5: REVISI & QUALITY CONTROL

> Load `references/revision-guide.md`, `references/grammar-check.md`, dan `references/quality-gates.md`.

### Layer 1 — Humanizer (Anti-Jejak AI)
Deteksi & perbaiki 25 pola AI writing (ringkasannya di `references/revision-guide.md`):
- Staging instead of stating (§1–5): not-X-but-Y, one-line closer, sayings, run-up, arguing with no one
- Rhythm by rule (§6–11) — triads, repeated openings, dashes, stacked qualifiers
- Inflation & borrowed authority (§12–18)
- Formatting by rule (§19–21)
- Leftovers from chat/draft (§22–25)

### Layer 2 — Grammar Check (Bahasa Indonesia / English)
Periksa kebenaran linguistik sesuai bahasa naskah (kanal terpisah dari humanizer — detail di `references/grammar-check.md`):
- Indonesia: EYD (Permendikbudristek 18/2022), kata baku KBBI, `di/ke` lokasi vs awalan, partikel, kapitalisasi, serial comma (tidak ada), kalimat efektif
- English: subject–verb agreement, articles, tense, prepositions, serial comma (wajib), comma splice, apostrophe, US/UK konsisten
- Jalankan tools (LanguageTool/Grammarly) bila tersedia; VERIFIKASI saran secara manual
- Simpan laporan ke `grammar_report.md`; gunakan `checklists/grammar_check.md`

### Layer 3 — Gate Mekanis
Periksa via grep/pola:
- Em-dash (—) → ganti titik/koma/kolon
- Kalimat > 40 kata → pecah
- Passive voice → aktifkan
- Banned words: "Moreover", "Notably", "leveraging", "delve", "pivotal", dsb.
- Terminologi drift (konsep yang sama namanya berubah) → konsistenkan

### Layer 4 — Gate Semantik
- Define-before-use
- Claim-evidence alignment (semua klaim didukung)
- Coherence & flow (last sentence N → first sentence N+1)
- Honest positioning (tidak overclaim)
- Followability pembaca

### Layer 5 — Red-Team Review (Reviewer Independent)
1. Simulasi reviewer yang BELUM pernah membaca teks
2. Terapkan gate mekanis + semantik ulang dengan lensa fresh-reader
3. Kembalikan findings berperingkat: **CRITICAL / IMPORTANT / MINOR**
4. Iterasi sampai tidak ada CRITICAL/IMPORTANT yang tersisa
5. Klasifikasikan temuan seperti tipe komentar reviewer (Modul C `references/reviewer-response.md` §1) agar draft sudah "tidak rawan" saat direview sungguhan

### Output Tahap 5
```
draft_revised.md         — draft final hasil revisi
humanizer_report.md      — pola ditemukan vs diperbaiki
grammar_report.md        — hasil grammar check (temuan per kategori bahasa)
red_team_findings.md     — temuan reviewer
revision_log.md          — log perubahan
```

### Quality Gate 5
- [ ] Skor humanizer: 0 critical AI tells tersisa
- [ ] Grammar (ID/EN): 0 kesalahan kaidah yang mengubah makna; sisa item ditandai untuk pengguna
- [ ] Gate mekanis: 0 pelanggaran (dengan bukti grep)
- [ ] Gate semantik: semua klaim supported
- [ ] Red-team: tidak ada CRITICAL/IMPORTANT tersisa

---

## TAHAP 6: OUTPUT & KONVERSI

> Load `references/output-formatter.md` untuk detail.

### Langkah 6.1 — Format Final
1. Terapkan template format sesuai gaya akademik (IMRaD/Harvard single format)
2. Ensure heading consistency, numbering, fig/table labels

### Langkah 6.2 — Konversi Format
- **Markdown** (.md): default output
- **LaTeX** (.tex): langsung ke template LaTeX dari references
- **DOCX** (.docx): via pandoc (jika tersedia) atau berikan instruksi

### Langkah 6.3 — Pre-Submission Mechanical Checks
- Word/page count vs target
- Broken references (LaTeX `[?]` atau `??`)
- Konsistensi istilah & heading
- Tabel/figur diberi label & dirujuk dalam teks
- (LaTeX) font embedded, anonimisasi jika double-blind
- **Grammar final**: jalankan ulang `checklists/grammar_check.md` pada versi final (ID/EN)
- **Plagiarism & similarity**: jalankan `checklists/plagiarism_check.md` — overlap verbatim, kutipan, parafrase, self-plagiarism (detail `references/plagiarism-check.md`); simpan ke `plagiarism_report.md`
- **Reporting checklist**: jalankan checklist terpilih dari `framework_selection.md` §3 via `templates/reporting_checklist.md` — setiap item Ya (atau Tidak berlaku), dan tidak boleh ada item "Tidak" tanpa rencana perbaikan

### Langkah 6.4 — Final Journal Fit & Cover Letter (Modul B)
Validasi ulang target sesaat sebelum submit (detail `references/journal-targeting.md`):
1. **Fit re-check**: posisi paper (mungkin bergeser saat penulisan) vs scope statement jurnal target; jika bergeser jauh, pertimbangkan ganti arena
2. **Re-verifikasi jurnal**: quartile & indeks dicek ulang hari ini, bukan bulan lalu; pastikan tidak terindikasi predator
3. **Self-assessment acceptance** (7 dimensi reviewer jurnal tsb): ≥ 28/35 → lanjut; 21–27 → perbaiki elemen lemah; < 21 → turunkan arena
4. **Cover letter** via `templates/cover_letter.md` — kontribusi mengikuti `contribution_statement.md` final, kutip scope statement resmi jurnal
5. Konfirmasi dokumen pelengkap: ORCID, data availability, reporting checklist (Modul framework)

### Output Tahap 6
```
<paper_title>.md / .tex / .docx   — file final
reporting_checklist_result.md      — hasil pemetaan checklist pelaporan (jika framework dipilih)
plagiarism_report.md               — hasil check plagiarisme (ID/EN)
grammar_report.md                  — laporan grammar final (jika dijalankan ulang)
pre_submission_checklist.md        — hasil pengecekan
journal_comparison.md              — keputusan jurnal final (jika alternatif dibandingkan)
cover_letter.md                    — cover letter siap kirim (jika diminta)
revision_summary.md                — ringkasan keseluruhan
```

### Quality Gate 6
- [ ] Semua gate 1–5 terpenuhi pada versi final
- [ ] Grammar & plagiarism report final bersih (0 item kritis)
- [ ] Jurnal target re-verified (quartile/indeks, cek tanggal hari ini)
- [ ] Self-assessment acceptance ≥ 28/35 untuk jurnal target
- [ ] Fit dengan scope statement jurnal terkonfirmasi
- [ ] Pengguna menyetujui versi final & menu submit

---

## PASCA SUBMISI: REVIEWER RESPONSE & REJECTION HANDLING (Modul C)

> Load `references/reviewer-response.md` saat surat editor tiba; template `templates/response_to_reviewer.md`.

1. **Klasifikasi keputusan**: desk reject / minor / major / reject (lihat decision path di referensi)
2. **Minor revision**: patuhi semua poin; kerjakan; jangan debat poin minor
3. **Major revision**: pisahkan komentar setuju / patuh sebagian / tolak dengan alasan kuat; prioritas komentar yang menyentuh klaim inti
4. **Tulis response**: surat ke editor (1 halaman, ringkasan) → point-by-point semua komentar; setiap respons berisi acknowledgment + perubahan (lokasi persis) + bukti
5. **Rejection**: gunakan decision path — kirim ke jurnal lain yang lebih cocok (Modul B), jangan daur ulang naskah tanpa perubahan substansi
6. Jika kontribusi berubah selama revisi, **perbarui** `contribution_statement.md` & klaim di naskah agar sinkron
7. Output: `response_to_reviewer.md`, `revision_log.md`, `decision_log.md`

---

## Alur Pemakaian Cepat (Tanpa Full Pipeline)

Pengguna tidak selalu butuh pipeline penuh. Tangani request langsung:

| Permintaan | Action |
|-----------|--------|
| "Pilih/dapatkan framework penelitian" | Load `references/research-frameworks.md`; isi `templates/framework_selection.md`; lalu terapkan ke RQ/outline |
| "Cari referensi tentang X" | Tahap 1 saja → Literature Matrix |
| "Buatkan outline paper X" | Tahap 1+2 → Matrix + Outline |
| "Tulis bagian metodologi" | Load section-writing, draft section tsb |
| "Format sitasi ini" | Tahap 4 saja |
| "Polis/revise draft ini" | Tahap 5 saja |
| "Cek grammar/tata bahasa draft ini" (ID/EN) | Tahap 5 Layer 2 (grammar check) |
| "Cek plagiarisme/similarity sebelum submit" | Tahap 6 (plagiarism check) |
| "Pilih/mana jurnal untuk paper ini" | Tahap 2 Langkah 2.2 (Modul B) → `journal_comparison.md`; final di Tahap 6.4 |
| "Buatkan cover letter" | Tahap 6 Langkah 6.4 → `templates/cover_letter.md` |
| "Tanggapi komentar reviewer" | Pasca submisi (Modul C) → `references/reviewer-response.md` + `templates/response_to_reviewer.md` |
| "Naskah saya ditolak, bagaimana?" | Decision path (Modul C) → analisis alasan + re-target jurnal (Modul B) |
| "Konversi ke LaTeX/docx" | Tahap 6 saja |
| "Review draft ini" | Red-team protocol (Tahap 5 Layer 5) |
| "Plan paper dari nol" | Full pipeline Tahap 1–6 |

Minta konfirmasi pengguna sebelum menjalankan pipeline penuh jika konteks tidak jelas.

## Aturan Penting (Selalu Berlaku)

1. **Jangan mengarang referensi.** Verifikasi setiap paper bahwa benar-benar ada (DOI, penerbit, tahun). Kalau ragu, tandai "UNVERIFIED — cek manual".
2. **Jangan mengarang data/fakta.** Jika data studi tidak diberikan, tanyakan atau tulis placeholder `[DATA]`.
3. **Jangan menyalin teks corpus JURNAL verbatim.** Gunakan sebagai model struktur, bukan sumber kalimat (kecuali kutipan langsung yang diindikasikan dengan benar).
4. **Bahasa**: ikuti preferensi pengguna (Indonesia/Inggris/bilingual). Istilah teknis dibiarkan Inggris.
5. **Human-in-the-loop** di setiap quality gate — AI mengusulkan, manusia memutuskan.
6. **Simpan semua artefak** sebagai file Markdown di folder kerja proyek pengguna, jangan hanya di chat.
7. Gunakan template dari `templates/` dan checklist dari `checklists/` sebagai kontrak output.
8. **Anti-plagiarisme**: kalimat dari sumber wajib dikutip (tanda kutip + sitasi) atau diparafrase + sitasi; overlap verbatim (≥ 7 kata EN / ≥ 6 kata ID) tidak boleh lolos ke submission. Lapor temuan ke pengguna sebelum memperbaiki.

## Referensi Internal

| File | Gunakan untuk |
|------|---------------|
| [references/literature-search.md](references/literature-search.md) | Pencarian literatur + filter Scopus Quartile |
| [references/literature-matrix.md](references/literature-matrix.md) | Ekstraksi 7-field metadata per paper |
| [references/research-gap-mapping.md](references/research-gap-mapping.md) | Literature mapping, Gap Matrix 4 jenis gap, anti pseudo-gap, Research Map |
| [references/novelty-framing.md](references/novelty-framing.md) | Gap→novelty, 5 bentuk novelty, contribution statement, validasi kontribusi |
| [references/journal-targeting.md](references/journal-targeting.md) | Arena jurnal, anti-predator, journal fit, self-assessment acceptance, cover letter |
| [references/reviewer-response.md](references/reviewer-response.md) | Tipe komentar reviewer, minor/major strategy, response structure, rejection decision path |
| [references/research-frameworks.md](references/research-frameworks.md) | Katalog framework RQ, prosedur riset, dan reporting/screening checklist |
| [references/outline-builder.md](references/outline-builder.md) | Kerangka, RQ, alokasi kata, reviewer assessment |
| [references/section-writing.md](references/section-writing.md) | Panduan menulis per section |
| [references/citation-formatter.md](references/citation-formatter.md) | Format APA/IEEE/MLA/Turabian/Chicago/Vancouver/Harvard |
| [references/revision-guide.md](references/revision-guide.md) | Humanizer 25 pola + workflow revisi |
| [references/grammar-check.md](references/grammar-check.md) | Grammar & mekanika bahasa (Indonesia/EYD & English) |
| [references/plagiarism-check.md](references/plagiarism-check.md) | Deteksi plagiarisme & integritas sitasi |
| [references/quality-gates.md](references/quality-gates.md) | Gate mekanis + semantik + red-team |
| [references/output-formatter.md](references/output-formatter.md) | Konversi MD/LaTeX/DOCX |
| [templates/paper_outline.md](templates/paper_outline.md) | Template kerangka paper |
| [templates/literature_matrix_template.md](templates/literature_matrix_template.md) | Template tabel literature matrix |
| [templates/gap_matrix.md](templates/gap_matrix.md) | Template Gap Matrix (4 jenis gap + status + evidence) |
| [templates/contribution_statement.md](templates/contribution_statement.md) | Template novelty + contribution statement + peta bukti |
| [templates/cover_letter.md](templates/cover_letter.md) | Template cover letter submisi jurnal |
| [templates/journal_comparison.md](templates/journal_comparison.md) | Template perbandingan jurnal kandidat |
| [templates/response_to_reviewer.md](templates/response_to_reviewer.md) | Template surat editor + point-by-point response |
| [templates/framework_selection.md](templates/framework_selection.md) | Form pilihan framework (RQ, prosedur, reporting) |
| [templates/reporting_checklist.md](templates/reporting_checklist.md) | Template pemetaan item reporting checklist |
| [templates/section_templates/*](templates/section_templates/) | Template per section |
| [templates/citation_templates/*](templates/citation_templates/) | Template sitasi per gaya |
| [checklists/*](checklists/) | Checklist kualitas |
| [scripts/convert.sh](scripts/convert.sh) | Konversi format |

## Platform Note

Skill ini menggunakan format Agent Skills (SKILL.md) yang portabel ke:
- **OpenCode**: `~/.config/opencode/skills/academic-writing/`
- **Claude Code**: `~/.claude/skills/academic-writing/`
- Cross-platform (Codex, Cursor, Gemini, dll): salin direktori `academic-writing/` ke folder skills masing-masing.