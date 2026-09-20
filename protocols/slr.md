# Protocol — Mode SLR (Systematic Literature Review)

Mode default untuk *systematic review* kuantitatif dan kualitatif yang mengikuti alur PRISMA standar.

## Kapan Mode Ini Aktif

Pengguna meminta: *systematic review*, *meta-analisis*, *SLR*, kata kunci "PRISMA", *quantitative synthesis*, *evidence synthesis* kuantitatif, atau memilih **Mode SLR** pada Method Selection Router.

## Urutan Wajib

```text
1. Mode + standar pelaporan + framework RQ dikunci (GATE 0)   → framework_selection.md
2. Parameter inisialisasi (topik, bahasa, quartile, tahun, eligibility criteria)
3. Kata kunci pencarian diturunkan dari PICO/PICOS
4. PENCARIAN literatur (HANYA setelah 1–3 selesai)
5. Screening 2 reviewer + PRISMA flow + ekstraksi matrix 7-field
```

> Hasil pencarian SLR harus berfokus pada studi dengan ukuran efek/evidence yang bisa disintesis (kuantitatif) atau temuan kualitatif tematik — sesuaikan eligibility criteria di langkah 2.

## Framework Wajib (Bound)

| Aspek | Framework |
|-------|-----------|
| RQ | **PICO / PICOS** (kuantitatif); **PICo / SPIDER** (kualitatif/mixed) |
| Prosedur pencarian | Systematic Review Conduct (Cochrane/JBI-aligned) + PRISMA-P + 4-Phase PRISMA Flow |
| Reporting checklist | **PRISMA 2020** (+ PRISMA-S, + PRISMA-Abstracts) |
| Appraisal tools | RoB 2 / ROBINS-I / NOS / JBI CA — sesuai desain; AMSTAR 2; GRADE |

> Rujukan framework lengkap ada di `references/research-frameworks.md`.

## Extraction Matrix (7 Field Standar)

Gunakan matrix standar 7-field — detail di `references/literature-matrix.md` + template `templates/literature_matrix_template.md`:

| No | Authors/Title | Purpose | Method (Variables/Samples) | Theory Used | Novelty/Contribution | Future Studies | DOI/Penerbit & Scopus Quartile |

- Pisahkan ekstraksi **kuantitatif** (efek size/statistik → feed meta-analisis) dan **kualitatif** (tema → JBI/ENTREQ) bila studi campuran.
- Setiap baris wajib membawa status kutipan & DOI terverifikasi.

## Proses Screening (Wajib Dilaporkan)

1. Deduplikasi → catat jumlah unik.
2. Screening **title/abstract** oleh 2 reviewer independen + adjudikasi.
3. Screening **full-text** dengan alasan eksklusi.
4. Dokumentasikan jumlah tiap fase ke **PRISMA Flow** (Identification → Screening → Eligibility → Included).

## Sintesis

- Kuantitatif: meta-analisis (pooled effect, heterogeneity, subgroup, sensitivity), atau *narrative synthesis* bila tidak layak meta-analisis (SWiM).
- Kualitatif: sintesis tematik/deskriptif — **bukan** reciprocal translation (itu ke Mode Meta-Etnografi).

## Auto-Validation Checklist (Wajib di Akhir)

Jalankan checklist **PRISMA 2020 (27 item)** — item di `references/research-frameworks.md` §3A dan EQUATOR/prisma-statement.org — via `templates/reporting_checklist.md`:

- Setiap klaim yang membutuhkan rujukan bersitasi.
- Item checklist dijawab Ya / Tidak berlaku; item "Tidak" → rencana perbaikan.
- PRISMA flow terisi (+ PRISMA-S bila jurnal minta detail pencarian).
- Simpan hasil ke `reporting_checklist_result.md`.

## Quality Gate Khusus Mode

- [ ] Framework PICO/PICOS dipakai dan tercatat di `framework_selection.md`
- [ ] Matrix 7-field lengkap (atau "—" bila tidak tersedia)
- [ ] 2 reviewer screening + adjudikasi terdokumentasi
- [ ] PRISMA flow lengkap 4 fase dengan angka konsisten
- [ ] Check PRISMA 2020 lolos (0 item "Tidak" tanpa rencana)

## Output Mode

```text
literature_matrix.md            — matrix 7-field
prisma_flow.md                  — diagram/alur jumlah artikel
risk_of_bias_table.md           — hasil appraisal
framework_selection.md          — kontrak framework mode
reporting_checklist_result.md   — validasi PRISMA 2020
```

## Referensi Terkait

- `references/literature-search.md` — pencarian & filter Scopus Quartile
- `references/quality-gates.md` — gate mekanis + semantik + red-team
- `checklists/prisma_2020.md` — item PRISMA 2020 (fallback resmi: prisma-statement.org)