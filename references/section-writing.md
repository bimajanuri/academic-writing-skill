# Section Writing — Panduan Penulisan per Section (Tahap 3)

Panduan menulis section-by-section dengan urutan wajib, prinsip paragraf, dan claim-evidence mapping. Diadaptasi dari metodologi Prof. Peng Sida dan SNL-UCSB.

## 1. Urutan Wajib Menulis

```
1.  Draft 0 Introduction   → kerangka disposable (guardrails)
2.  Literature Review       → feed dari Literature Matrix
3.  Methodology            → desain, variabel, sampel, analisis
4.  Results & Discussion   → bukti nyata
5.  Conclusion             → jawaban RQ
6.  Final Introduction     → DITULIS ULANG dari nol
7.  Abstract               → terakhir
```

**Kenapa Introduction dua kali?** Draft 0 memaksa klarifikasi klaim sebelum eksperimen/penulisan. Final Introduction dijamin hanya menjanjikan apa yang benar-benar didukung bukti. Jangan "copy-edit" Draft 0 menjadi Final — tulis ulang.

## 2. Prinsip Paragraf (Global)

1. **Satu paragraf = satu pesan.** Kalimat pertama menyatakan pesan.
2. **Topic sentence = klaim**, bukan konteks/latar.
3. **Flow eksplisit**: setiap kalimat terhubung ke kalimat sebelumnya (sebab, kontras, konsekuensi, elaborasi, contoh).
4. **Define-before-use**: istilah baru didefinisikan sebelum dipakai.
5. **Panjang paragraf**: 4–6 kalimat.
6. **Reverse outlining** setiap selesai satu bagian:
   - Tulis klaim utama section
   - Tulis topic sentence tiap paragraf
   - Tulis poin evidence tiap paragraf
   - Pastikan mapping topic→klaim dan evidence→topic
7. Jika flow lemah → tambah heading sementara + transisi eksplisit, lalu hapus heading yang tak perlu.

## 3. Panduan per Section

### 3.1 Abstract
- Tulis **terakhir**.
- Struktur (berurutan): Latar masalah → Metode (ringkas) → Temuan utama (angka!) → Kontribusi/implikasi.
- 150–250 kata, satu paragraf (sesuai gaya jurnal).
- Tanpa sitasi, tanpa jargon yang tidak didefinisikan.
- Setiap klaim di abstract HARUS muncul di dalam paper (claim-evidence).

### 3.2 Introduction (Final)
Urutan move (dari SNL-UCSB & Prof. Peng):
1. **Stakes**: siapa yang dirugikan, mengapa domain penting
2. **Problem gap**: keterbatasan struktural pendekatan existing (bukan "belum akurat", tapi "asumsi X gagal saat Y")
3. **Key abstraction**: konsep bernama yang menangkap insight Anda
4. **Design intuition**: mengapa pendekatan Anda masuk akal
5. **Contributions**: numbered, claim-first, bisa-dibuktikan (feed list dari `contribution_statement.md` — Modul A; jangan dikurangi/dilebihkan tanpa alasan)
6. **Results preview**: angka terbaik di akhir
- Kalimat terakhir paragraf awal = kalimat klaim (bukan basi).
- Heading bernama: klaim bukan topik.
- Outline paragraph opsional di akhir (& sesuai gaya jurnal).

### 3.3 Literature Review
- Kelompokkan paper dari matrix **berdasarkan tema** (mis. pengaruh durasi, pengaruh tipe konten, tinjauan meta-analisis).
- Untuk setiap kelompok: sintesis → apa yang sudah diketahui → kelemahannya → mengarah ke gap.
- Jangan "dictionary of studies" (paper per paper); fokus temuannya.
- Jelaskan **Theory Used** sebagai kerangka.
- Akhiri dengan sub-bagian "Research Gap & Posisi Paper Ini".
- Sitasi lengkap (dari matrix, format final via citation-formatter).

