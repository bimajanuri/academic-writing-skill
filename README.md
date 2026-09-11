# Academic Writing Skill

**Skill penulisan akademik end-to-end untuk AI coding agents** (Claude Code, OpenCode, dan agen berbasis Agent Skills lainnya). Dirancang untuk menghasilkan konten akademik berkualitas tinggi — dari pencarian literatur hingga konversi format final — dalam **Bahasa Indonesia dan English**.

Skill ini adalah pipeline 6 tahap yang menuntun AI menghasilkan paper/artikel ilmiah dengan quality gate di setiap tahapnya (human-in-the-loop).

## Fitur Utama

- **Pipeline 6 tahap** dengan quality gate: `Explorasi → Perencanaan → Penulisan → Sitasi → Revisi → Output`
- **Pencarian literatur** via OpenAlex / Semantic Scholar / arXiv
- **Filter jurnal Scopus Quartile** (Q1–Q4) — hanya paper dari jurnal terindeks Scopus dengan quartile terverifikasi
- **Literature Matrix 7-field** (Authors/Title, Purpose, Method, Theory Used, Novelty, Future Studies, DOI/Publisher & Quartile)
- **Gap Analysis** — identifikasi complete/partial/controversy gaps dengan evidence sitasi
- **Outline builder** + alokasi kata + **reviewer self-assessment 7 dimensi**
- **Penulisan section-by-section** dengan urutan wajib (Final Introduction ditulis ulang, Abstract paling akhir)
- **Format sitasi 5 gaya**: APA 7, IEEE, MLA 9, Chicago (Author-Date & Notes), Vancouver
- **Humanizer 25 pola AI** — deteksi & penghapusan jejak tulisan AI (diadaptasi dari blader/humanizer)
- **Quality control berlapis**: gate mekanis (grep), gate semantik, red-team reviewer (CRITICAL/IMPORTANT/MINOR)
- **Konversi output**: Markdown, LaTeX, DOCX (via pandoc)
- **Anti-hallucination**: tidak mengarang referensi/data; verifikasi DOI & quartile

## Cara Kerja (Pipeline 6 Tahap)

```text
TAHAP 1: EXPLORASI   → Search literatur + filter Scopus Quartile + Literature Matrix + Gap Analysis + Research Map
TAHAP 2: PERENCANAAN → Research question + outline + alokasi kata + reviewer self-assessment (7 dimensi)
TAHAP 3: PENULISAN   → Section-by-section sesuai urutan wajib + claim-evidence map
TAHAP 4: SITASI      → Format sitasi + bibliography + validasi klaim-sitasi + cek DOI
TAHAP 5: REVISI      → Humanizer (25 pola) + gate mekanis + gate semantik + red-team review
TAHAP 6: OUTPUT      → Konversi MD/LaTeX/DOCX + pre-submission mechanical checks
```

Setiap tahap **tidak boleh dilanjutkan sebelum lolos quality gate** dan mendapat konfirmasi pengguna.

## Instalasi

### Claude Code

```bash
# Opsi 1 — symlink (kanonik, sekali update)
mkdir -p ~/.agents/skills
ln -s $(pwd) ~/.agents/skills/academic-writing
ln -s ../../.agents/skills/academic-writing ~/.claude/skills/academic-writing

# Opsi 2 — salin langsung
cp -R . ~/.claude/skills/academic-writing
```

### OpenCode

```bash
# Opsi 1 — symlink
ln -s ../../.agents/skills/academic-writing ~/.config/opencode/skills/academic-writing

# Opsi 2 — salin langsung
cp -R . ~/.config/opencode/skills/academic-writing
```

> Rekomendasi: simpan repo ini sebagai kanonik di `~/.agents/skills/academic-writing`, lalu **symlink** ke folder skills masing-masing klien. Edit cukup sekali di sumber.

### Platform lain (Codex, Cursor, Gemini, dll.)

Salin direktori `academic-writing/` ke folder skills sesuai format platform masing-masing (standar Agent Skills: `SKILL.md` sebagai entry point).

## Penggunaan

Aktifkan secara otomatis saat AI menerima perintah terkait penulisan akademik. Contoh trigger:

