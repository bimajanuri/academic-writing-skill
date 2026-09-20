# Engine — Conceptual Mapping (Scoping Review)

Engine sintesis untuk Mode Scoping Review. Mengubah matrix ekstraksi PCC menjadi **taksonomi konsep & peta distribusi literatur**, bukan agregasi statistik.

> Landasan PRISMA-ScR & JBI Manual: tujuan scoping adalah memetakan *nature and extent* of evidence.

## Kapan Dipakai

Hanya di Mode Scoping Review (`protocols/scoping-review.md`), setelah matrix PCC siap.

## Alur Kerja Engine

### Input
- `literature_matrix.md` (mode scoping, kolom PCC + metode + konteks)

### Langkah

1. **Koding konsep** — kelompokkan kolom "Konsep (C)" menjadi klaster taksonomi (klaster tema/variabel) dengan aturan saling eksklusif.
2. **Petakan distribusi**:
   - **Geografis**: negara/wilayah studi → peta frekuensi.
   - **Timeline**: tahun publikasi → tren.
   - **Metodologi**: jenis desain → keragaman metode yang pernah dipakai.
   - **Konsep co-occurrence**: konsep mana yang sering muncul bersama.
3. **Identifikasi research gaps** — wilayah taksonomi yang kosong/minim → gap untuk riset masa depan (sementara, bukan kesimpulan definitif).
4. **Bangun artefak visual/tabel**:
   - Taksonomi/klaster konsep (tabel atau sunburst/tree).
   - Characteristics table (per studi × PCC).
   - Ringkasan distribusi (angka per kategori).

### Aturan Ketat

- JANGAN menghitung efek/ability — scoping tidak mengukur kualitas/efektivitas.
- JANGAN mengklaim kelengkapan bila search gap terbatas — laporkan batas.
- Gap yang diidentifikasi harus berasal dari data matrix, bukan asumsi.
- Label taksonomi konsisten dengan istilah asli penulis (hindari re-labelling diam-diam).

### Output
```text
scoping_map.md             — taksonomi + distribusi geografis/timeline/metode
characteristics_table.md   — tabel karakteristik studi
concept_matrix.md          — matriks konsep × studi (cross-tab)
```

## Prompt Template

```text
Buat taksonomi konsep dari literature_matrix.md (mode scoping).
1. Klasterkan kolom Konsep menjadi himpunan saling eksklusif dengan label
   yang traceable ke istilah penulis.
2. Hitung distribusi: geografis, tahun, jenis metodologi.
3. Identifikasi klaster kosong (gap) berbasis bukti matrix.
4. Hasilkan scoping_map.md + characteristics_table.md.
```

[Jangan menggunakan engine ini untuk menghitung pooled effect — bukan domain scoping.]