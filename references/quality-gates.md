# Quality Gates — Gate Mekanis, Gate Semantik, dan Red-Team (Tahap 5)

Panduan quality control berlapis diadaptasi dari SNL-UCSB paper-writing-skill. Berlaku untuk SETIAP edit teks akademik, bukan hanya draft penuh.

## Lapisan Quality Control

```text
Layer 1: Humanizer        → revision-guide.md (25 pola AI)
Layer 2: Gate Mekanis     → grep/pattern scan (mudah otomatis)
Layer 3: Gate Semantik    → reader-judgment audit
Layer 4: Red-Team         → reviewer independen fresh-reader
```

**Hanya teks yang lolos Layer 1–4 yang boleh ditampilkan/di-commit.**

---

## 1. Gate Mekanis (Layer 2)

Jalankan dengan scan pola / grep. Laporkan JUMLAH temuan (bukti), bukan sekadar "sudah dicek".

### M1 — Em-dash & En-dash
- Pola: `—`, `--`, ` – `
- **Perbaiki**: ganti titik/koma/kolon/tanda kurung; atau tulis ulang kalimat.
- Termasuk dalam kalimat (non-kode), bukan path/URL.

### M2 — Kalimat Panjang
- Kalimat > 40 kata → pecah.
- Rata-rata target ~21 kata.

### M3 — Banned words & filler adjectives
Daftar pantang (dalam akademik, kecuali diperlukan): *novel, significant (tanpa statistik), state-of-the-art, comprehensive, robust (tanpa definisi), substantial, promising, impressive, moreover, notably, leveraging, delve, pivotal, nuanced, meticulously, transformative, landscape (abstrak).*
- Ganti dengan angka spesifik atau hapus.

### M4 — Passive voice
- Pola: `is/are/was/were + past participle` tanpa agen.
- Perbaiki: aktif. "Akurasi dicapai oleh X" → "X mencapai".
- Pengecualian sah: ketika agen tidak penting/konvensi metode tertentu; tapi minimalis.

### M5 — Throat-clearing
- Pola: "Pada bagian ini", "Perlu dicatat bahwa", "Untuk menjawab masalah ini", "In order to", "With respect to".
- Hapus dan mulai dengan aksi/klaim.

### M6 — Hedging
- Pola: "dapat berpotensi", "bisa diharapkan", "kemungkinan akan membantu", "I suspect".
- Ganti tegas: "menghasilkan", "menurunkan", "mencapai".

### M7 — Negation-first
- Pola: "bukan X", "daripada X" di kalimat yang harusnya mengasertifkan YA.
- Tulis ulang secara positif.

### M8 — Terminologi drift
- Konsep sama dengan nama berbeda di berbagai bagian → konsistenkan.

### M9 — Repetisi
- Kalimat/klausa serial berulang ("menunjukkan...", "menunjukkan...").
- Gabung atau variasi.

### M10 — Fragmentasi/closer
- One-line closer yang mengulang (§2 humanizer).

### M11 — Formatting by rule
- Bold dekoratif, heading Title Case/emoji, curly quotes (§19–§21 humanizer).

### M12 — Sitasi
- Setiap klaim teknis yang dipinjam dari sumber lain punya sitasi yang diteruskan dari section sebelumnya (tidak hilang saat copy).

**Cara menyajikan hasil gate mekanis:**

| Kode | Pelanggaran | Jumlah ditemukan | Jumlah diperbaiki | Contoh fix |
|------|-------------|------------------|-------------------|------------|
| M1 | em-dash | 4 | 4 | "X — yang Y" → "X, yang Y" |
| M3 | banned words | 2 | 2 | "novel" → angka konkret |
| ... | | | | |

---

## 2. Gate Semantik (Layer 3)

Audit pembaca. Jalankan membaca teks baris-baris, bukan grep.

### S1 — Define-before-use
- Setiap istilah/pelabelan didefinisikan saat pertama muncul.

### S2 — Followability
- Pembaca bisa mengikuti tanpa lompat; tidak ada asumsi tersembunyi.

### S3 — Coherence & flow
- Last sentence paragraf N → first sentence N+1 nyambung (sebab/kontras/konsekuensi).
- Reverse outlining: setiap paragraf bisa dipetakan ke klaim section.

### S4 — Claim-evidence alignment
- Setiap klaim didukung evidence (di section itu sendiri).
- Claim di Abstract/Introduction → harus punya mapping ke bukti di Results.

### S5 — Thesis-tie / RQ-tie
- Setiap section jelas berkontribusi ke RQ; tidak ada bab pengisi.

