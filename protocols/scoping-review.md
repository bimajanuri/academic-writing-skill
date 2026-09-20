# Protocol — Mode Scoping Review

Mode untuk *scoping review*: memetakan luas literatur, konsep, dan jenis bukti di suatu bidang — menilai ruang lingkup, bukan kualitas efek.

## Kapan Mode Ini Aktif

Pengguna meminta: *scoping review*, *scope the evidence*, *pemetaan literatur*, kata kunci "PRISMA-ScR", "PCC", "JBI", atau memilih **Mode Scoping** pada Method Selection Router.

## Urutan Wajib

```text
1. Mode + standar pelaporan (PRISMA-ScR) + framework PCC dikunci (GATE 0) → framework_selection.md
2. Parameter inisialisasi (topik, bahasa, quartile, tahun, eligibility criteria Lebar untuk scopING)
3. Kata kunci diturunkan dari elemen PCC (Population, Concept, Context)
4. PENCARIAN literatur (HANYA setelah 1–3 selesai)
5. Screening + dedup + PRISMA flow + ekstraksi matrix PCC
```

> Target pencarian scoping = studi yang **memetakan konsep/konteks/metodologi secara luas**; volume boleh lebih besar. Jangan membatasi ke studi efek (contoh: jangan filter hanya RCT untuk scoping jika pertanyaan pemetaan konsep membutuhkan semua desain).

## Framework Wajib (Bound)

| Aspek | Framework |
|-------|-----------|
| RQ | **PCC — Population, Concept, Context** |
| Prosedur | JBI Manual for Evidence Synthesis (scoping review chapter) + 4-Phase Flow |
| Reporting checklist | **PRISMA-ScR** (22 item, Tricco et al. 2018) |
| Appraisal | Tidak wajib (banyak scoping tidak menilai kualitas); bila dilakukan, catat sebagai item opsional PRISMA-ScR |

## Extraction Matrix Khusus Scoping

Berbeda dari 7-field SLR. Fokus ekstraksi adalah **pemetaan**, bukan evaluasi efek:

| No | Authors/Year | Populasi (P) | Konsep (C) yang dikaji | Konteks (C): geografis/lokasi | Jenis Metodologi/Desain | Temuan utama (summary) | Gap/arah riset | DOI/Penerbit & Quartile |

Detail ekstraksi: `references/extraction-scoping.md` + template `templates/extraction_scoping.md`.

## Proses Screening

1. Deduplikasi; catat jumlah.
2. Screening title/abstract (2 reviewer, adjudikasi bila perlu).
3. Full-text review — catat karakteristik tiap studi.
4. PRISMA flow dokumentasi (mitha scoping: fase included di joint, appraisal optional).

## Sintesis — Conceptual Mapping Engine

**Konsep disintesis dengan pemetaan, BUKAN meta-analisis.** Gunakan `engines/conceptual-mapping.md`:

- Kelompokkan studi ke **taksonomi konsep** (klaster variabel/tema).
- Petakan distribusi geografis + garis waktu publikasi.
- Tabel ringkas "characteristics of included studies".
- Visualisasi konsep/co-occurrence bila diminta pengguna.

## Auto-Validation Checklist (Wajib di Akhir)

Jalankan checklist **PRISMA-ScR (22 item)** — gunakan `checklists/prisma_scr.md` + `templates/reporting_checklist.md`:

- Semua item wajib dijawab (Ya / Tidak berlaku); item "Tidak" → rencana perbaikan.
- Pastikan RQ ditulis dalam elemen PCC.
- Simpan ke `reporting_checklist_result.md`.

## Kualitas Mode (Penghindaran Jebakan)

- JANGAN mengklaim kualitas/efektivitas intervensi (itu domain SLR).
- JANGAN mengklaim exhaustiveness bila search strategi terbatas (laporkan trade-off).
- JANGAN menulis "scoping review sistematis" sebagai verba.

## Output Mode

```text
literature_matrix.md            — matrix PCC
scoping_map.md                  — taksonomi konsep/geografis/timeline
characteristics_table.md        — karakteristik studi
framework_selection.md          — kontrak framework PCC
reporting_checklist_result.md   — validasi PRISMA-ScR
```

## Referensi Terkait

- `references/literature-search.md` — pencarian & filter Scopus Quartile
- `engines/conceptual-mapping.md` — engine sintesis pemetaan konsep
- `checklists/prisma_scr.md` — item PRISMA-ScR 22