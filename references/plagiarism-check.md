# Plagiarism Check — Deteksi Plagiarisme & Integritas Sitasi (English-US)

Panduan memeriksa plagiarisme sebelum submission (Tahap 6) pada naskah output berbahasa **English (US)**. Tujuan: memastikan setiap kalimat berasal dari penulis atau dikutip/diparafrase dengan atribusi benar. (Konten input boleh Bahasa Indonesia/English, tetapi naskah final diperiksa sebagai teks English.)

## 1. Jenis Plagiarisme

| Jenis | Deskripsi | Tanda |
|-------|-----------|-------|
| **Copy-paste (direct)** | Menyalin kalimat/paragraf verbatim tanpa kutip | Blok kata berbunyi tidak seperti gaya penulis di sekitarnya |
| **Mosaic / patchwork** | Menyusun ulang kata-kata sumber tanpa memparafrase sungguhan | Struktur kalimat tetap ikut sumber, hanya kata diganti sinonim |
| **Paraphrase tanpa atribusi** | Parafrase sah tetapi tidak menyebut sumber | Klaim spesifik/data/angka tanpa sitasi |
| **Self-plagiarism** | Mengirim ulang bagian paper/tugas sendiri yang sudah dipublikasi (kecuali diizinkan) | Kalimat identik dengan karya penulis sendiri |
| **Citation laundering / salah sitasi** | Mengutip sumber yang tidak pernah dibaca (sitasi sekunder tanpa verifikasi) | Sumber di daftar pustaka tidak sesuai klaim |

## 2. Workflow — Verifikasi Lokal (dapat dikerjakan agent)

Berjalan tanpa tools berbayar. Lakukan berurutan:

### 2.1 Overlap terhadap korpus (Literature Matrix)
- Bandingkan kalimat/klausa naskah dengan **teks sumber di Literature Matrix / file paper yang ada**.
- Deteksi: frasa verbatim ≥ 7 kata berturut-turut (EN) yang bukan sitasi → tandai.
- Klaim proksimitas: jika naskah "kata-kata persis sumber" tanpa tanda kutip & sitasi → **red flag**.

### 2.2 Cek kutipan verbatim
- Setiap kutipan langsung (quoted) harus **dalam tanda kutip** + halaman (jika gaya mensyaratkan).
- Kutipan panjang: aturan blok/indent sesuai gaya.
- Verifikasi kutipan benar-benar ada di sumber (jangan mengarang isi kutipan) — anti-hallucination.

### 2.3 Uji kadar parafrase
Untuk parafrase yang baik:
1. Ada sitasi ke sumber asli.
2. Struktur kalimat **bukan** salinan berurutan dari sumber (cek urutan klausa).
3. Tidak sekadar mengganti sinonim tanpa mengubah struktur.
4. Makna tetap akurat — parafrase tidak boleh mengubah klaim.

Beri nilai parafrase tiap paragraf: `padanan tepat (quotation)` / `parafrase baik` / `parafrase tipis (risiko)` / `salinan`.

### 2.4 Self-plagiarism
- Cek kalimat yang identik dengan publikasi/paper penulis sebelumnya (jika tersedia).
- Sektor konteks Indonesia: tesis pada platform dapat diserahkan dengan izin; tetap laporkan batasnya dan beri tahu pengguna.

### 2.5 Verifikasi sumber jaringan (opsional, bila ada akses)
- Cari frasa verbatim khas (mis. 8–10 kata) ke mesin pencari untuk mendeteksi sumber tak dikenal.
- Jangan mengandalkan hasil pencarian sebagai bukti final; gunakan sebagai sinyal untuk pengecekan manual.

## 3. Skor Kesamaan (Similarity)

Bila memakai tools (Turnitin/iThenticate/PlagiarismCheck) atau estimasi lokal:

| Band | Interpretasi |
|------|--------------|
| 0–10% | Wajar bila dari kutipan pendek & daftar pustaka; tetap cek kalimat sumber (bukan template). |
| 10–20% | Periksa sumber berulang; parafrase ulang bagian yang overlap tanpa kutip. |
| >20% | Wajib direvisi: sitasi/kutip/parafrase seluruh area overlap sebelum submit. |

> Similarity tool bukan penilai bahasa/tata bahasa; dan bukan pengganti verifikasi salah sitasi. Score rendah ≠ bebas plagiat.

## 4. Rules (Anti-Plagiarism — selalu berlaku)

1. **Jangan** menyalin kalimat dari sumber tanpa tanda kutip + sitasi.
2. **Jangan** memparafrase tanpa sitasi (APA/MLA/Chicago/Harvard/Vancouver — lihat `references/citation-formatter.md`).
3. **Jangan** mengarang atau mempercantik kutipan.
4. **Jangan** menerima teks "hasil AI" yang menyalin sumber; kerahasiaan akademik tetap berlaku.
5. Setiap data/angka/klaim spesifik punya sumber di Literature Matrix — kalau tidak → tandai `[DATA]`/`UNVERIFIED`.

## 5. Integritas & Etika

- Parafrase sah = menulis ulang ide dengan kata sendiri **sambil** menyitasi; bukan sinonim-switch.
- Lapor ke pengguna setiap temuan overlap yang signifikan; jangan diam-diam memperbaiki dan menganggap selesai.
- Bahasa: naskah output adalah English-US; korpus acuan = jurnal internasional. Bila konten input berbahasa Indonesia, pastikan hasil terjemahan bukan salinan terjemahan mentah dari sumber (parafrase tetap wajib).

## 6. Output

```
plagiarism_report.md   — daftar area overlap (lokasi, sumber, jenis plagiat, keputusan: kutip/parafrase/sitasi/hapus)
```

Gunakan `checklists/plagiarism_check.md` untuk pelacakan per bagian.