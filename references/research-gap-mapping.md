# Research Gap Mapping — Pemetaan Celah Riset Terstruktur

Panduan memperluas **Tahap 1 Langkah 1.4–1.5**: dari *literature matrix* menjadi klaim *research gap* yang berbasis pemetaan sistematis, bukan asumsi. Dipakai bersama `references/literature-matrix.md`.

## 1. Literature Mapping (Bukan Sekadar Merangkum)

Literature review bukan membaca dan merangkum sebanyak mungkin artikel. **Literature mapping** adalah mengorganisasi pengetahuan yang sudah ada untuk menemukan pola, konsistensi, dan kekosongan diskursus. Tanpa mapping, peneliti hanya menemukan "celah permukaan".

Kelompokkan paper di matrix berdasarkan:
1. **Tema utama** — klaster topik yang muncul berulang
2. **Pendekatan metodologis** — kuantitatif / kualitatif / mixed / eksperimen / review
3. **Teori yang digunakan** — kolom `Theory Used`
4. **Konsistensi hasil** — temuan yang saling mendukung vs bertentangan

Hasil akhir mapping adalah pemahaman atas:
- **Area jenuh** — sudah banyak diteliti, kontribusi incremental berisiko lemah
- **Area berkembang** — sedang naik, peluang kontribusi lebih tinggi
- **Area belum dieksplorasi** — kandidat gap utama (tetap perlu uji kelayakan §4)

Simpan hasil mapping di `gap_analysis.md` (lihat §6).

## 2. Klasifikasi Gap (Gap Matrix)

Setelah mapping, klasifikasikan setiap celah menurut **jenis kekosongan**, agar klaim gap tidak salah dan kontribusi bisa diukur. Gunakan `templates/gap_matrix.md`.

### 2.1 Theoretical Gap
Teori belum diuji/dikembangkan/dibandingkan pada konteks tertentu. Muncul ketika:
- Teori dipakai di konteks A, belum diuji di konteks B
- Teori dipakai terbatas, tanpa eksplorasi variabel tambahan
- Ada peluang mengintegrasikan dua teori yang berjalan terpisah

Bernilai tinggi di jurnal bereputasi karena menyentuh kerangka konseptual, bukan sekadar data baru.

### 2.2 Methodological Gap
Pendekatan penelitian sebelumnya masih terbatas atau kurang variatif. Misalnya:
- Mayoritas studi memakai kuantitatif sederhana
- Belum ada pendekatan longitudinal atau mixed-method
- Teknik analisis belum memakai model yang lebih kompleks

Kontribusi melalui inovasi/penguatan metode. Dihargai jurnal berorientasi metodologis.

### 2.3 Contextual Gap (dengan catatan)
Fenomena sudah banyak diteliti, tetapi belum diuji pada populasi/wilayah/kondisi tertentu. **Tidak semua perbedaan konteks otomatis menjadi kontribusi.** Contextual gap kuat hanya bila:
- Konteks berpotensi menghasilkan hasil yang berbeda secara konseptual
- Ada alasan teoretis mengapa konteks itu penting diuji

Tanpa dasar teoretis → berisiko menjadi *pseudo-gap* (§3).

### 2.4 Inconsistency Gap
Hasil penelitian sebelumnya tidak konsisten/bertentangan (studi A positif, B tidak signifikan, C negatif). Sangat strategis karena membuka ruang klarifikasi ilmiah melalui variabel moderator, desain lebih kuat, atau pendekatan baru.

### 2.5 Kaitan dengan Klasifikasi Lama
Klasifikasi lama di Langkah 1.4 tetap dipakai sebagai **status temuan**:
- **Complete gap** ≈ theoretical/methodological/contextual yang belum ada sama sekali
- **Partial gap** ≈ area berkembang (ada tapi belum matang)
- **Controversy gap** ≈ inconsistency gap

Cantumkan keduanya: status (complete/partial/controversy) + jenis (theoretical/methodological/contextual/inconsistency).

## 3. Menghindari Pseudo-Gap (Gap Semu)

Pseudo-gap terjadi ketika peneliti hanya melihat "apa yang belum diteliti" tanpa mempertimbangkan "mengapa itu penting diteliti". Bentuk umum:
1. Mengklaim belum ada studi di lokasi tertentu tanpa relevansi teoretis
2. Mengganti variabel/sampel tanpa kontribusi konseptual baru
3. Replikasi sederhana tanpa memperkuat teori/metode
4. "Belum banyak penelitian..." tanpa pemetaan literatur sistematis

Pertanyaan penentu: **"Mengapa studi ini penting bagi perkembangan ilmu?"** Jika tidak terjawab eksplisit, kontribusi dianggap lemah.

**Tiga kriteria gap yang kuat:**
1. Berbasis literatur yang terpetakan jelas (bukan asumsi pribadi)
2. Memiliki implikasi teoretis atau metodologis
3. Relevan dengan diskursus aktif di jurnal target

Gap yang kuat selalu menjawab: (a) apa yang belum terjawab dalam literatur? (b) mengapa kekosongan itu penting secara ilmiah?

## 4. Checklist Validasi Gap

Jalankan sebelum menuliskan research gap di manuskrip.

**Validasi Literatur**
- [ ] Telah memetakan minimal 10–20 artikel relevan
- [ ] Gap muncul dari pola literatur, bukan asumsi pribadi
- [ ] Dapat menunjukkan bukti empiris dari kekosongan tersebut

**Validasi Konseptual**
- [ ] Gap memiliki implikasi teoretis atau metodologis
- [ ] Gap bukan hanya perbedaan lokasi penelitian
- [ ] Gap bukan sekadar replikasi sederhana

**Validasi Strategis**
- [ ] Gap relevan dengan diskursus aktif di jurnal target
- [ ] Kontribusi menjawab gap secara eksplisit
- [ ] Dapat merumuskan contribution statement secara jelas (lihat `references/novelty-framing.md`)

**Ambang**: jika lebih dari 2–3 poin tidak tercentang, gap perlu diperkuat sebelum masuk penulisan atau submission.

## 5. Research Map

Visualisasikan peta penelitian dari matrix:
- Bagian atas: teori dominan yang digunakan
- Cabang: penelitian-penelitian sebelumnya
- Perbedaan metode/hasil → petunjuk gap
- Posisi penelitian Anda harus terlihat sebagai **respons** terhadap kekosongan tersebut

Jika penelitian tidak bisa ditempatkan jelas di peta ini, kemungkinan gap belum cukup kuat. Research Map melengkapi **Research Positioning Map** (Langkah 1.5) yang memetakan posisi terhadap arena jurnal (lihat `references/journal-targeting.md` §3).

## 6. Output Tahap 1 (diperluas)

```
literature_matrix.md   — tabel matrix terstruktur 7-field
gap_matrix.md          — tabel gap terklasifikasi (theoretical/methodological/contextual/inconsistency)
gap_analysis.md        — sintesa gap: jenis + status + evidence + significance + feasibility + uji pseudo-gap
research_map.md        — peta posisi topik & teori
```

Kaitkan langsung setiap gap di `gap_analysis.md` ke baris `gap_matrix.md` dan ke minimal 3 sitasi matrix.

## 7. Alur Kerja Ringkas

```
Matrix (1.3) → Literature mapping (§1) → Isi Gap Matrix (templates/gap_matrix.md)
→ Klasifikasi 4 jenis gap (§2) → Uji pseudo-gap (§3) → Checklist validasi (§4)
→ Research Map (§5) → gap_analysis.md → feed ke Novelty Framing (references/novelty-framing.md)
```
