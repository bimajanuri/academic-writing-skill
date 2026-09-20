# Protocol — Mode Integrative Review

Mode untuk *integrative review*: mencakup studi kualitatif DAN kuantitatif (survei, eksperimental, dll.) dalam satu review untuk menghasilkan pemahaman komprehensif.

## Kapan Mode Ini Aktif

Pengguna meminta: *integrative review*, review campuran (multi-metode) pada topik yang sama, kata kunci "Whittemore", "Knafl", atau memilih **Mode Integrative** pada Method Selection Router.

## Urutan Wajib

```text
1. Mode + standar pelaporan (Whittemore & Knafl) + framework RQ dikunci (GATE 0) → framework_selection.md
2. Parameter inisialisasi (topik, bahasa, quartile, tahun, eligibility criteria meliputi qual + quant)
3. Kata kunci dirancang untuk menjaring studi KUALITATIF DAN KUANTITATIF pada isu sama
4. PENCARIAN literatur (HANYA setelah 1–3 selesai; ≥ 3 database)
5. Data evaluation + ekstraksi matrix mixed (QUAL & QUANT terpisah) + sintesis 5-tahap W&K
```

> Kriteria inklusi integrative TIDAK boleh hanya kualitatif atau hanya kuantitatif — mode ini butuh kedua jenis data agar integrasi convergent sah.

## Framework Wajib (Bound)

| Aspek | Framework |
|-------|-----------|
| RQ | Pertanyaan luas; kembangkan dari **PICO/PICo/CCD** tergantung inti pertanyaan (campuran boleh) |
| Metodologi analisis | **Whittemore & Knafl (2005) — 5 tahap: Problem Identification → Literature Search → Data Evaluation → Data Analysis → Presentation** |
| Reporting checklist | Laporan mengikuti kaidah kualitas review campuran (gabungan PRISMA/SWiM untuk penerapan) |

## Extraction Matrix — Data Campuran (Qual + Quant)

Ekstraksi memisahkan **τipe data** agar bisa di-synthesize dengan analisis deduktif/induktif:

| No | Authors/Year/Jurnal/Q | Jenis data (Kual/Kuant/Mixed) | Desain & Sample | Temuan (qual: tema; quant: efek) | Konteks | Kualitas appraisal |
|----|------------------------|-------------------------------|-----------------|----------------------------------|---------|-------------------|

Detail: `references/extraction-integrative.md` + template `templates/extraction_integrative.md`.

## Sintesis — Metode Whittemore & Knafl (5 Tahap)

1. **Problem identification** — rumuskan pertanyaan jelas & berikan justifikasi pentingnya.
2. **Literature search** — pencarian eksplisit di ≥ 3 database + manajemen duplikat.
3. **Data evaluation** — kategorisasi studi berdasarkan kualitas (bukan seragam; data berkualitas rendah dieliminasi/berlabel).
4. **Data analysis** — 4 langkah inti:
   - **Data reduction** — ekstraksi data dari tiap studi ke kode/tema.
   - **Data display** — susun kode/tema dalam matriks (per studi × per tema).
   - **Data comparison** — pola, hubungan, perbedaan antar studi.
   - **Conclusion drawing & verification** — simpulan diuji balik data.
5. **Presentation** — narasikan temuan dengan tabel/diagram pendukung.

> Metode ini tidak menuntut jenis sintesis tunggal: gunakan **tematik induktif** untuk temuan kualitatif, dan integrasikan dengan hasil kuantitatif melalui pembahasan konvergen (convergent synthesis).

## Auto-Validation Checklist (Wajib di Akhir)

Gunakan `checklists/whittemore_knafl.md` (CHECK per tahap) via `templates/reporting_checklist.md`:

- Problem identification jelas (RQ, signifikansi).
- Literature search lengkap: database, terminologi, rentang tahun, kriteria.
- Data evaluation: kriteria kualitas & keputusan inklusi.
- Data analysis: bukti reduksi, display, comparison, verification.
- Presentation: temuan terintegrasi bukan sekadar daftar abstract.
- Simpan ke `reporting_checklist_result.md`.

## Quality Gate Khusus Mode

- [ ] 5 tahap Whittemore & Knafl terdokumentasi
- [ ] Data kualitatif di-reduksi ke tema, data kuantitatif di-ringkas efek/temuan
- [ ] Matriks display (per studi × per tema) tersedia
- [ ] Integrasi konvergen: diskusi menjelaskan hubungan data qual & quant
- [ ] Checklist mode lolos (0 item "Tidak" tanpa rencana)

## Output Mode

```text
literature_matrix.md            — matrix data campuran
data_display_matrix.md          — matriks reduksi/display
integrative_synthesis.md        — narasi integratif
framework_selection.md          — kontrak framework
reporting_checklist_result.md   — validasi Whittemore & Knafl
```

## Referensi Terkait

- `references/literature-search.md` — pencarian & filter Scopus Quartile
- `references/quality-gates.md` — gate mekanis + semantik + red-team
- `checklists/whittemore_knafl.md` — checklist 5 tahap