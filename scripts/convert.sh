#!/usr/bin/env bash
#
# convert.sh — Konversi naskah akademik Markdown → DOCX / LaTeX / HTML
# Bagian dari skill academic-write. Dependensi: pandoc.
#
# Penggunaan:
#   ./convert.sh draft.md docx          # → draft.docx
#   ./convert.sh draft.md tex           # → draft.tex (secara default pakai engine pdflatex)
#   ./convert.sh draft.md tex --tpl=article
#   ./convert.sh draft.md html
#
# Opsi lanjut:
#   --csf=apa.csl      gaya sitasi (CSSL) — unduh dari Zotero style repo
#   --bib=refs.bib     bila sumbernya file bibtex
#   --tpl=article      template LaTeX (article | IEEEtran | acmart)
#

set -euo pipefail

usage() {
  sed -n '2,14p' "$0"
  exit 1
}

[ $# -lt 2 ] && usage

SRC="$1"
FMT="$2"
shift 2

CSL=""
BIB=""
TPL="article"

for opt in "$@"; do
  case "$opt" in
    --csf=*) CSL="${opt#*=}" ;;
    --bib=*) BIB="${opt#*=}" ;;
    --tpl=*) TPL="${opt#*=}" ;;
    *) echo "Opsi tidak dikenal: $opt"; usage ;;
  esac
done

if ! command -v pandoc >/dev/null 2>&1; then
  echo "ERROR: 'pandoc' tidak ditemukan. Install dulu: brew install pandoc"
  exit 1
fi

[ -f "$SRC" ] || { echo "ERROR: file sumber tidak ada: $SRC"; exit 1; }

BASE="${SRC%.*}"

case "$FMT" in
  docx)
    OUT="$BASE.docx"
    ARGS=(-o "$OUT")
    [ -n "$BIB" ] && ARGS+=(--bibliography "$BIB" --citeproc)
    [ -n "$CSL" ] && ARGS+=(--csl "$CSL")
    pandoc "$SRC" "${ARGS[@]}"
    echo "Dibuat: $OUT"
    ;;

  tex)
    OUT="$BASE.tex"
    case "$TPL" in
      acmart)  CLI="-H header_acm.tex --template" ;;  # butuh template sesuai venue
      IEEEtran) echo "Catatan: IEEEtran → gunakan template .cls resmi, bukan pandoc generic." ;;
      *) CLI="--standalone" ;;
    esac
    ARGS=(-o "$OUT" --standalone)
    [ -n "$BIB" ] && ARGS+=(--bibliography "$BIB" --citeproc)
    [ -n "$CSL" ] && ARGS+=(--csl "$CSL")
    pandoc "$SRC" "${ARGS[@]}"
    echo "Dibuat: $OUT (lihat catatan tpl=$TPL)"
    ;;

  html)
    OUT="$BASE.html"
    pandoc "$SRC" -o "$OUT" --standalone --mathjax
    echo "Dibuat: $OUT"
    ;;

  pdf)
    OUT="$BASE.pdf"
    ARGS=(-o "$OUT")
    [ -n "$BIB" ] && ARGS+=(--bibliography "$BIB" --citeproc)
    [ -n "$CSL" ] && ARGS+=(--csl "$CSL")
    pandoc "$SRC" "${ARGS[@]}" --pdf-engine=xelatex -V mainfont=TeXGyreTermes -V fontsize=12pt
    echo "Dibuat: $OUT"
    ;;

  *)
    echo "Format tidak didukung: $FMT (docx|tex|html|pdf)"
    exit 1
    ;;
esac

# Pre-submission quick checks (hanya untuk output tex)
if [ "$FMT" = "tex" ]; then
  echo "— Cek cepat LaTeX —"
  BASE_TEX="$BASE.tex"
  if command -v grep >/dev/null; then
    grep -n "LaTeX Warning" "$BASE_TEX" >/dev/null 2>&1 || echo "Tidak ada LaTeX Warning di dokumen (masih mungkin muncul saat compile)."
  fi
fi