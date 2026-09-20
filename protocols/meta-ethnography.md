# Protocol — Mode Meta-Etnografi (Qualitative Meta-Synthesis)

Mode untuk *meta-ethnography*: sintesis kualitatif interpretatif yang menghasilkan pemahaman tingkat baru dari studi-studi kualitatif primer.

## Kapan Mode Ini Aktif

Pengguna meminta: *meta-ethnography*, *meta-synthesis*, *qualitative synthesis*, kata kunci "eMERGe", "Noblit & Hare", "reciprocal translation", "constructs", "line-of-argument", atau memilih **Mode Meta-Etnografi** pada Method Selection Router.

## Urutan Wajib

```text
1. Mode + standar pelaporan (eMERGe) + framework RQ (PICo/SPIDER) dikunci (GATE 0) → framework_selection.md
2. Parameter inisialisasi (topik, bahasa, quartile, tahun, eligibility criteria STUDI KUALITATIF)
3. Kata kunci diturunkan dari fenomena minat (PICo/SPIDER)
4. PENCARIAN literatur (HANYA setelah 1–3 selesai)
5. Screening + seleksi studi kualitatif + ekstraksi 1st/2nd order constructs
```

> **Kalibrasi mode**: meta-etnografi hanya boleh menyeleksi **studi kualitatif interpretatif** (kaya data/constructs). Eksklusikan survei/eksperimen kuantitatif pada tahap eligibility — jika tidak, hasil sintesis tidak sah (bukan meta-etnografi).

## Framework Wajib (Bound)

| Aspek | Framework |
|-------|-----------|
| RQ | **PICo / SPIDER** (fenomena minat dalam konteks) |
| Prosedur | **7 langkah Noblit & Hare (1988)** |
| Reporting checklist | **eMERGe** (19 kriteria, France et al. 2019) |
| Appraisal | **eMERGe critical appraisal / CASP** (qualitative) — penilaian kualitas studi primer |

### 7 Langkah Noblit & Hare

```text
1. Getting started            — tentukan interest intelektual / fenomena
2. Deciding what is relevant  — pencarian & seleksi studi (kriteria inklusi)
3. Reading the studies        — baca penuh; catat metafor/konsep (1st & 2nd order)
4. Determining how studies are related  — bandingkan tema antar studi
5. Translating studies into one another — Reciprocal Translation (Paper A → Paper B → ...)
6. Synthesising translations  — proteksi konsep baru (3rd order) / line-of-argument
7. Expressing the synthesis   — tulis narasi sintesis
```

## Extraction Matrix — Constructs Kualitatif

**Pemisahan wajib antara 2 lapis data** (detail: `references/extraction-meta-ethnography.md` + template `templates/extraction_meta_ethnography.md`):

| No | Study (Author/Year/Jurnal/Q) | 1st Order Constructs | 2nd Order Constructs | Konteks (setting/populasi) | Konsep kunci penulis (metafora) | Kualitas (CASP/eMERGe) |
|----|------------------------------|----------------------|----------------------|----------------------------|--------------------------------|------------------------|

- **1st Order Constructs** = kutipan **asli partisipan** di paper sumber ("...") — verbatim, dengan tautan halaman/paragraf.
- **2nd Order Constructs** = **interpretasi penulis peneliti/pengarang** atas data partisipan (tema, konsep, teori yang diajukan penulis).
- **3rd Order Constructs** = konsep baru hasil sintesis **Anda** (bukan dari satu paper) — muncul di engine sintesis, bukan di ekstraksi.

## Sintesis — Reciprocal Translation Engine

Gunakan **`engines/reciprocal-translation.md`** secara wajib:

1. Bandingkan 2nd order constructs Paper A vs Paper B (paper pertama = "analog base").
2. Terjemahkan temuan paper berikutnya ke dalam konsep paper sebelumnya.
3. Identifikasi: **reciprocal** (tema saling mendukung), **refutational** (bertentangan), atau **line-of-argument** (komplementer membentuk keseluruhan).
4. Bina **3rd order constructs** yang melampaui studi individual.
5. Jangan pernah mencampur 1st order hasil sintesis dengan 2nd order milik penulis.

## Auto-Validation Checklist — eMERGe (Wajib di Akhir)

Gunakan `checklists/emerge.md` (19 kriteria) via `templates/reporting_checklist.md`:

- Kategori/phase eMERGe: Phase 1 Selecting meta-ethnography → Phase 2 Deciding what is relevant → Phase 3 Reading included studies → Phase 4 Determining how studies are related → Phase 5 Translating studies into one another → Phase 6 Synthesising translations → Phase 7 Expressing the synthesis → Phase 8 Reflecting on the process.
- Setiap kriteria dijawab (Ya/Tidak berlaku); "Tidak" → rencana perbaikan.
- Simpan ke `reporting_checklist_result.md`.

## Quality Gate Khusus Mode

- [ ] 7 langkah Noblit & Hare terdokumentasi langkah demi langkah
- [ ] 1st & 2nd order constructs diekstraksi terpisah dan tidak terbalik
- [ ] 3rd order constructs dihasilkan melalui Reciprocal Translation (bukan ringkasan)
- [ ] Reciprocal vs refutational vs line-of-argument diidentifikasi
- [ ] eMERGe 19 kriteria lolos (0 item "Tidak" tanpa rencana)

## Output Mode

```text
literature_matrix.md            — matrix constructs (1st/2nd order)
constructs_1st_2nd.md           — daftar construct terpisah per study
synthesis_translation.md        — hasil reciprocal translation + 3rd order
line_of_argument.md             — narasi sintesis (line-of-argument bila ada)
framework_selection.md          — kontrak framework PICo/SPIDER + Noblit & Hare
reporting_checklist_result.md   — validasi eMERGe
```

## Referensi Terkait

- `engines/reciprocal-translation.md` — engine inti mode ini
- `references/extraction-meta-ethnography.md` — panduan ekstraksi constructs
- `checklists/emerge.md` — 19 kriteria eMERGe