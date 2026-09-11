# Literature Matrix — Ekstraksi Metadata 7-Field

Panduan menyusun tabel literature matrix terstruktur dari paper yang lolos pencarian.

## Struktur Kolom (7 Field Wajib + Nomor)

Setiap paper menghasilkan **satu baris** dengan kolom berikut:

| Kolom | Isi yang Diekstrak | Sumber di Paper |
|-------|-------------------|-----------------|
| **Authors/Title** | Nama penulis (format sitasi) + judul paper | Halaman judul |
| **Purpose** | Tujuan/objektif penelitian (1 kalimat ringkas) | Abstract & Introduction |
| **Method (Variables/Samples)** | Desain, variabel (IV/DV), sampel ukuran/jenis, instrumen | Method |
| **Theory Used** | Teori/kerangka konseptual yang mendasari | Introduction / Literature Review |
| **Novelty/Contribution** | Klaim kebaruan + kontribusi utama | Introduction / Conclusion |
| **Future Studies** | Saran penelitian lanjutan | Future Work / Conclusion |
| **DOI/Penerbit & Scopus Quartile** | DOI, nama penerbit/jurnal, + quartile | Metadata / SJR |

Gunakan template `templates/literature_matrix_template.md`.

## 1. Aturan Ekstraksi Per Field

### Authors/Title
- Nama penulis: `Penulis1, Penulis2, & Penulis3 (Tahun)` — gunakan gaya author-date ringkas di matrix; format final nanti di Tahap 4.
- Judul: dalam tanda kutip atau italic sesuai gaya yang dipakai matrix (konsisten).
- Jika > 6 penulis: `Penulis 1 et al.`

### Purpose
- 1 kalimat: "Tujuan studi ini adalah ..." / "Penelitian ini bertujuan menguji ..."
- Ambil langsung dari abstract jika eksplisit; jika tidak eksplisit, ringkas inferensi dan tandai `(diringkas)`.

### Method (Variables/Samples)
Ekstrak komponen:
- **Desain**: eksperimen / survei / studi kasus / kualitatif / mixed-method / longitudinal / sistematik review
- **IV / DV** (jika hipotetis): variabel independen → dependen
- **Sampel**: ukuran (n=...), populasi, teknik sampling
- **Instrumen/analisis**: kuesioner, wawancara, regresi, SEM/PLS, ANOVA, dll.
- Contoh terisi: `Survei; IV: penggunaan medsos; DV: IPK; n=312 mahasiswa; kuesioner Likert; regresi berganda`

### Theory Used
- Daftar teori/kerangka yang diangkat penulis (mis. Theory of Planned Behavior, Uses and Gratifications, Social Cognitive Theory).
- Jika paper tidak eksplisit menyebut teori, tulis `Tidak disebut eksplisit`.

### Novelty/Contribution
- 1–2 kalimat klaim kontribusi (mis. "Model prediktif berbasis ML dengan akurasi 85% untuk konteks mahasiswa Asia Tenggara").
- Jangan ditambah opini Anda; ambil klaim dari paper.
- Jika tidak jelas, tandai `(tidak eksplisit)`.

### Future Studies
- Salin/ringkas saran penelitian lanjut yang direkomendasikan penulis.
- Tuliskan hasil statistik kunci (jika ada) yang menyarankan arah lanjutan.
- Jika paper tidak punya saran, tulis *"—"*.

### DOI/Penerbit & Scopus Quartile
- Format: `DOI: 10.xxxx/... | <Jurnal/Penerbit> | <Q1/Q2/Q3/Q4/non-Scopus>`
- Quartile wajib diisi; bila tidak terverifikasi tulis `Q? [UNVERIFIED]` atau `non-Scopus` untuk arXiv/preprint.

## 2. Sumber Ekstraksi

Gunakan abstrak + highlight dari paper:
1. Baca **Abstract** (sumber utama Purpose, Method ringkas)
2. Baca **Introduction** (Issue → Purpose, Theory Used, Novelty)
3. Baca **Method** (variabel, sampel, analisis)
4. Baca **Conclusion + Future Work** (kontribusi terkonfirmasi, saran lanjutan)

Jika paper dalam bentuk file (PDF/DOCX/MD), ekstrak teks dulu. Jika hanya metadata (DOI), gunakan OpenAlex/Semantic Scholar untuk mendapatkan `title`, `abstract_inverted_index`, dan rekonstruksi abstract; bila abstract tidak tersedia → tandai field yang kurang dengan *"—"*.

## 3. Skor Relevansi (Opsional tapi Disarankan)

Jika pengguna minta, sisipkan kolom tambahan:
```
| ... | Relevance (0–10) | Status (Dipakai/Dibuang) |
```
- Relevance score: 8–10 → masuk analisis utama; 7 → pelengkap; <7 → buang.
- Ini mempermudah Gap Analysis di Tahap 1 Langkah 1.4.

## 4. Anti-Hallucination untuk Matrix

1. Field yang tidak tersedia → tulis *"—"*, **jangan** mengarang keberadaan data.
2. Quartile yang tidak yakin → `Q? [UNVERIFIED]`
3. Teori yang tidak disebut → `Tidak disebut eksplisit`
4. DOI yang gagal diverifikasi → tandai `[tanggal cek: ]` dan beri tahu pengguna
5. Relevansi skor harus didasarkan pada judul+abstract, bukan anggapan.

## 5. Kriteria Kualitas Matrix

- Minimal 10 baris (atau sesuai kesepakatan dengan pengguna).
- 7 kolom terisi untuk setiap baris (dengan *"—"* bila data tidak ada).
- Quartile terverifikasi untuk paper yang dimasukkan sebagai "Scopus".
- Tidak ada sel data yang diimajinasikan.

## 6. Output

Simpan sebagai file:
```
literature_matrix.md  — tabel matrix final siap dipakai Tahap 2 dan 3
```

Gunakan konten field Novelty/Contribution & Future Studies sebagai dasar Gap Analysis (Tahap 1 Langkah 1.4).