# Citation Formatter — Format Sitasi & Referensi (Tahap 4)

Panduan memformat in-text citation dan bibliography dalam **6 gaya pilihan**: **APA 7, MLA 9, Turabian, Vancouver, Harvard, Chicago** — plus **IEEE** sebagai opsi tambahan untuk bidang teknik.

Template detail per gaya ada di `templates/citation_templates/`.

## 1. Pilih Gaya

Tanyakan kepada pengguna. Rekomendasi berdasarkan bidang:

| Bidang | Umumnya dipakai |
|--------|-----------------|
| Psikologi, Pendidikan, Sosial, Bisnis, Kesehatan | **APA 7** |
| Teknik, Komputer, Informatika | **IEEE** (opsi tambahan) |
| Humaniora, Sastra, Bahasa | **MLA** / **Turabian** / **Chicago** |
| Sejarah, Filosofi | **Chicago (Notes)** / **Turabian (Notes)** |
| Tesis/Disertasi/Makalah mahasiswa | **Turabian** |
| Ekonomi, Manajemen, Sosial (Inggris), Kesehatan | **Harvard** |
| Kedokteran, Biomedis | **Vancouver** |
| Jurnal target | Sesuai gaya jurnal (mis. mengikuti template jurnal) |

Jika pengguna tidak tahu → tanya bidang, beri rekomendasi di atas. **Gaya juga bisa ditentukan di Tahap 2** (berdasarkan jurnal target) dan diformat penuh di Tahap 4.

## 2. Data Referensi yang Dibutuhkan

Untuk satu paper, idealnya punya (dari Literature Matrix):
- DOI, Judul, Penulis (semua jika < jumlah maks; `et al.` sesuai gaya)
- Jurnal/venue, Tahun, Volume, Nomor, Halaman, Penerbit, Kota
- Untuk web: URL + tanggal akses (khusus APA/MLA/Chicago)

Jika ada field hilang → tulis placeholder `[data tidak tersedia]` dan tandai ke pengguna, JANGAN mengarang.

## 3. Quick Format Reference

### In-Text Citation

| Gaya | Kutipan naratif | Kutipan kurung |
|------|-----------------|----------------|
| **APA 7** | Rahman (2023) menyatakan ... | (Rahman & Sari, 2023) |
| **MLA 9** | Rahman argues ... | (Rahman 45) — dengan halaman |
| **Turabian Author-Date** | Rahman and Sari (2023) ... | (Rahman and Sari 2023, 210) |
| **Vancouver** | Rahman et al. concluded ...¹ | ... ¹ |
| **Harvard** | Rahman and Sari (2023) ... | (Rahman and Sari, 2023, p. 210) |
| **Chicago Author-Date** | Rahman (2023) ... | (Rahman 2023) |
| **IEEE** | As discussed in [3] ... | ... [3] |

### Daftar Pustaka (contoh, jurnal)

**APA 7:**
```
Rahman, A., & Sari, D. (2023). Pengaruh media sosial terhadap prestasi akademik mahasiswa. Jurnal Psikologi Indonesia, 12(3), 210–225. https://doi.org/10.xxxx/xxx
```

**IEEE:**
```
[1] A. Rahman and D. Sari, "Pengaruh media sosial terhadap prestasi akademik mahasiswa," Jurnal Psikologi Indonesia, vol. 12, no. 3, pp. 210–225, 2023, doi: 10.xxxx/xxx.
```

**MLA 9:**
```
Rahman, Ahmad, and Dewi Sari. "Pengaruh Media Sosial terhadap Prestasi Akademik Mahasiswa." Jurnal Psikologi Indonesia, vol. 12, no. 3, 2023, pp. 210–225.
```

**Chicago Author-Date:**
```
Rahman, Ahmad, and Dewi Sari. 2023. "Pengaruh Media Sosial terhadap Prestasi Akademik Mahasiswa." Jurnal Psikologi Indonesia 12 (3): 210–225. https://doi.org/10.xxxx/xxx.
```

**Chicago Notes:**
```
1. Ahmad Rahman and Dewi Sari, "Pengaruh Media Sosial terhadap Prestasi Akademik Mahasiswa," Jurnal Psikologi Indonesia 12, no. 3 (2023): 210–225.
Bibliografi:
Rahman, Ahmad, and Dewi Sari. "Pengaruh Media Sosial terhadap Prestasi Akademik Mahasiswa." Jurnal Psikologi Indonesia 12, no. 3 (2023): 210–225.
```

**Turabian (Notes-Bibliography):**
```
1. Ahmad Rahman and Dewi Sari, "Pengaruh Media Sosial terhadap Prestasi Akademik Mahasiswa," Jurnal Psikologi Indonesia 12, no. 3 (2023): 210–225.
Bibliografi:
Rahman, Ahmad, and Dewi Sari. "Pengaruh Media Sosial terhadap Prestasi Akademik Mahasiswa." Jurnal Psikologi Indonesia 12, no. 3 (2023): 210–225.
```

