# Output Formatter — Konversi Format (Tahap 6)

Panduan memformat final dan mengonversi naskah ke **Markdown**, **LaTeX**, atau **DOCX**.

## 1. Format Output

| Format | Kapan dipakai | Cara |
|--------|---------------|------|
| **Markdown** (.md) | Default; mudah dibaca & dibagikan | Langsung |
| **LaTeX** (.tex) | Submission jurnal/konferensi; paper ilmiah | Konversi + template |
| **DOCX** (.docx) | Draft untuk dosen/rekan; kolaborasi Word | Pandoc atau library |

Tanyakan pengguna format targetnya. Jika tidak disebut → Markdown.

## 2. Struktur Final Naskah (IMRaD / standar akademik)

Pastikan file final berisi (sesuai template):
```
1. Judul
2. Abstract (150–250 kata)
3. Kata kunci (3–6)
4. Pendahuluan
5. Tinjauan Literatur
6. Metodologi
7. Hasil
8. Pembahasan
9. Kesimpulan
10. Referensi (sesuai gaya sitasi)
11. Lampiran (jika ada)
```

Heading konsisten (sentence case bila Inggris; judul-style sesuai aturan masing-masing). Nomor section opsional sesuai target.

## 3. Konversi Markdown → LaTeX

### Output LaTeX standar (article class) — contoh kerangka:
```latex
\documentclass[12pt]{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{amsmath,amssymb}
\usepackage{graphicx}
\usepackage{booktabs}
\usepackage[hidelinks]{hyperref}

\title{Judul Paper}
\author{Nama Penulis}
\date{}

\begin{document}
\maketitle

\begin{abstract}
...abstract dot file...
\end{abstract}

\noindent\textbf{Kata kunci}: kata1, kata2, kata3

\section{Pendahuluan}
...
\begin{thebibliography}{99}
\bibitem{rahman2023} Ahmad Rahman and Dewi Sari.
``Pengaruh media sosial terhadap prestasi akademik.'' ...
\end{thebibliography}
\end{document}
```

### Mapping Markdown → LaTeX
| Markdown | LaTeX |
|----------|-------|
| `#` `##` `###` | `\section{}` `\subsection{}` `\subsubsection{}` |
| `**teks**` | `\textbf{teks}` |
| `*teks*` | `\textit{teks}` |
| Tabel pipa | `tabular` / `booktabs` |
| Gambar `![alt](file)` | `\begin{figure}...\includegraphics...` |
| Formula `$...$` / `$$...$$` | tetap sama |
| Tautan `[x](url)` | `\href{url}{x}` |
| Daftar `- ` | `itemize` |

**Konversi otomatis**: gunakan script `scripts/convert.sh` jika pandoc tersedia:
```bash
pandoc draft.md -o paper.tex --bibliography=refs.bib
```
Tanpa pandoc → konversi manual sesuai tabel di atas.

### Untuk jurnal/konferensi (IEEE/ACM/NeurIPS/Elsevier):
- Gunakan template official: `\documentclass[conference]{IEEEtran}`, `\usepackage{acmart}`, `\documentclass{article}` + elsarticle, dsb.
- Petunjuk: unduh template dari situs penulis, salin kerangkanya, masukkan konten Anda. Jangan mengarang class file.

## 4. Konversi Markdown → DOCX

### Via pandoc (paling mudah):
```bash
pandoc draft.md -o paper.docx
```
- Dengan referensi: `pandoc draft.md -o paper.docx --bibliography=refs.bib --citeproc`
- Gaya sitasi: `--csl=apa.csl` / `ieee.csl` / dsb. (unduh dari Zotero style repository).

### Tanpa pandoc:
- Buat file .docx dasar menggunakan library yang tersedia di env (python-docx, pandoc, libreoffice), ATAU
- Muat ke Word/Google Docs dari Markdown dan sesuaikan manual format (Times New Roman 12, spasi 1.5, margin 4/4/3/3 cm, heading bold).

### Format Word yang umum (jurnal Indonesia):
- Font: Times New Roman 12 pt
- Spasi: 1.5 (abstract 1 spasi)
- Margin: kiri 4, atas 4, kanan 3, bawah 3 cm
- Heading: bold, sesuai aturan
- Kutipan: `....` (nama, tahun)

## 5. Pre-Submission Mechanical Checks

Setelah final naskah, jalankan otomatis:

1. **Word/page count** vs target (wajib dibandingkan dengan alokasi di outline).
2. **Broken references**:
   - LaTeX: cek `.log` → "Undefined references" / `[?]` / `??`
   - `grep -n "LaTeX Warning.*undefined" paper.log`
3. **Font embedded** (LaTeX PDF): `pdffonts paper.pdf | grep -v yes` → semua harus `yes`.
4. **Gambar**: semua `\includegraphics` merujuk file yang ada; preferensi vektor (PDF/PDFs); flag PNG/JPG foto.
5. **Anonimisasi** (double-blind): cari nama/kampus/grant/acknowledgment yang membocorkan identitas:
   - `grep -rni 'nama\|institusi\|\thanks' *.tex`
6. **Label figur/tabel**: setiap float dirujuk di teks (`Gambar X`, `Tabel Y`).
7. **Sitasi konsisten**: cek 1:1 in-text ↔ bibliography (dari Tahap 4).
8. **Column balancing** (LaTeX 2-kolom): pakai `\usepackage{balance}`.

**Laporan**:

| Check | Status | Detail |
|-------|--------|--------|
| Word count | ✓/✗ | 7.520 / target 7.500 |
| Broken refs | ✓/✗ | 0 |
| Fonts embedded | ✓/✗ | semua yes |
| Figures referenced | ✓/✗ | 5/5 |
| Anonymization | ✓/✗ | 0 leak |
| Column balance | ✓/✗ | package ada |

## 6. Output Tahap 6

```
<paper_title>.md              — naskah final Markdown (always)
<paper_title>.tex             — LaTeX (jika diminta/ada pandoc/template)
<paper_title>.docx            — Word (jika diminta/eventual)
pre_submission_checklist.md   — hasil pre-submission checks
revision_summary.md           — ringkasan seluruh proses (perubahan, gate, dsb.)
```

## Catatan Teknis

- Pandoc mungkin belum terpasang; cek `command -v pandoc` sebelum menggunakannya. Jika tidak ada, tawarkan instalasi atau beri file Markdown + instruksi konversi.
- Jangan pernah mengirim file tanpa melewati Tahap 5 (revisi) — tinjau selalu sebelum output.
- Simpan semua versi file dengan penamaan jelas (`draft_v1.md`, `final.md`).