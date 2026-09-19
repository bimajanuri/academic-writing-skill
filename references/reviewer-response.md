# Reviewer Response & Rejection Handling — Pascasubmisi (Tahap 5.5 / Post-Submission)

Panduan menyikapi keputusan editor dan komentar reviewer setelah paper disubmit. Terhubung dengan red-team (Tahap 5 Layer 5) yang mengantisipasi reviewer: setelah surat editor tiba, gunakan panduan ini untuk menyusun revisi & tanggapan.

Keputusan email pertama editor adalah **keputusan eksekutif** (desk reject / out of scope). Jika naskah lolos ke juri, keputusan akhir umumnya `accepted / minor revision / major revision / reject`.

## 1. Tipe Komentar Reviewer & Respons yang Tepat

| Tipe Komentar | Contoh | Respons |
|---------------|--------|---------|
| **Salah paham** (misread) | "Paper tidak kontrol X" padahal sudah | Sangat umum. Jawab dengan bukti di teks, tanpa menyalahkan; tunjukkan lokasi baris/section. Tambahkan klarifikasi di teks agar pembaca lain tidak salah baca juga. |
| **Kurang bukti/detail** | "Tambahkan analisis sensitivitas" | Akui nilai komentar; beri apa yang bisa diberi (lampiran, robustness). Kalau tidak feasible, jelaskan sedang dan alternatif; tidak boleh menolak dengan alasan teknis dangkal. |
| **Perlu literatur tambahan** | "Bandingkan dengan studi X" | Tambah sitasi & diskusi. Hati-hati: jangan asal menambah literatur tanpa relevansi — tambahkan hanya yang benar-benar memperkuat. |
| **Perlu eksperimen/tugas baru** | "Tambah studi pengguna" | Kalau memungkinkan → tambahkan sebagai supplementary (tidak menunda iterasi utama). Kalau tidak → jadwalkan sebagai future work DENGAN alasan yang logis; jelaskan dampak pada klaim jika studi ditunda. |
| **Kritik konsep keseluruhan** | "Fundamentalnya flawed; posisi salah" | Kasus paling serius. Pertimbangkan apakah reviewer benar (bisa jadi benar). Jika tidak → respons terstruktur mempertahankan di atas bukti, bukan emosi. Pertimbangkan appeal jika jelas-jelas salah paham scope. |
| **Komentar minor** (bahasa, format, numbering) | "Fix typo; rapikan tabel" | Patuhi semua; dilakukan cepat; tandai tiap poin. |

## 2. Strategi Minor vs Major Revision

**Minor revision** (replikasi min 1–2 putaran):
- Kerjakan semua poin; jangan "argue back" untuk poin minor — lebih murah mematuhi.
- Actual risiko: rejection masih mungkin. Pastikan juga memperbaiki isu mayor yang reviewer singgung.

**Major revision** (revisi substansial; putaran bisa panjang):
- Pisahkan komentar menjadi: (a) yang saya setujui; (b) yang bisa saya patuhi sebagian; (c) yang saya tolak dengan alasan kuat.
- Prioritaskan komentar yang menyentuh **klaim inti** — jika klaim berubah, kontribusi statement (Modul A) harus disesuaikan dan hasilnya dijelaskan kepada editor.
- Kerja nyata > janji: reviewer menilai revisi, bukan retorika.

## 3. Struktur Response to Reviewer

Gunakan template `templates/response_to_reviewer.md`:

1. **Surat balasan ke editor** (1 halaman): ringkasan perubahan per kategori + apresiasi + konfirmasi semua komentar dijawab
2. **Point-by-point per reviewer**: daftar komentar (verbatim atau ringkas sesuai kebijakan jurnal) → respons per komentar
3. Setiap respons mengandung 3 unsur:
   - **Acknowledgment** singkat ("Terima kasih, poin valid")
   - **Resolusi**: apa yang DIUBAH di naskah (section, halaman, gambar/tabel baru)
   - **Bukti**: kutip kalimat baru / klaim hasil baru / lokasi persis
4. Jika menolak komentar: jelaskan "kami tidak mengubah X karena <alasan berbasis bukti>", dan beri kompensasi (mis. klarifikasi di teks).

**Aturan nada**:
- Gunakan orang pertama jamak ("kami"), netral, tanpa kata sarkastik/defensif ("seperti yang telah kami jelaskan", "dengan hormat kami berbeda pendapat").
- Tulis tanggapan untuk **editor** sebagai pembaca utama, bukan hanya untuk reviewer.
- Setiap poin Wajib menyebut DI MANA perubahan terjadi (dokumen + section + baris), agar mudah diverifikasi.

## 4. Rejection Handling Decision Path

Setelah keputusan `reject`, tanyakan **timing & alasan** sebelum menyerah:

```
Rejection? 
├─ Desk reject (belum review) 
│    → periksa scope/format → kirim jurnal lain lebih cocok (Modul B) — naskah di banyak jurnal bukan self-plagiarism
├─ Reject setelah review 
│    ├─ Reviewer salah paham fundamental? → pertimbangkan appeal ke editor (jarang berhasil; hanya jika jelas)
│    ├─ Alasan umum (novelty kurang eksplisit, metode, analisis)? → perbaiki naskah berbekal komentar, kirim ke jurnal lain
│    └─ Jurnal minta transfer internal? → pertimbangkan (rebut oleh editorial, review bisa dipakai ulang)
└─ Reject di end-stage (editor paten)
     → Waktu terbaik ditentukan: apakah biaya perbaikan (waktu/tenaga) menaikkan peluang nyata, atau invest ke proyek baru?
```

- **Jangan** menyusun ulang naskah yang sama tanpa mengubah substansi (risiko jadi "recycled paper").
- Update `journal_comparison.md` dan `cover_letter.md` (Modul B) saat pindah jurnal: target baru → cover letter baru.
- Evaluasi putusan yang dibuat tim ("post-mortem" singkat) untuk proyek berikutnya.

## 5. Koneksi ke Red-Team (Tahap 5 Layer 5)

- Red-team di Tahap 5 mensimulasikan reviewer; temuan CRITICAL/IMPORTANT-nya adalah "komentar" yang harus diselesaikan sebelum submit.
- Setelah surat editor tiba: klasifikasikan setiap komentar dengan kategori §1 dan susun respons dengan §3 — ini yang menghemat waktu mayor revision.

## Output

```
response_to_reviewer.md   — surat editor + point-by-point (template templates/response_to_reviewer.md)
revision_log.md           — log perubahan yang dijanjikan & statusnya
decision_log.md           — catatan keputusan (untuk module ini & proyek berikutnya)
```