### 3.4 Methodology
- Deskriptif & reproducible: siapa yang bisa mengulang berdasarkan teks?
- Komponen: desain, populasi/sampel (n, teknik sampling), instrumen (validitas/reliaibilitas), variabel (IV/DV/definisi operasional), prosedur, analisis data (statistik/software).
- Urutan: Participant → Measures → Procedure → Analysis (untuk empiris).
- Setiap pilihan didesain: "kita pakai X karena Y" (bukan sekadar "kami menggunakan X").
- Untuk review: PRISMA flow, kriteria inklusi/eksklusi, strategi pencarian, quality assessment.

### 3.5 Results
- Deskriptif dulu, baru inferensial.
- Tabel/gambar = alat argumen, bukan dekorasi. Setiap float dirujuk dalam teks.
- **Interpretasi di dalam teks**: "Tabel 2 menunjukkan IPK turun 0.4 poin (p < .01) untuk durasi > 4 jam, mengonfirmasi H1."
- Akhiri kluster eksperimen dengan **Takeaway paragraph** (sintesis).
- Jangan mengulang angka tabel di teks — sorot hanya yang penting.
- Jangan membahas/membandingkan dengan literatur di sini (itu bagian Pembahasan).

### 3.6 Discussion
- Kembalikan ke RQ: temuan menjawab apa?
- Bandingkan dengan literatur di matrix (konfirmasi/kontradiksi/diperluas).
- Implikasi teoretis (kontribusi ke Theory Used) & praktis.
- Keterbatasan (jujur; jangan overclaim).
- Saran penelitian lanjut di sini.
- Jangan memperkenalkan hasil baru.

### 3.7 Conclusion
- Ringkas temuan kunci (angka utama).
- Jawab RQ satu-satu.
- Kontribusi (ringkas dari intro, kini didukung bukti).
- Saran praktis & penelitian lanjut.
- Tanpa padding, tanpa klaim baru.

## 4. Gaya Kalimat — Quick Rules

- Rata-rata ~21 kata/kalimat; maks 40 kata.
- Aktif voice selalu; tanpa "It is believed that".
- Zero hedging: "Hasil menunjukkan" bukan "Hasil mungkin menunjukkan".
- Tanpa filler adjective: "novel", "significant" (tanpa statistik), "robust", "state-of-the-art", "comprehensive". Ganti angka spesifik.
- Named over vague: "an event-centric decomposition" bukan "a decomposition method".
- "We show X" vs "X is shown" → selalu aktif.
- Interpretasi figur: "Gambar 1 mengungkap ...", bukan "Lihat Gambar 1".
- Kalimat pertama section = pernyataan kesimpulan section (skim-reader friendly), bukan "Pada bagian ini ...".

## 5. Claim-Evidence Map

Ada saat menulis paragraf klaim atau setelah section selesai. Format:

| # | Claim | Evidence (lokasi) | Status |
|---|-------|-------------------|--------|
| 1 | Durasi medsos menurunkan IPK | Hasil regresi, Tabel 3 | supported |
| 2 | Frekuensi tidak signifikan | Hasil regresi, Tabel 3 | supported |
| 3 | Temuan berlaku lintas gender | Tidak ada subgroup analysis | needs evidence |

**Aturan**: klaim "needs evidence" atau "unsupported" harus dikoreksi (lemahkan klaim, cari bukti, atau hapus) sebelum quality gate.

## 6. Checklist per Section

Setelah menulis section, jalankan checklist yang relevan:
- Umum: `checklists/post_draft.md`
- Sebelum submit: `checklists/pre_submission.md`

## 7. Output Tahap 3

```
draft_<section>.md      — draft per section (mis. draft_introduction.md)
claim_evidence_map.md   — peta klaim-evidence seluruh paper
```

## Anti-Patterns (Jangan Lakukan)

- **Incremental patching**: menulis seolah-olah menambal baseline naif. Posisikan sebagai solusi struktural.
- **Dictionary of studies** di lit review.
- **Overclaim**: klaim yang melebihi bukti.
- **So-what syndrome**: hasil tanpa implikasi.
- **Keterbatasan disembunyikan**.
- **Terminologi berganti-ganti** untuk konsep yang sama.