### S6 — Honest positioning
- Tidak overclaim: klaim = level bukti.
- "menggambarkan hubungan" vs "membuktikan sebab-akibat" → sesuaikan dengan desain.

### S7 — Non-duplication
- Tidak ada dua tempat membahas hal yang sama tanpa alasan (kecuali untuk gaya/takeaway).

### S8 — Lexical & structural consistency
- Nama mekanisme/baseline/metrik konsisten; heading mencerminkan isi; label figur/tabel cocok.

### S9 — Figure-text-caption consistency
- Apa yang dikatakan teks ≈ apa yang figur/tabel tampilkan ≈ caption.

### S10 — Keterbatasan
- Keterbatasan disebutkan; tidak disembunyikan di catatan kecil.

### S11 — Conversational signposting every section head
- Opener section adalah klaim, bukan "Pada bagian ini membahas...". (Untuk gaya akademik yang sesuai.)

### S12 — Closure gate
- Periksa apakah draft ditutup dengan ringkasan + implikasi, bukan berakhir mendadak.

**Penyajian hasil gate semantik:**

| Kode | Temuan | Severity (Critical/Major/Minor) | Bukti (lokasi) | Fix |
|------|--------|--------------------------------|----------------|-----|
| S4 | Klaim tanpa evidence | Critical | Intro ¶2 | Mapping ke Tabel 4 |

---

## 3. Red-Team Protocol (Layer 4)

Reviewer yang TIDAK menulis teks, membaca ulang dengan lensa pembaca pertama kali.

### Prosedur
1. **Pisahkan peran**: penulis (Layer 2–3) ≠ reviewer (Layer 4). Anggap teks datang dari orang lain.
2. **Re-run mechanical gate** (Layer 2) tanpa asumsi sudah bersih.
3. **Apply semantic gate** (Layer 3) dengan lensa fresh-reader.
4. **Kembalikan findings terperinci**, bukan ya/tidak:
   - Setiap temuan: lokasi, jenis (mechanical/semantic), severity, saran.
5. **Prioritas**: Critical → fix wajib; Important → fix before submit; Minor → polish opsional.

### Kategorisasi Severity (untuk akademik)
- **CRITICAL**: menyebabkan rejection — klaim tanpa bukti, bagian hilang, overclaim besar, sitasi palsu, struktur rusak.
- **IMPORTANT**: kasat mata oleh reviewer — incoherence, terminology drift, passive voice berlebihan, tabel tidak dirujuk.
- **MINOR**: level polish — jeda kata, kalimat panjang, heading tidak rapi.

### Loop audit-fix
```
1. Red-team → findings
2. Author fix sesuai findings (satu area per iterasi)
3. Re-run red-team pada area yang berubah
4. Ulangi sampai ZERO CRITICAL/IMPORTANT tersisa
```
Simpan ledger hasil di `revision_log.md`.

---

## 4. Reviewer Simulation (7 Dimensi) — untuk Draft Final

Selain red-team, nilai keseluruhan draft dengan rubrik 7 dimensi (35 poin) sebagai simulasi reviewer (dari lishix520/academic-paper-skills):

| Dimensi | Skor | Kriteria singkat |
|---------|------|------------------|
| Kejelasan argumen | /5 | RQ jelas, alur logis |
| Kelengkapan argumentasi | /5 | semua klaim didukung |
| Dukungan literatur | /5 | cakupan & currency |
| Kejelasan metodologi | /5 | reproducible |
| Ekspresi kebaruan | /5 | kontribusi beda |
| Kejelasan & struktur | /5 | organisasi, heading |
| Kesesuaian target & teknis | /5 | format, sitasi, length |

**Ambang**: ≥ 28/35 → submission-ready; 21–27 → revisi; < 21 → restrukturisasi.

---

## 5. Output Tahap 5

```
draft_revised.md          — draft final hasil semua perbaikan
humanizer_report.md       — pola ditemukan vs diperbaiki (Layer 1)
gate_report.md            — hasil gate mekanis + semantik (Layer 2–3)
red_team_findings.md      — temuan reviewer (Layer 4)
revision_log.md           — ledger perubahan per iterasi
```

## Aturan Operasional

1. Jangan pernah mengklaim audit lolos hanya dengan "membaca mental" — sertakan bukti (contoh hit, count).
2. Red-team WAJIB terpisah dari penulis di sesi yang sama (reviewer bersih).
3. Setiap substantive change → re-run gate sekurang-kurangnya pada area berubah.
4. Prioritas: dari Critical ke Minor; jangan ditunda sebagai "done".
5. Sitasi palsu = Critical (lihat citation-formatter §7).