**Harvard (Cite Them Right):**
```
Rahman, A. and Sari, D. (2023) 'Pengaruh media sosial terhadap prestasi akademik mahasiswa', Jurnal Psikologi Indonesia, 12(3), pp. 210–225. doi: 10.xxxx/xxx.
```

**Vancouver:**
```
1. Rahman A, Sari D. Pengaruh media sosial terhadap prestasi akademik mahasiswa. Jurnal Psikologi Indonesia. 2023;12(3):210–225. doi:10.xxxx/xxx.
```

## 4. Aturan Penulisan Nama (Internasional vs Indonesia)

- **APA/MLA/Chicago/Turabian**: "NamaAkhir, NamaAwal." → `Rahman, A.` / `Rahman, Ahmad`. Nama yang mengikuti format Barat ditulis `Smith, J.`
- **IEEE/Vancouver**: `A. Rahman` / `Rahman A.` (di bibliography Vancouver seluruhnya `Rahman A`).
- **Harvard**: `Rahman, A.` (nama belakang + inisial) — daftar pustaka urut `Belakang, A.`
- Untuk nama Indonesia yang penulisnya mencantumkan 2 kata tanpa tanda pisah (mis. "Ahmad Rahman H."), pertahankan suku kata yang MENCANTUMKAN sebagai nama keluarga; jika tidak jelas → tanyakan atau gunakan urutan sesuai paper asli.
- Hindari salah: jika paper menuliskan "Rahman, Ahmad" → di pertukaran author-date tetap penulis asli.

## 5. Pemuatan `et al.` / "dan kawan-kawan"

| Gaya | Aturan |
|------|--------|
| APA 7 | 3+ penulis → in-text `et al.` sejak pertama; di daftar pustaka semua penulis |
| MLA | 3+ penulis → `Rahman et al.` |
| Turabian | 3+ → in-text `et al.` (Author-Date) / catatan penuh di catatan pertama |
| Chicago Author-Date | 3+ → `Rahman et al.` |
| Harvard | 3+ → `Rahman et al.` |
| Vancouver | 6+ → `Rahman A, Sari D, ... et al.` |
| IEEE | 6+ penulis → `A. Rahman et al.` (daftar pustaka bisa 6 lalu `et al.` sesuai jurnal) |

## 6. Validasi Sitasi

Wajib di jalankan setelah memformat:

1. **Setiap klaim yang butuh rujukan punya sitasi** — scan paragraf klaim tanpa sitasi.
2. **In-text ↔ bibliography konsisten** — cek 1:1 (daftar satu arah).
3. **Gaya konsisten** — tidak campur APA dan IEEE.
4. **Format DOI/URL**:
   - DOI: `https://doi.org/<doi>` (bentuk yang disarankan APA)
   - Pastikan tidak ada spasi/cetak miring tak perlu
5. **"et al." & "&"**: sesuai gaya masing-masing (APA mulai kalimat pakai "dan", dalam kurung pakai "&"; IEEE pakai "and").
6. **Tahun konsisten** — tahun publikasi vs tahun akses web.

## 7. Deteksi Referensi Palsu (Anti-Hallucination)

1. Semua referensi harus berasal dari Literature Matrix yang sudah diverifikasi.
2. Jangan pernah membuat referensi agar sitasi terlihat lengkap.
3. Jika pengguna mengetik judul/klaim dan tidak ada di matrix → cek ke sumber (OpenAlex/Semantic Scholar) atau tandai `UNVERIFIED` dan tanyakan pengguna.

## 8. Support Zotero / BibTeX (Opsional)

- Jika pengguna menggunakan Zotero: instruksi ekspor bibliografi di format target dari Zotero, lalu verifikasi formatnya.
- Jika memakai LaTeX: berikan blok BibTeX dari DOI:
  ```
  @article{rahman2023pengaruh,
    author  = {Rahman, Ahmad and Sari, Dewi},
    title   = {Pengaruh media sosial terhadap prestasi akademik ...},
    journal = {Jurnal Psikologi Indonesia},
    year    = {2023},
    volume  = {12},
    number  = {3},
    pages   = {210--225},
    doi     = {10.xxxx/xxx}
  }
  ```
- Format otomatis bisa via `doi2bib.org` atau `citation-js` bila tersedia.

## 9. Output Tahap 4

```
draft_with_citations.md  — draft dengan in-text citation
bibliography.md          — daftar pustaka terformat per gaya
citation_validation.md   — hasil validasi (checklist + temuan)
```