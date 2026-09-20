# Engine — Reciprocal Translation (Meta-Etnografi)

Engine inti untuk Mode Meta-Etnografi. Mengubah temuan-temuan studi kualitatif primer menjadi **3rd Order Constructs** melalui proses *reciprocal translation* ala Noblit & Hare.

> Built di atas konsep: 1st order (kutipan partisipan) → 2nd order (interpretasi penulis) → 3rd order (interpretasi baru sang sintesis).

## Kapan Dipakai

Hanya di Mode Meta-Etnografi (`protocols/meta-ethnography.md`), setelah matrix constructs (1st/2nd order) siap dan sebelum menulis hasil.

## Alur Kerja Engine

### Input
- `constructs_1st_2nd.md` — daftar 1st & 2nd order constructs per study
- `literature_matrix.md` (mode meta-etnografi)

### Langkah

1. **Pilih studi pertama sebagai "conceptual baseline"** — studi yang paling kaya konsep.
2. **Terjemahkan studi kedua ke dalam konsep studi pertama** — cari pemetaan konsep yang sepadan:
   - Konsep A pada studi 1 ≈ konsep B pada studi 2 (makna sama, label beda) → **masukkan**.
   - Konsep yang MPUNYA makna berbeda / kontradiktif → **tandai refutational**.
   - Konsep yang saling melengkapi → **tandai line-of-argument**.
3. **Ulangi berpasangan** ke semua studi (translation berurutan, seperti rantai).
4. **Sintesis terjemahan** — gabungkan hasil terjemahan untuk menghasilkan 3rd order constructs baru; jika beragam arah → bina **line-of-argument**.
5. **Tulis narasi sintesis** — jelaskan bagaimana 3rd order lahir dari 1st & 2nd order (jejak/keterlacakan wajib).

### Aturan Ketat (Tidak Boleh Dilanggar)

- JANGAN pernah mempresentasikan 1st order constructs dari studi primer sebagai hasil sintesis.
- JANGAN menggabungkan dua konsep dengan makna berbeda hanya karena "similar words" — verifikasi konteks.
- 3rd order construct hanya boleh diklaim jika bisa ditelusuri kembali ke minimal 2 studi.
- Transparansi label: sertakan tabel pemetaan konsep antar studi.

### Output
```text
synthesis_translation.md   — hasil translation + 3rd order constructs
line_of_argument.md        — narasi line-of-argument (jika relevan)
translation_matrix.md      — tabel pemetaan konsep antar studi (opsional)
```

## Prompt Template (instruksi kerja untuk agent)

```text
Kamu akan melakukan Reciprocal Translation untuk sintesis meta-etnografi.
Gunakan constructs_1st_2nd.md. Langkah:
1. Tentukan paper baseline (paling kaya konsep).
2. Untuk setiap paper berurutan, terjemahkan 2nd order construct-nya ke
   dalam konsep baseline: tandai sebagai reciprocal / refutational /
   line-of-argument.
3. Gabungkan hasil terjemahan menjadi 3rd order constructs baru.
4. Tulis narasi yang menunjukkan hubungan antar studi secara eksplisit.
5. Sertakan tabel pemetaan konsep (Paper X → Paper Y).
```

[Jangan lanjut sebelum baseline & semua terjemahan tervalidasi konsisten.]