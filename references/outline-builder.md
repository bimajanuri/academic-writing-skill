# Outline Builder — Perencanaan & Organisasi Gagasan (Tahap 2)

Panduan menyusun kerangka paper dari Literature Matrix dan Gap Analysis.

## 1. Dari Gap ke Research Question

1. Ambil gap terkuat dari `gap_analysis.md` (minimum 1 gap High significance).
2. Rumuskan RQ dalam bentuk:
   - Deskriptif: "Bagaimana ...?"
   - Hubungan: "Apakah X berhubungan dengan/berpengaruh terhadap Y?"
   - Kausal: "Bagaimana X memengaruhi Y di konteks Z?"
3. Batasi 1–3 RQ. Untuk setiap RQ tentukan:
   - Teori/kerangka utama (dari kolom Theory Used di matrix — pilih yang paling sering dipakai atau yang paling tepat)
   - Desain (empiris/teoritis/review)

Output: `research_question.md` berisi:
```yaml
research_questions:
  - rq: "Apakah X berpengaruh terhadap Y di Z?"
    gap_source: "Gap Analysis #2"
    theory: "Theory of Planned Behavior"
    design: "kuantitatif-survei"
    hypothesis: "H1: X berpengaruh positif terhadap Y"
```

## 2. Menentukan Target Jurnal/Platform (Opsional — journal-adapt)

Jika pengguna sudah punya target jurnal:
1. Minta 5–8 paper terbitan jurnal itu (corpus).
2. Ekstrak pola:
   - Struktur section (jumlah, urutan)
   - Framing kontribusi (bagaimana mereka mengklaim kebaruan)
   - Eksposisi method/results (kedalaman, format tabel/gambar)
   - Cakupan discussion & kesimpulan
   - Panjang rata-rata abstract & paragraf
3. Simpan sebagai `style_profile.md`.
4. **Aturan**: jangan menyalin kalimat corpus verbaatim; jadikan model struktur.

Jika tidak ada target jurnal: gunakan struktur IMRaD/kustom sesuai jenis paper (literature review → template literature_review section).

## 3. Struktur Outline

Template utama ada di `templates/paper_outline.md`. Minimal:

```
# Judul Paper
1. Abstract (150–250 kata)
2. Pendahuluan (15–20% total)
   2.1 Latar belakang & masalah
   2.2 Gap dan urgensi
   2.3 Research question & tujuan
   2.4 Kontribusi (numbered, claim-first)
   2.5 Struktur paper
3. Tinjauan/Literature Review (20–25%)
   3.1 Teori dasar
   3.2 Sintesis temuan terdahulu (dari matrix, dikelompokkan
        oleh tema: Purpose / Method / Theory)
   3.3 Research gap & posisi paper
4. Metodologi (15–20%)
   4.1 Desain
   4.2 Variabel & pengukuran
   4.3 Populasi & sampel
   4.4 Instrumen
   4.5 Analisis data
5. Hasil (15–20%)
   5.1 Statistik deskriptif
   5.2 Uji hipotesis / temuan utama (tabel & gambar dirujuk)
6. Pembahasan (15–20%)
   6.1 Interpretasi hasil vs literatur
   6.2 Implikasi teoretis & praktis
   6.3 Keterbatasan
7. Kesimpulan (5–10%)
   7.1 Ringkasan temuan
   7.2 Kontribusi dijawab dari RQ
   7.3 Saran penelitian lanjut
Daftar Pustaka
Lampiran (opsional)
```

Sesuaikan persentase dengan jenis paper (literature review → Literature Review 40-50%).

## 4. Alokasi Kata

- Tentukan total target (mis. 7.500 kata utk jurnal 15 halaman).
- Alokasikan sesuai persentase di atas.
- Tulis alokasi di samping heading biasa:
  ```
  ## 2. Pendahuluan (1.500 kata)
  ```

## 5. Topic Sentences Dulu

**Ini kunci kualitas.** Sebelum menulis prosa:
1. Untuk SETIAP paragraf yang direncanakan, tulis satu topic sentence (kalimat klaim).
2. Baca berurutan — harus membentuk argumen yang koheren tanpa prosa.
3. Jika topic sentences tidak nyambung → perbaiki struktur dulu.

Contoh alur topic sentences (Pendahuluan):
```
- Aktivitas akademik mahasiswa menurun seiring penggunaan medsos yang meningkat.
- Beberapa studi menemukan korelasi negatif; lainnya tidak, karena variabel moderator belum dianalisis.
- Studi ini memisahkan durasi vs frekuensi untuk menjelaskan inkonsistensi tersebut.
- Hasil menunjukkan durasi (bukan frekuensi) yang memprediksi IPK.
```

## 6. Reviewer Self-Assessment (7 Dimensi, 35 poin)

Setelah outline final, nilai dengan lensa reviewer (skor 1–5/dimensi):

| # | Dimensi | Cek |
|---|---------|-----|
| 1 | Kejelasan argumen | RQ jelas? Alur logis? |
| 2 | Kelengkapan argumentasi | Semua klaim punya dukungan direncanakan? |
| 3 | Dukungan literatur | Cukup sitasi terencana (≥30 utk jurnal)? Key works? |
| 4 | Kejelasan metodologi | Desain eksplisit? |
| 5 | Ekspresi kebaruan | Kontribusi jelas & beda dari existing? |
| 6 | Organisasi | Alokasi proporsional? Flow baik? |
| 7 | Kesesuaian target | Sesuai jurnal/jenis paper? |

**Keputusan:**
- ≥ 28/35 → lanjut menulis
- 21–27 → revisi bagian yang lemah (sebutkan apa)
- < 21 → rancang ulang outline

Untuk setiap dimensi < 4, berikan: masalah → severity (High/Med/Low) → solusi konkret.

## 7. Output & Quality Gate

File output:
```
paper_outline.md      — outline + alokasi kata + topic sentences
research_question.md  — RQ + hipotesis + teori + design
style_profile.md      — profil gaya jurnal target (jika ada)
```

Quality Gate 2 (dari SKILL.md):
- Outline selesai + alokasi kata
- Skor reviewer ≥ 28/35
- Topic sentences koheren
- Konfirmasi pengguna

## Tips

- Jika pengguna hanya ingin "sitasi" atau "referensi", jangan paksa full Tahap; fokus ke matrix.
- Jika paper berupa **systematic review**, tambahkan PRISMA flow & strategi pencarian eksplisit di metodologi.
- Simpan draft external: ide yang kurang jelas → tandai sebagai "open question" (murah diperbaiki sekarang, mahal nanti).