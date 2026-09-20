# Engine — Academic Debate (Narrative Review)

Engine sintesis untuk Mode Narrative Review. Mengelompokkan posisi penulis (pro/kontra) dan memetakan **perkembangan gagasan lintas waktu** untuk membangun narasi debat akademik.

> Cocok untuk pertanyaan kontroversial/multi-interpretasi yang tidak memerlukan sintesis statistik.

## Kapan Dipakai

Hanya di Mode Narrative Review (`protocols/narrative-review.md`), setelah matrix posisi argumen siap.

## Alur Kerja Engine

### Input
- `literature_matrix.md` (mode narrative — kolom Posisi/Argument)

### Langkah

1. **Identifikasi pertanyaan debat inti** — satu atau beberapa klaim yang dipertentangkan.
2. **Klaster posisi**:
   - **Pro** — penulis yang mendukung/memperkuat
   - **Kontra** — penulis yang menolak/mengontraskan
   - **Netral/kompleks** — penulis dengan posisi bersyarat atau multi-dimensi
3. **Buat timeline gagasan** — urutkan kontribusi per tahun: siapa meletakkan dasar, siapa memperluas, siapa menantang, siapa mensintesis.
4. **Identifikasi perdebatan terbuka** — area pro/kontra yang belum terselesaikan.
5. **Susun narasi debat** — alur: histogram gagasan (asal-usul) → perkembangan → kontestasi → resolusi/sintetis (atau open question).

### Aturan Ketat

- Posisi disimbolkan dari **klaim eksplisit penulis**, bukan tebakan.
- Timeline harus berbasis tanggal jurnal (bukan tahun penulisan).
- Jangan bingung "kritik metodologis" dengan "kontra substansi".
- Konsensus vs heterogenitas diidentifikasi dengan bukti (berapa paper pro/kontra).

### Output
```text
debate_map.md        — klaster pro/kontra/netral + argumen kunci per cluster
debate_timeline.md   — kronologi gagasan (tabel/bagan)
open_debates.md      — pertanyaan debat yang belum terselesaikan
```

## Prompt Template

```text
Dari literature_matrix.md (mode narrative), bangun peta debat akademik.
1. Tentukan klaim inti yang diperdebatkan.
2. Kelompokkan paper ke pro/kontra/netral berdasar klaim eksplisit.
3. Susun timeline: dasar → ekspansi → tantangan → resolusi.
4. Beri jumlah dukungan per klaster.
5. Hasilkan debate_map.md + debate_timeline.md.
```

[Jangan rutin "menyelesaikan" debat yang memang masoh terbuka — laporkan status apa adanya.]