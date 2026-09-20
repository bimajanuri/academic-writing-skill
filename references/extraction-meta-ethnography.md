# Extraction Module — Meta-Etnografi (1st / 2nd Order Constructs)

Panduan ekstraksi data untuk Mode Meta-Etnografi. Memberi aturan ketat pemisahan **dua lapis data** yang akan diumpankan ke Reciprocal Translation Engine.

## Konsep Kunci

| Lapis | Definisi | Sumber di Paper |
|-------|----------|-----------------|
| **1st Order Constructs** | Kutipan **asli partisipan** (responden) — verbatim, dalam tandak kutip | Quotes/responses di Results/Data section |
| **2nd Order Constructs** | **Interpretasi/teori penulis** atas data partisipan — tema, konsep, kategori yang diusulkan penulis | Themes/Theoretical framework/Interpretation |

> **3rd Order Constructs** adalah hasil sintesis Anda — JANGAN diekstrak dari paper, tapi dihasilkan oleh `engines/reciprocal-translation.md`.

## Aturan Ekstraksi

1. Kutip 1st order **verbatim** dengan tandak kutip & identitas (halaman/paragraf) bila tersedia.
2. 2nd order ditulis sebagai klaim penulis (mis. "Penulis membingkai X sebagai bentuk Y").
3. Satu paper bisa punya beberapa constructs — semuanya dicatat.
4. Jika paper hanya menyajikan kutipan tanpa interpretasi eksplisit → tandai 2nd order sebagai "—", jangan mengarang.
5. Setiap construct diberi ID unik (mis. `S1-1st-01`) untuk di-trace di engine.

## Kolom Minimal

| Study (Author/Year/Jurnal/Q) | Construct ID | Tipe (1st/2nd) | Text/Cuotes | Halaman/Par | Konteks | Kualitas (CASP) |
|------------------------------|--------------|----------------|-------------|-------------|---------|-----------------|

## Anti-Hallucination

- Beda request: 2nd order bukan 1st order yang di-ulang kata.
- Verifikasi setiap kutipan ada di paper (tandai "QUOTE VERIFY" bila tidak yakin).
- Konteks populasi & setting direkam agar constructs tidak dilepas dari konteks.

## Template

Gunakan `templates/extraction_meta_ethnography.md` untuk output matrix.