# Revision Guide — Humanizer & Revisi Draft (Tahap 5, Layer 1)

Panduan mendeteksi dan memperbaiki 25 pola tulisan khas-AI lalu merevisi draft akademik. Diadaptasi dari [blader/humanizer](https://github.com/blader/humanizer) (27 pola) dan WikiProject AI Cleanup untuk bahasa Indonesia + Inggris.

## Filosofi

Tulisan AI cenderung memilih frasa dengan probabilitas tertinggi yang cocok untuk SEMUA pembaca, sehingga berbunyi generik dan berlapis. Manusia menulis untuk SATU pembaca dan topik spesifik. Setiap pola di bawah adalah satu bentuk pilihan-generik itu.

**Dua aturan:**
1. Setiap kalimat yang dipertahankan harus menambah sesuatu yang belum dimiliki pembaca.
2. Pola bernomor §1–§5 cukup SATU temuan untuk diedit; pola bertanda *lemah sendiri* butuh beberapa temuan sekaligus sebelum bertindak.

**Aturan keamanan**: jangan berubah makna, jangan menambah fakta/angka/sitasi yang tidak bersumber. Nama, angka, tanggal, kutipan, sitasi harus berasal dari naskah pengguna.

---

## Workflow Revisi

1. **Tandai pola.** Baca seluruh teks sekali, tandai semua pola, paling kuat dulu. Perhatikan bentuk paragraf, tidak hanya kalimat.
2. **Draf ulang.** Pertahankan SEMUA klaim yang didukung. Boleh memendekkan, menggabung/memisah paragraf. Jangan menambah fakta; bila butuh detail yang tidak ada → tanyakan.
3. **Periksa draf.** Baca keras; tanya: apa yang masih berbunyi AI? Apakah ada klaim/fakta yang tertambah atau hilang? Cari lima pola yang paling sering lolos: not-X-but-Y, one-line closer, dash, triad, bold label.
4. **Tulis versi final.** Sampaikan poin alami; jangan menambal frasa satu per satu. Varian panjang-pendek kalimat (tulisan manusia bergantian).

### Mode output

- **Pasted text (default)**: kembalikan draf + daftar singkat pola tersisa + versi final.
- **File mode**: tulis hanya teks final ke file; jangan mengubah kode, data, frontmatter, link target.
- **Embedded**: hanya teks final.

---

## A. Staging instead of stating (§1–5) — AKTIF PADA 1 TEMUAN

### §1 Not X but Y
- Pola: "bukan hanya X, tetapi juga Y"; "bukan berarti X, melainkan Y"; versi terbalik "X, bukan Y"; split lintas kalimat "Ini tidak berarti X. Ini berarti Y."
- **Masalah**: paruh negatif menyebut hal yang tak diklaim siapa pun → paruh positif terdengar lebih besar tanpa tambahan fakta.
- **Perbaiki**: nyatakan langsung; pertahankan kontras hanya bila paruh negatif mengoreksi keyakinan pembaca yang benar-benar ada.
- Contoh: "Penelitian ini bukan hanya memberikan kontribusi teoritis." → "Penelitian ini memperluas teori X dengan menambah moderator M."

### §2 One-line closers & dramatic fragments
- Pola: paragraf satu kalimat yang mengulang poin sebelumnya; "Itulah inti dari temuan ini."; "Tidak ada baseline sebelumnya."; kata ALL CAPS.
- **Perbaiki**: hapus closer yang mengulang; gabung fragmen menjadi kalimat berisi klaim spesifik.

### §3 Sayings that sound deep
- Pola: "Pada hakikatnya, yang terpenting adalah..."; "X adalah bahasa dari Y"; "kunci dari segalanya".
- **Perbaiki**: ganti petuah dengan klaim spesifik (dengan data).

### §4 Staged run-up
- Pola: "Mari kita telaah...", "Perlu dicatat bahwa", "Di bagian ini, kami akan".
- **Perbaiki**: langsung ke poin. Kecuali petunjuk struktur yang sah.

### §5 Arguing with no one
- Pola: "Ini bukan tentang X", "Saya tidak menyatakan...", "Tentu sebagian akan berkeberatan, tetapi...", "Terlihat menggoda untuk menggunakan Y, namun...".
- **Perbaiki**: hapus pembelaan; bila berisi klaim nyata, nyatakan langsung. Pertahankan objection yang dibahas penuh di dalam teks.

---

## B. Rhythm by rule (§6–§11) — lemah sendiri

### §6 Forced triads
- Pola: "inovasi, inspirasi, dan wawasan"; tiga contoh paralel lalu kesimpulan.
- Periksa apakah benar-benar butuh tiga item. Jika tidak → gabung/pertahankan item yang kuat.

### §7 Repeated sentence openings
- Pola: beberapa kalimat berurutan dibuka dengan subjek/konjungsi sama ("Hasil menunjukkan... Hasil menunjukkan...").
- Gabung atau ubah subjek. (Pengulangan sadar untuk ritme diperbolehkan.)

### §8 Dashes as universal connector
- **Aturan**: versi final tidak boleh berisi em dash (—) / en dash (–) kecuali meniru sampel penulis aktif. Ganti dengan titik/koma/kolon/tanda kurung.
- Pengecualian: dash di dalam kode, path, URL, kutipan langsung.

### §9 Stacked qualifiers
- Pola: "mungkin dapat diduga bisa saja", "secara potensial".
- Pertahankan hanya qualifier yang didukung sumber. *Lemah sendiri*. (kebiasaan manusia seperti "mungkin", "cenderung" bukan pola.)

### §10 Hyphenated pairs everywhere
- Pola: "lintas-fungsional", "berbasis-data", "real-time" di setiap posisi.
- Pertahankan hyphen hanya saat dibutuhkan tata bahasa (sebelum kata benda): "melaporkan ber-kualitas-tinggi" vs "kualitas laporan tinggi". *Lemah sendiri.*

### §11 Passive voice & missing subject
- "Tidak diperlukan file konfigurasi" → "Anda tidak perlu file konfigurasi". Sebutkan aktor bila membantu. *Lemah sendiri.* (Baca gate mekanis untuk aturan akademik yang lebih ketat.)

---

## C. Inflation & borrowed authority (§12–§18)

### §12 Overused AI words
Daftar kata model sering pakai (dalam akademik): *menyoroti, menggali, multidimensi, transformatif, memperkuat (bolstered), memperkaya, menavigasi, landscape/lanskap (abstrak), krusial, pivotal, teladan, merepresentasikan, menandai, menegaskan, secara fundamental, meaningful.* Awasi frasa: "hal yang mendalam", "bukan sekadar".
- Ini SATU-SATUNYA daftar kosakata dalam skill ini. Ganti dengan kata sehari-hari spesifik.

### §13 Inflated significance
- Pola: "menandai momen penting", "berperan kunci", "menjadi fondasi bagi", "masa depan yang cerah"; bagian "Kontribusi dan Tantangan" stok.
- Pertahankan fakta, buang penegasan; akhiri pada fakta konkret terakhir.

### §14 Vague connection or association
- Pola: "berkaitan dengan", "berhubungan dengan", "terkait dengan" tanpa cara hubungan.
- Tuliskan hubungan yang diberikan sumber; bila tidak ada → biarkan samar, jangan diciptakan.

### §15 Shallow -ing riders
- Pola: "merefleksikan", "menyoroti", "menjamin", "melambangkan" yang menempel di fakta sederhana.
- Pertahankan fakta; pertahankan rider hanya bila klaim didukung sumber.

### §16 Sales language
- Pola: "menakjubkan", "sangat kaya", "mendalam", "komprehensif (tanpa angka)".
- Nyatakan apa adanya.

### §17 Borrowed authority
- Pola: "para ahli meyakini", "dikutip di Nature, Science, dan NYT" (daftar prestise), "media sosial aktif dengan N pengikut" (di CV/personal blurb).
- Tulis sumber konkret dan apa yang dikatakan; jika tidak → hapus.

### §18 Avoiding is/are/has
- Pola: "berfungsi sebagai", "menyajikan", "memiliki fitur", "menawarkan" → "adalah", "memiliki".
- "Tabel 3 berfungsi sebagai ringkasan hasil." → "Tabel 3 meringkas hasil."

---

## D. Formatting by rule (§19–§21)

### §19 Bold as decoration
- Pola: label tebal + kolon; istilah ditebali tanpa alasan.
- Buang tebal dekoratif; ubah labeled-list menjadi prosa bila label tidak membawa info.

### §20 Decorative headings & emoji
- Pola: judul Title Case dekoratif; emoji (🚀), panah (→) di heading; horizontal rule antar section.
- Pakai sentence case; hapus emoji/panah; satu H1.

### §21 Curly quotes (lemah sendiri)
- Ganti "..." menjadi "..." sesuai gaya target bila konsisten (atau biarkan mengikuti konvensi jurnal).

---

## E. Leftovers from chat & draft (§22–§25)

Hapus total, tidak perlu rewrite.

### §22 Chatbot residue
- "Semoga membantu!", "Tentu!", "Pertanyaan bagus!", "Apakah Anda ingin...?", "Berikut adalah...".
- Buang wrapper, pertahankan isi.

### §23 Knowledge-limit disclaimers & guesses
- "Berikut ini berdasarkan informasi yang tersedia", "nampaknya didirikan pada 1990-an", "informasi tentang kehidupannya tidak dipublikasikan... mungkin saja".
- Nyatakan apa yang sumbernya tidak tunjukkan, atau buang kalimat. Jangan pernah menyajikan tebakan sebagai fakta.

### §24 Heading repeated in first sentence
- "## Hasil\n\nHasil penelitian menunjukkan..." → hapus kalimat pengulang.

### §25 Writing about previous version
- "Perbaikan ini menggantikan pendekatan lama yang lebih lambat..." → deskripsikan apa yang dilakukan SEKARANG, bukan versi lama (kecuali di changelog).

---

## Kapan TIDAK Diedit

- Kutipan langsung, judul, nama proper — biarkan.
- Pola *lemah sendiri* hanya bertindak bila beberapa temuan berkumpul dalam satu petikan.
- Teks sebelum 30 Nov 2022 tidak "AI-written" hanya karena gayanya.
- Salutation/sign-off resmi.

## Detail yang dipertahankan (aspek suara/voice)
- Detail spesifik & tidak biasa (lokasi, kutipan aneh)
- Ketegangan tak terselesaikan, perasaan campur aduk
- Bahasa era-bound (slang, in-jokes tahun tertentu)
- Pilihan first-person yang bisa dijelaskan penulis
- Aside/self-correction tulus

## Checklist penggunaannya

Gunakan `checklists/humanizer_checklist.md` untuk laporan pola terdeteksi vs diperbaiki.

## Sumber

Pola bersumber dari [Wikipedia: Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing) (WikiProject AI Cleanup) dan adaptasi [blader/humanizer](https://github.com/blader/humanizer).

---
Lanjut ke `quality-gates.md` untuk Layer 2–4 revisi.