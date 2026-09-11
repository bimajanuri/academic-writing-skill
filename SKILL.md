---
name: academic-writing
description: |
  Menghasilkan konten akademik berkualitas tinggi (Bahasa Indonesia / English). Gunakan skill ini saat pengguna meminta: menulis paper atau artikel ilmiah, menyusun literature review, mencari dan mengekstrak referensi akademik, membuat outline/kerangka paper, format sitasi (APA/IEEE/MLA/Chicago/Vancouver), merevisi dan memoles draft, menghilangkan jejak AI (humanizer), konversi format output (Markdown/LaTeX/DOCX), atau menilai kualitas naskah sebelum submit. Trigger phrases: "tulis paper", "bantu riset", "cari referensi", "literatur", "jurnal Scopus", "gap analysis", "outline paper", "format sitasi", "revisi draft", "polish", "anti AI", "submit jurnal", "tugas akhir", "skripsi", "tesis", "disertasi", "systematic review". Covers a 6-stage pipeline: Explorasi → Perencanaan → Penulisan → Sitasi → Revisi → Output.
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
TAHAP 2: PERENCANAAN    → Research question + outline + alokasi kata + reviewer self-assessment
TAHAP 3: PENULISAN      → Section-by-section sesuai urutan wajib + claim-evidence map
TAHAP 4: SITASI         → Format sitasi + bibliography + validasi klaim-sitasi + cek DOI
TAHAP 5: REVISI         → Humanizer (25 pola) + gate mekanis + gate semantik + red-team review
TAHAP 6: OUTPUT         → Konversi MD/LaTeX/DOCX + pre-submission mechanical checks
```

Setiap tahap memiliki **quality gate** — tidak boleh lanjut sebelum lolos.

---

## TAHAP 1: EXPLORASI

> Load `references/literature-search.md` untuk detail pencarian.
> Load `references/literature-matrix.md` untuk detail ekstraksi metadata.

### Langkah 1.1 — Klarifikasi Topik
Tanyakan kepada pengguna (minimal):
1. Topik / ide penelitian
2. Jenis paper (literature review, research paper, systematic review)
3. Bahasa output (Indonesia / Inggris / campuran)
4. Target Scopus Quartile filter (opsional): **Q1, Q2, Q3, Q4, atau tanpa filter**
5. Rentang tahun (default: 5 tahun terakhir, bisa diubah)

### Langkah 1.2 — Pencarian Literatur dengan Filter Scopus Quartile
1. Gunakan sumber pencarian (lihat `references/literature-search.md`):
   - OpenAlex API (gratis, wajib dicoba dulu)
   - Semantic Scholar API
   - arXiv API (untuk preprint, opsional)
2. Terapkan filter **Scopus Quartile** jika diminta:
   - Verifikasi quartile jurnal via Scopus SJR (scimagojr.com) atau metadata API
   - Hanya paper dari jurnal dengan quartile sesuai yang masuk matrix
   - Jika tidak ada filter, semua boleh masuk tapi **tag quartile wajib dicantumkan**
3. Target volume: 15–40 paper relevan (relevansi skor ≥ 7/10)

### Langkah 1.3 — Ekstraksi Literature Matrix
Untuk setiap paper, ekstrak **7 field wajib** ke tabel:

| No | Authors/Title | Purpose | Method (Variables/Samples) | Theory Used | Novelty/Contribution | Future Studies | DOI/Penerbit & Scopus Quartile |
|----|--------------|---------|---------------------------|-------------|---------------------|----------------|-------------------------------|

**Sumber ekstraksi**: Abstract, Introduction, Method, Conclusion, dan Future Work dari paper. Jika field kosong di paper, tulis *"—"* (jangan mengarang).

Gunakan template `templates/literature_matrix_template.md`.

### Langkah 1.4 — Gap Analysis
1. Identifikasi 3–5 research gap berdasar matrix:
   - **Complete gaps**: belum ada yang meneliti
   - **Partial gaps**: ada tapi belum berkembang
   - **Controversy gaps**: ada temuan yang bertentangan
2. Setiap gap didukung minimal 3 sitasi dari matrix
3. Simpan dengan format: definisi (50–100 kata) + evidence + significance (High/Medium/Low) + feasibility

### Langkah 1.5 — Research Positioning Map
Buat ringkasan posisi topik pengguna relatif terhadap literatur yang ada:
- Apa yang sudah banyak diteliti?
- Bagian mana yang belum tersentuh?
- Di mana kontribusi pengguna bisa masuk?

### Output Tahap 1 (wajib disimpan sebagai file)
```
literature_matrix.md        — tabel matrix terstruktur
gap_analysis.md             — analisis celah riset + bukti
research_map.md             — peta posisi topik
```

### Quality Gate 1
- [ ] Matrix minimal 10 paper (atau sesuai kesepakatan awal)
- [ ] Semua 7 field terisi (atau tanda "—" bila tidak ada)
- [ ] Quartile Scopus tercantum
- [ ] Gap minimal 3 dengan evidence sitasi
- [ ] Pengguna setuju untuk lanjut (konfirmasi)

---

## TAHAP 2: PERENCANAAN

> Load `references/outline-builder.md` untuk detail.

### Langkah 2.1 — Research Question & Hipotesis
Dari Gap Analysis, rumuskan:
- Research question (1–3 pertanyaan utama)
- Hipotesis (jika empiris)
- Teori/kerangka konseptual yang akan digunakan (feed dari kolom Theory Used di matrix)

### Langkah 2.2 — Menentukan Jurnal/Platform Target (opsional)
Jika pengguna menyebut target jurnal, adopsi pendekatan journal-adapt:
1. Minta 5–8 paper dari jurnal tersebut (corpus)
2. Ekstrak pola: struktur, framing kontribusi, eksposisi method/results, cakupan discussion
3. Dokumentasikan sebagai style profile yang mengikat penulisan

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

### Output Tahap 2
```
paper_outline.md        — outline lengkap + alokasi kata
research_question.md     — RQ + hipotesis + kerangka teori
style_profile.md        — profil gaya jurnal target (jika ada)
```

### Quality Gate 2
- [ ] Outline selesai dengan alokasi kata
- [ ] Skor reviewer ≥ 28/35
- [ ] Topic sentences membentuk argumen koheren
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

### Langkah 4.1 — Pilih Gaya Sitasi
Tanya pengguna: APA, IEEE, MLA, Chicago, atau Vancouver (atau gaya jurnal target).

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

> Load `references/revision-guide.md` dan `references/quality-gates.md`.

### Layer 1 — Humanizer (Anti-Jejak AI)
Deteksi & perbaiki 25 pola AI writing (ringkasannya di `references/revision-guide.md`):
- Staging instead of stating (§1–5): not-X-but-Y, one-line closer, sayings, run-up, arguing with no one
- Rhythm by rule (§6–11) — triads, repeated openings, dashes, stacked qualifiers
- Inflation & borrowed authority (§12–18)
- Formatting by rule (§19–21)
- Leftovers from chat/draft (§22–25)

### Layer 2 — Gate Mekanis
Periksa via grep/pola:
- Em-dash (—) → ganti titik/koma/kolon
- Kalimat > 40 kata → pecah
- Passive voice → aktifkan
- Banned words: "Moreover", "Notably", "leveraging", "delve", "pivotal", dsb.
- Terminologi drift (konsep yang sama namanya berubah) → konsistenkan

### Layer 3 — Gate Semantik
- Define-before-use
- Claim-evidence alignment (semua klaim didukung)
- Coherence & flow (last sentence N → first sentence N+1)
- Honest positioning (tidak overclaim)
- Followability pembaca

### Layer 4 — Red-Team Review (Reviewer Independent)
1. Simulasi reviewer yang BELUM pernah membaca teks
2. Terapkan gate mekanis + semantik ulang dengan lensa fresh-reader
3. Kembalikan findings berperingkat: **CRITICAL / IMPORTANT / MINOR**
4. Iterasi sampai tidak ada CRITICAL/IMPORTANT yang tersisa

### Output Tahap 5
```
draft_revised.md         — draft final hasil revisi
humanizer_report.md      — pola ditemukan vs diperbaiki
red_team_findings.md     — temuan reviewer
revision_log.md          — log perubahan
```

### Quality Gate 5
- [ ] Skor humanizer: 0 critical AI tells tersisa
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

### Output Tahap 6
```
<paper_title>.md / .tex / .docx   — file final
pre_submission_checklist.md        — hasil pengecekan
revision_summary.md                — ringkasan keseluruhan
```

---

## Alur Pemakaian Cepat (Tanpa Full Pipeline)

Pengguna tidak selalu butuh pipeline penuh. Tangani request langsung:

| Permintaan | Action |
|-----------|--------|
| "Cari referensi tentang X" | Tahap 1 saja → Literature Matrix |
| "Buatkan outline paper X" | Tahap 1+2 → Matrix + Outline |
| "Tulis bagian metodologi" | Load section-writing, draft section tsb |
| "Format sitasi ini" | Tahap 4 saja |
| "Polis/revise draft ini" | Tahap 5 saja |
| "Konversi ke LaTeX/docx" | Tahap 6 saja |
| "Review draft ini" | Red-team protocol (Tahap 5 Layer 4) |
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

## Referensi Internal

| File | Gunakan untuk |
|------|---------------|
| [references/literature-search.md](references/literature-search.md) | Pencarian literatur + filter Scopus Quartile |
| [references/literature-matrix.md](references/literature-matrix.md) | Ekstraksi 7-field metadata per paper |
| [references/outline-builder.md](references/outline-builder.md) | Kerangka, RQ, alokasi kata, reviewer assessment |
| [references/section-writing.md](references/section-writing.md) | Panduan menulis per section |
| [references/citation-formatter.md](references/citation-formatter.md) | Format APA/IEEE/MLA/Chicago/Vancouver |
| [references/revision-guide.md](references/revision-guide.md) | Humanizer 25 pola + workflow revisi |
| [references/quality-gates.md](references/quality-gates.md) | Gate mekanis + semantik + red-team |
| [references/output-formatter.md](references/output-formatter.md) | Konversi MD/LaTeX/DOCX |
| [templates/paper_outline.md](templates/paper_outline.md) | Template kerangka paper |
| [templates/literature_matrix_template.md](templates/literature_matrix_template.md) | Template tabel literature matrix |
| [templates/section_templates/*](templates/section_templates/) | Template per section |
| [templates/citation_templates/*](templates/citation_templates/) | Template sitasi per gaya |
| [checklists/*](checklists/) | Checklist kualitas |
| [scripts/convert.sh](scripts/convert.sh) | Konversi format |

## Platform Note

Skill ini menggunakan format Agent Skills (SKILL.md) yang portabel ke:
- **OpenCode**: `~/.config/opencode/skills/academic-writing/`
- **Claude Code**: `~/.claude/skills/academic-writing/`
- Cross-platform (Codex, Cursor, Gemini, dll): salin direktori `academic-writing/` ke folder skills masing-masing.