# Grammar Check — English (US) untuk Naskah Output Akademik

Panduan memeriksa tata bahasa, ejaan, tanda baca, dan konsistensi **English-US** pada naskah akademik output. Dipakai di **Tahap 5 (Layer Grammar)** dan sebelum submission (Tahap 6).

> Bedakan dari Humanizer (Layer 1): humanizer menangani *gaya khas-AI*; grammar check menangani *kebenaran linguistik* sesuai kaidah bahasa. Keduanya bisa saling terkait, tetapi ceknya berbeda.
>
> **Kebijakan bahasa**: output paper WAJIB English-US. Input penelitian boleh Bahasa Indonesia/English (dipahami tanpa mengubah makna). Bagian Bahasa Indonesia di bawah hanya untuk membantu *menafsirkan* maksud input ID saat menerjemah — bukan untuk menulis naskah.

## 1. Workflow Grammar Check (English-US)

1. **Pastikan register English-US** pada seluruh naskah (spelling US; jangan campur US/UK).
2. **Cek mekanis dulu** (pola yang bisa diburu otomatis, §3).
3. **Cek tata bahasa** (agreement, tense, struktur kalimat, preposisi).
4. **Cek ejaan & kata** (spelling US).
5. **Cek tanda baca & format** (kapitalisasi, serial comma, apostrophe, tanda kutip).
6. **Cek konsistensi** (istilah, bentuk istilah dari Tahap 5 gate mekanis, register US).
7. Jika tersedia, jalankan **LanguageTool** (gratis, `en-US`) sebagai pelengkap, lalu verifikasi sarannya secara manual — jangan terima mentah-mentah.
8. Saat konten input berbahasa Indonesia, pastikan hasil terjemahan tidak meninggalkan jejak struktur kalimat Indonesia yang terdengar aneh dalam English (periksa hasil terjemahan sebagai English asli, bukan "English terjemahan").

## 2. (Referensi Input) Bahasa Indonesia — untuk memahami input, bukan menulis

Input penelitian dapat diberikan dalam Bahasa Indonesia. Untuk menafsirkan dengan benar:
- Acuan kaidah ID: EYD (Permendikbudristek No. 18 Tahun 2022) & KBBI — hanya untuk memahami/tidak salah tafsir input.
- Jangan menyalin kalimat ID ke naskah; terjemahkan ke English-US yang natural.

### 2.1 Kata baku vs tidak baku (contoh umum, untuk memahami input ID)
| Kata baku | Variasi tak baku |
|------|-----------|
| analisis | analisa |
| apotek | apotik |
| risiko | resiko |
| praktik | praktek |
| karier | karir |
| izin | ijin |

> Informasi: verifikasi keraguan ke KBBI (kbbi.kemdikbud.go.id) bila input ambigu.

## 3. English (US) — Kaidah Penting (Output Wajib)

Acuan: MLA/CMOS/APA house style sesuai jurnal; **wajib konsisten dalam register US** (`analyze`, `color`, `center`, `modeling` — bukan UK).

### 3.1 Subject–verb agreement
- Singular/plural subjek harus cocok dengan verba: `The results show ...` (bukan `shows`).
- Kesalahan umum: `Each of the studies is ...`; `The number of participants was ...` vs `A number of participants were ...`.
- Subjek majemuk dengan `and` → plural; `or/nor` → ikut elemen terdekat.

### 3.2 Article usage (a/an/the)
- `a` sebelum bunyi konsonan (`a university`), `an` sebelum bunyi vokal (`an hour`).
- `the` untuk spesifik/known; tanpa artikel untuk general plural.

### 3.3 Tense consistency
- Manuscript convention: present tense untuk yang tetap berlaku (`we argue`, `Table 1 shows`), past tense untuk pelaporan hasil/aksi penelitian (`we collected`, `the results indicated`).
- Pilih satu tense per fungsi dan jaga konsisten antar bagian; jangan berpindah tanpa alasan.

### 3.4 Prepositions
- Kesalahan umum: `different from` (bukan `than`), `similar to`, `consistent with`, `based on`, `in contrast to` (bukan `with`).
- `compared with` (membandingkan kesamaan/perbedaan) vs `compared to` (analogi).

### 3.5 Punctuation (US)
- **Serial comma** (Oxford comma) wajib di MLA/Chicago: `X, Y, and Z`.
- Comma splice: dua independent clauses dipisah koma tanpa konjungsi → ganti dengan titik/`;`/`and`/`but`.
- Semicolon untuk memisah klausa padat atau daftar yang mengandung koma.
- Apostrophe possessive: `the study's aim` (bukan `studies`); `its` tanpa apostrof (posesif), `it's` = it is.
- Quote: US memakai double quotes `"..."`.

### 3.6 Spelling register (WAJIB US)
- US: `analyze, color, center, modeling, behavior, organization`.
- Coret varian UK (`analyse, colour, centre, modelling, behaviour, organisation`) dari naskah.
- Periksa kemiringan ke British pada kata dasar yang sama; pilih SATU register dan konsisten.

## 4. Pola Error Umum (best practice untuk English-US)

| Kategori | English (US) |
|----------|--------------|
| Agreement | subject–verb agreement |
| Kata | spelling US/UK (harus US) |
| Preposisi | prepositions |
| Tense | tense consistency |
| Tanda baca | serial comma WAJIB (MLA/Chicago) |
| Kepemilikan | `its` vs `it's`, apostrophe |

## 5. Tools (Opsional)

- **LanguageTool** — gratis, API: `https://api.languagetool.org/v2/check`; parameter `language=en-US`. Saran harus **diverifikasi manual**.
- **Hunspell** — dictionary spell checker (via CLI) untuk cek cepat.

> Aturan utama: sarana otomatis membantu menemukan, manusia/AI memutuskan. Jangan ubah makna hanya karena "dipangkas tools".

## 6. Output

```
grammar_report.md   — daftar temuan (kategori, lokasi, saran, perbaikan) + status per item
```

Gunakan `checklists/grammar_check.md` sebagai pelacak per bagian naskah.