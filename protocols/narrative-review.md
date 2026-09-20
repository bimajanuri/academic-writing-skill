# Protocol — Mode Narrative Review

Mode untuk *narrative / traditional review*: ulasan naratif literatur yang menekankan pengorganisasian gagasan dan perkembangan argumen akademik.

## Kapan Mode Ini Aktif

Pengguna meminta: *narrative review*, *literature review naratif*, *review kualitatif naratif*, ulasan non-sistematis, kata kunci "SANRA", atau memilih **Mode Narrative** pada Method Selection Router.

## Urutan Wajib

```text
1. Mode + standar pelaporan (SANRA) + framework RQ (5W+1H/CIMO) dikunci (GATE 0) → framework_selection.md
2. Parameter inisialisasi (topik, bahasa, quartile, tahun)
3. Kata kunci diturunkan dari topik inti + wilayah debat
4. PENCARIAN literatur (HANYA setelah 1–3 selesai) + seleksi sumber rasional
5. Ekstraksi posisi argumen + sintesis Academic Debate
```

> Hasil pencarian narrative harus mencakup paper yang **menyatakan posisi/klaim/debat** (bukan hanya hasil empiris) agar engine Academic Debate bisa mengkelasterkan pro/kontra.

## Framework Wajib (Bound)

| Aspek | Framework |
|-------|-----------|
| RQ | **5W+1H / CIMO** (atau ECLIPSe untuk kebijakan/layanan) |
| Reporting checklist | **SANRA** (*Scale for the Assessment of Narrative Review Articles*, 6 item) |
| Prosedur | Penelusuran eksplisit + seleksi rasional (bukan alur PRISMA penuh) |

> SANRA menuntut **kejujuran metode**: jelaskan pencarian dan kriteria pemilihan studi meskipun bukan SLR. Jangan berpura-pura sistematis.

## Extraction Matrix — Posisi Argumen

Fokus ekstraksi adalah **posisi penulis**, bukan metadata variabel:

| No | Authors/Year/Jurnal/Q | Klaim/Posisi penulis | Pendukung (bukti/ref) | Penentang/kontra | Konteks/domain | Kekuatan klaim |
|----|----------------------|----------------------|----------------------|------------------|----------------|----------------|

Detail: `references/extraction-narrative.md` + template `templates/extraction_narrative.md`.

## Sintesis — Academic Debate Engine

Gunakan **`engines/academic-debate.md`** secara wajib:

1. Kelompokkan paper ke **posisi pro/kontra/netral** terhadap pertanyaan inti.
2. Susun **timeline perkembangan gagasan** (siapa meletakkan dasar, siapa memperluas, siapa menantang).
3. Identifikasi debat terbuka, konsensus, dan inkonsistensi antar kelompok.
4. Narasi mengikuti alur: asal-usul gagasan → perkembangan → kontestasi → sintesis debat.

## Auto-Validation Checklist — SANRA (Wajib di Akhir)

Gunakan `checklists/sanra.md` (6 item UTS dengan skor 0–2) via `templates/reporting_checklist.md`:

1. Penjelasan pentingnya pertanyaan/klaim.
2. Penyataan pertanyaan/tujuan & definisi lingkup (perluasan dari SANRA).
3. Penjelasan strategi pencarian (wajib eksplisit walau non-sistematis).
4. Referencing & sebutan literatur relevan.
5. Scientific reasoning & argumentasi.
6. Presentasi data yang layak (tabel/figur) + limitasi.

Simpan skor ke `reporting_checklist_result.md`.

## Quality Gate Khusus Mode

- [ ] Strategi penelusuran dijelaskan (walau non-sistematis) — tidak disembunyikan
- [ ] Posisi pro/kontra dianalisis, bukan hanya diringkas per-paper
- [ ] Timeline/evolusi gagasan terbentuk
- [ ] Skor SANRA ≥ threshold yang disepakati (default: ≥ 60% skor maksimum)
- [ ] Tidak mengklaim "sistematis" / "komprehensif" bila pencarian terbatas

## Output Mode

```text
literature_matrix.md            — matrix posisi argumen
debate_map.md                   — klaster pro/kontra + timeline
narrative_review_draft.md       — draft narasi (bila diminta)
framework_selection.md          — kontrak framework + SANRA
reporting_checklist_result.md   — validasi SANRA
```

## Referensi Terkait

- `engines/academic-debate.md` — engine sintesis debat
- `references/literature-search.md` — pencarian & filter Scopus Quartile
- `checklists/sanra.md` — skala SANRA 6 item