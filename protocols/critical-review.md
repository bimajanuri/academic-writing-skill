# Protocol — Mode Critical Review

Mode untuk *critical review / critical appraisal synthesis*: menilai dan mengkritisi studi dari sisi epistemologi, metodologi, dan bias perspektif — bukan sekadar merangkum.

## Kapan Mode Ini Aktif

Pengguna meminta: *critical review*, *critical appraisal*, *critique* atas literatur, kata kunci "epistemologi", "asumsi teoretis", "bias perspektif", atau memilih **Mode Critical** pada Method Selection Router.

> Catatan: Mode ini lintas-prosedur — dapat berdiri sendiri ATAU melengkapi mode lain sebagai lapisan appraisal.

## Urutan Wajib

```text
1. Mode + standar pelaporan (appraisal checklist) + RQ kritis dikunci (GATE 0) → framework_selection.md
2. Parameter inisialisasi (topik, bahasa, quartile, tahun, jenis paper yang diappraisal)
3. Kata kunci diturunkan dari topik + jenis studi target
4. PENCARIAN literatur (HANYA setelah 1–3 selesai)
5. Appraisal per studi (epistemologis/metodologis/bias) + sintesis ranking
```

> Target pencarian critical = paper yang **menyatakan metode & asumsi secara eksplisit** (dapat diappraisal). Prioritaskan ketersediaan full-text & transparansi metodologis.

## Framework Wajib (Bound)

| Aspek | Framework |
|-------|-----------|
| RQ | Disusun eksplisit (5W+1H / pertanyaan kritis) — fokus pada "dengan asumsi apa", "apa kekuatan", "apa yang tertutup" |
| Prosedur | Critical appraisal (CASP / JBI CA) + peer critique stance |
| Reporting checklist | Diadaptasi: checklist appraisal (tidak ada checklist EQUATOR tunggal, pakai SRQR/COREQ untuk kualitatif & STROBE untuk kuantitatif) |

## Extraction Matrix — Appraisal Kritis

Fokus ekstraksi adalah **asumsi, batasan, dan bias** (bukan metadata):

| No | Authors/Year/Jurnal/Q | Asumsi epistemologis (paradigma) | Kekuatan desain | Batasan metodologis | Bias perspektif / posisi | Temuan yang bisa dipercaya (confidence) |
|----|------------------------|----------------------------------|------------------|---------------------|--------------------------|-----------------------------------------|

Detail: `references/extraction-critical.md` + template `templates/extraction_critical.md`.

## Analisis (Engine Utama)

Tidak di-synthesize sebagai agregat; dilakukan **appraisal per studi** yang kemudian dibandingkan:

1. **Asumsi epistemologis:** paradigma (positivis / interpretif / kritis); asumsi ontologis & epistemologis yang terlihat dalam teks.
2. **Batasan metodologis:** sampling, validitas/reliabilitas (quant) dan trustworthiness (qual), transferabilitas.
3. **Bias perspektif:** posisi penulis, konflik kepentingan, lensa teoretis yang memengaruhi interpretasi.
4. **Sintesis appraisal:** ranking kepercayaan (high/medium/low) + temuan konsisten vs kontradiktif.

## Auto-Validation Checklist (Wajib di Akhir)

Gunakan `checklists/critical_review.md` (ALUR CLEAR — Critique Lenses for Evaluating And Rating) via `templates/reporting_checklist.md`:

Simpan ke `reporting_checklist_result.md`.

## Quality Gate Khusus Mode

- [ ] Setiap studi diappraisal dengan lensa epistemologis, metodologis, dan bias
- [ ] Tingkat kepercayaan temuan (conf) dirating, bukan asumsi
- [ ] Kritik bersifat konstruktif & berdasar bukti teks (bukan ad hominem)
- [ ] Checklist mode lolos (0 item "Tidak" tanpa rencana)

## Output Mode

```text
literature_matrix.md            — matrix appraisal kritis
appraisal_summary.md            — ranking kepercayaan per studi
critical_synthesis.md           — narasi kritik + temuan terpercaya
framework_selection.md          — kontrak framework
reporting_checklist_result.md   — validasi critical review
```

## Referensi Terkait

- `references/literature-search.md` — pencarian & filter Scopus Quartile
- `references/quality-gates.md` — gate mekanis + semantik + red-team