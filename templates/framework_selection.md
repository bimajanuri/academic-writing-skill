# Framework Selection — Kontrak Substantif Paper

Isi form ini di **Langkah 1.1–1.2** (klarifikasi), lalu disimpan sebagai `framework_selection.md`. Agent mengusulkan default sesuai jenis paper (lihat `references/research-frameworks.md` §4); pengguna memutuskan.

```yaml
# Metadata
paper_title: ""
jenis_paper: ""          # research paper / systematic review / scoping review / literature review / studi kasus / ...
bahasa: ""               # Indonesia / English / bilingual
target_jurnal: ""        # opsional (cek Instructions for Authors utk kewajiban checklist)
gaya_sitasi: ""          # APA 7 / MLA 9 / Turabian / Vancouver / Harvard / Chicago / IEEE (Langkah 2.6)
```

## 1. Framework Pertanyaan Penelitian (RQ Framework)

```yaml
framework_rq: ""         # contoh: PICO, PICo, PEO, PCC, SPIDER, SPICE, ECLIPSe, CIMO, CoCoPop, 5W+1H
alasan_pilih: ""         # singkat: mengapa framework ini
```

Isi elemen sesuai framework (contoh PICO):

| Elemen | Isi | Kata kunci pencarian |
|--------|-----|----------------------|
| P (Population) | | |
| I (Intervention / Interest) | | |
| C (Comparison / Context) | | |
| O (Outcome) | | |
| (T / extras) | | |

> Untuk framework berbeda, ganti baris elemen sesuai komponennya. Elemen RQ = sumber kombinasi keyword Round 1.

## 2. Framework Prosedur & Tahapan Riset

```yaml
framework_prosedur: ""   # Research Onion / Empirical Cycle / Research Process Stages / PRISMA-P / Systematic Review Conduct / 4-Phase PRISMA Flow
rencana_tahapan: |
   1. ...
   2. ...
   3. ...
screening:              # hanya utk evidence synthesis
  review_by: 2          # jumlah reviewer independen (contoh: 2)
  dedup_tool: ""        # contoh: reference manager / script
  appraisal: ""         # contoh: Cochrane RoB 2, NOS, QUADAS-2, JBI
```

## 3. Framework Pelaporan & Screening (Reporting Checklist)

```yaml
reporting_checklist: ""  # contoh: PRISMA 2020, CONSORT, STROBE, COREQ, ENTREQ, ...
reporting_ekstensi: ""   # contoh: PRISMA-S, PRISMA-ScR, PRISMA-Abstracts
appraisal_tool: ""       # contoh: AMSTAR 2, GRADE
sumber_item: |           # URL resmi tempat item checklist diambil (EQUATOR/prisma-statement.org/dll)
  https://...
```

## 4. Kewajiban vs. Opsional

- [ ] Jurnal target **mewajibkan** checklist tertentu? → cantumkan nama & versi persisnya (periksa Instructions for Authors).
- [ ] Protokol diregistrasi? → contoh: PROSPERO, Open Science Framework (untuk systematic review).
- [ ] Pengguna menyetujui kerangka ini? (human-in-the-loop gate)

## Output Binding

Setelah form disetujui, kerangka ini **mengikat** tahap berikutnya:
1. RQ diformulasikan dengan framework §1 → `research_question.md`
2. Metodologi ditulis mengikuti framework §2 → bagian Methodology
3. Screening/appraisal mengikuti §2 & §3B → tabel RoB + PRISMA flow
4. Pre-submission dijalankan dengan checklist §3 → `templates/reporting_checklist.md`