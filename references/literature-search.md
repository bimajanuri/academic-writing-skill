# Pencarian Literatur (Literature Search)

Panduan pencarian literatur akademik dengan dukungan **filter Scopus Quartile** (Q1–Q4).

## 1. Klarifikasi Awal

Sebelum mencari, klarifikasi dari pengguna:

| Parameter | Opsi | Default |
|-----------|------|---------|
| Topik / kata kunci | wajib diisi | — |
| Filter Scopus Quartile | Q1 / Q2 / Q3 / Q4 / tanpa filter | Tanpa filter (tapi tetap tag quartile) |
| Rentang tahun | bebas | 5 tahun terakhir |
| Jumlah target | bebas | 15–40 paper |
| Bahasa paper | Indonesia / Inggris / semua | Inggris |
| Sumber | OpenAlex / Semantic Scholar / arXiv / semua | Semua (OpenAlex dulu) |
| Jenis dokumen | artikel riset / review / semua | Artikel riset + review |

## 2. Sumber Pencarian (Tanpa API Key)

Prioritas urutan penggunaan:

1. **OpenAlex API** (gratis, paling lengkap, mencakup Scopus-indexed journals)
   ```
   GET https://api.openalex.org/works?search=KATA+KUNCI&filter=from_publication_date:YYYY-MM-DD,type:article|review
   ```
   - Tambahkan `mailto:email@example.com` untuk polite pool (rate limit lebih tinggi)
   - Response mencakup `doi`, `authorships`, `publication_date`, `biblio`, `primary_location.source` (nama jurnal, issn)
2. **Semantic Scholar API** (gratis)
   ```
   GET https://api.semanticscholar.org/graph/v1/paper/search?query=KATA+KUNCI&fields=title,authors,year,externalIds,abstract&limit=20
   ```
3. **arXiv API** (untuk preprint CS/fisika) — opsional, bertanda UNVERIFIED untuk quartile
   ```
   GET http://export.arxiv.org/api/query?search_query=all:KATA+KUNCI&max_results=20
   ```

Catatan: Jika agent lingkungan memiliki tools web (web search / fetch), gunakan tools tersebut; gunakan API-API di atas sebagai sumber kandidat DOI/refrensi yang kemudian diverifikasi.

## 3. Strategi Pencarian Multi-Tahap

### Round 1 — Pencarian Langsung (Literatur Primer)
1. Ekstrak 3–5 konsep inti dari topik pengguna
2. Buat 8–15 kombinasi kata kunci (konsep + konsep, konsep + metode, sinonim/disiplin varian)
3. Cari di OpenAlex / Semantic Scholar untuk setiap kombinasi
4. Kumpulkan 30–50 kandidat paper
5. Skor relevansi 0–10; pertahankan yang ≥ 7/10

### Round 2 — Snowballing (forward & backward citation)
1. Dari paper lolos Round 1, telusuri jaringan sitasi:
   - **Backward**: referensi yang dikutip di dalam paper → verifikasi dan tambahkan
   - **Forward**: paper yang mensitasi paper kunci → gunakan `cites:<openalex_id>` di OpenAlex atau daftar "cited by"
2. Kumpulkan 5–15 paper tambahan

### Round 3 — Literatur Klasik / Fondasi
1. Identifikasi paper highly-cited (>100 sitasi) yang relevan
2. Masukkan 2–5 paper fondasi ke matrix (untuk bagian Theory Used)
3. Rentang tahun dilonggarkan untuk fondasi

## 4. Filter Scopus Quartile

### Prinsip
- **Hanya Scopus denominator.** Quartile mengacu pada **CiteScore/SJR quartile** Scopus (Q1, Q2, Q3, Q4), bukan SINTA/ARJUNA/Lainnya.
- Gunakan data quartile dari **Scimago Journal Rank (SJR)** di scimagojr.com atau metadata yang tersedia; bila tidak dapat diverifikasi, tandai `[quartile: UNVERIFIED]`.

### Verifikasi Quartile
Untuk setiap jurnal kandidat:

1. Ambil nama jurnal + ISSN dari metadata paper (OpenAlex `primary_location.source`)
2. Tentukan quartile dari salah satu:
   - Fetch halaman scimagojr.com (jika tools web tersedia)
   - Data quartile yang sudah ada di basis pengetahuan — hanya bila yakin (mis. Nature, Cell, IEEE TPAMI, dsb.)
   - Laporkan perkiraan dengan label `ESTIMATED`
3. Pemetaan quartile:
   - **Q1**: CiteScore ranking atas 25% bidang
   - **Q2**: persentil 25–50%
   - **Q3**: persentil 50–75%
   - **Q4**: persentil 75–100% (atau jurnal tidak terindeks Scopus → OUT)

### Skema Filter (berlaku di matrix)

| Mode | Perilaku |
|------|----------|
| **Tanpa filter** | Semua paper lolos relevansi masuk matrix; kolom quartile tetap diisi (label Jurnal + Quartile) |
| **Filter Q1** | Hanya jurnal Q1 yang masuk; Q2–Q4 dan non-Scopus dibuang |
| **Filter Q1–Q2** | Quartile Q1 dan Q2 masuk; Q3, Q4, non-Scopus dibuang |
| **Filter Q3–Q4 dsb.** | analog |

**Jurnal non-Scopus (arXiv preprint, paper konferensi non-Scopus, dsb.)**: masukkan ke matrix TERPISAH dengan label `[non-Scopus]`, supaya tidak menggabungkan standar. Tanyakan ke pengguna apakah perlu disertakan.

### Laporan Penyaringan
Buat triase ringkas pada akhir pencarian:
```
Dari X kandidat:
- Lolos relevansi ≥ 7/10 : Y paper
- Scopus Q1 : a | Q2 : b | Q3 : c | Q4 : d
- Non-Scopus : e
- Dibuang (relevansi < 7) : f
```

## 5. Anti-Hallucination (Wajib)

1. **Setiap DOI harus diverifikasi** dapat di-resolve. Jika ragu — tandai `UNVERIFIED`.
2. Jika sebuah referensi disebut tetapi tidak ada DOI/bukti keberadaannya → **JANGAN** dimasukkan ke matrix. Kosongkan sitasi tersebut dan beri tahu pengguna.
3. Jangan menebak nama jurnal, volume, halaman, atau tahun.
4. Jika metadata tidak lengkap, tandai kolom yang kurang dengan *"—"*.

## 6. Pencarian per Bidang (Tes Mini)

Untuk efisiensi, sebutkan bidang dalam kata kunci (contoh untuk topik "pengaruh medsos terhadap akademik"):
```
Round 1 combos:
- "social media" AND "academic performance"
- "social media usage" AND "student"
- "screen time" AND "learning outcomes"
- "media multitasking" AND "grade point average"
- plus sinonim: "digital distraction", "technology use"
```

## 7. Output Pencarian

Output pencarian diserahkan sebagai file yang siap diisi ke matrix:
```
candidate_papers.md  → daftar kandidat + skor relevansi + status quartile + status verifikasi DOI
```

Kemudian lanjut ke `literature-matrix.md` untuk ekstraksi 7-field per paper.