- "Tulis paper tentang [topik]"
- "Bantu riset literatur untuk skripsi/tesis"
- "Cari referensi Scopus Q1 tentang X"
- "Buatkan outline paper"
- "Format sitasi APA/IEEE/MLA/Chicago/Vancouver"
- "Revisi/polish draft ini" (anti-AI humanizer)
- "Konversi draft ke LaTeX/DOCX"
- "Review draft sebelum submit jurnal"

### Penggunaan parsial (tanpa pipeline penuh)

| Permintaan | Yang dikerjakan |
|-----------|-----------------|
| "Cari referensi tentang X" | Tahap 1 → Literature Matrix |
| "Buatkan outline paper X" | Tahap 1+2 → Matrix + Outline |
| "Tulis bagian metodologi" | Draft section tersebut |
| "Format sitasi ini" | Tahap 4 |
| "Polis/revise draft ini" | Tahap 5 (humanizer) |
| "Konversi ke LaTeX/docx" | Tahap 6 |
| "Review draft ini" | Red-team protocol |
| "Plan paper dari nol" | Full pipeline |

## Struktur Repo

```
academic-writing/
├── SKILL.md                          # Pintu masuk & orchestrator pipeline
├── references/                       # Panduan detail per tahap
│   ├── literature-search.md          #   Pencarian + filter Scopus Quartile
│   ├── literature-matrix.md          #   Ekstraksi 7-field metadata
│   ├── outline-builder.md            #   RQ, outline, alokasi kata, reviewer
│   ├── section-writing.md            #   Panduan menulis per section
│   ├── citation-formatter.md         #   APA/IEEE/MLA/Chicago/Vancouver
│   ├── revision-guide.md             #   Humanizer 25 pola AI
│   ├── quality-gates.md              #   Gate mekanis + semantik + red-team
│   └── output-formatter.md           #   Konversi MD/LaTeX/DOCX
├── templates/                        # Kontrak output
│   ├── paper_outline.md
│   ├── literature_matrix_template.md
│   ├── section_templates/            # 7 template section (abstract → conclusion)
│   └── citation_templates/           # 5 template gaya sitasi
├── checklists/                       # 4 checklist kualitas
├── scripts/
│   └── convert.sh                    # Konversi format via pandoc
└── README.md
```

## Prasyarat Opsional

- **pandoc** — untuk konversi Markdown → DOCX/LaTeX (`brew install pandoc`)
- **Zotero** (opsional) — ekspor bibliografi dari DOI ke gaya target

## Aturan Penting (diamankan dalam skill)

1. Tidak mengarang referensi — verifikasi keberadaan paper (DOI, penerbit, tahun); ragu → tandai `UNVERIFIED`
2. Tidak mengarang data/fakta — gunakan placeholder `[DATA]` bila belum tersedia
3. Tidak menyalin teks jurnal verbatim — dipakai sebagai model struktur, bukan sumber kalimat
4. Human-in-the-loop di setiap quality gate — AI mengusulkan, manusia memutuskan
5. Semua artefak disimpan sebagai file Markdown (literature_matrix.md, gap_analysis.md, dst.)

## Metodologi (Attribution)

Pipeline ini merupakan kombinasi & adaptasi dari metodologi terbuka:

- **Prof. Peng Sida's open research notes** — politik penulisan section — [Master-cai/Research-Paper-Writing-Skills](https://github.com/Master-cai/Research-Paper-Writing-Skills)
- **SNL-UCSB / paper-writing-skill** — pipeline 5 tahap, audit ganda mekanis+semantik — [SNL-UCSB/paper-writing-skill](https://github.com/SNL-UCSB/paper-writing-skill)
- **Humanizer 25 patterns** — de-teknisasi jejak AI — [blader/humanizer](https://github.com/blader/humanizer)
- **journal-adapt** — adaptasi korpus jurnal target — [WantongC/journal-adapt-writing-skill](https://github.com/WantongC/journal-adapt-writing-skill)
- **Strategist quality gates** — penilaian reviewer 7 dimensi — [lishix520/academic-paper-skills](https://github.com/lishix520/academic-paper-skills)
- **Literature triage matrix** — ekstraksi metadata terstruktur — [WenyuChiou/ai-research-skills](https://github.com/WenyuChiou/ai-research-skills)

## Lisensi

Rilis di bawah **[MIT License](LICENSE)**.