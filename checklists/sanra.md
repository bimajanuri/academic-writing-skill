# Checklist — SANRA (Narrative Review, 6 Item)

Auto-validation wajib untuk Mode Narrative Review. Sumber: Baethge C, et al. (2019). *Scale for the Assessment of Narrative Review Articles* (SANRA). 6 item, skor 0–2 per item (total 0–12).

## Checklist & Skoring

| # | Kriteria | Skor 0 | Skor 1 | Skor 2 | Skor Anda |
|---|----------|--------|--------|--------|-----------|
| 1 | Pentingnya pertanyaan/klaim | Tidak dijelaskan | Dijelaskan parsial | Dijelaskan dengan data/konteks kuat | |
| 2 | Penyataan pertanyaan/tujuan & lingkup | Tidak jelas | Disebut tapi tidak terdefinisi | Tujuan & lingkup didefinisikan eksplisit | |
| 3 | Penyataan strategi pencarian | Tidak ada | Dijelaskan sebagian | Strategi penelusuran dijelaskan eksplisit | |
| 4 | Referencing | Sedikit/tidak ada | Parsial | Literatur relevan dikutip menyeluruh | |
| 5 | Scientific reasoning | Klaim tanpa argumen | Argumen ringkas | Interpretasi kritis & argumentasi utuh | |
| 6 | Presentasi data & limitasi | Tanpa tabel/figur & limitasi | Sebagian | Tabel/figur membantu + limitasi dibahas | |

## Threshold

| Skor Total (0–12) | Status |
|--------------------|--------|
| ≥ 8 | Lulus — siap lanjut |
| 6–7 | Perbaiki item lemah sebelum lanjut |
| < 6 | Framework belum layak → perbaiki substansi |

## Auto-Validation Rule

- Semua item diskor 0–2; total dihitung.
- Item 3 (search strategy) **tidak boleh diskor 0** — narrative review tetap wajib transparan metode.
- Item "Tidak"/skor rendah → rencana perbaikan; status: `complete` / `needs_fix`.

## Output

```text
reporting_checklist_result.md  — hasil mapping SANRA + skor