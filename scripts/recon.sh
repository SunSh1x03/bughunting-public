#!/usr/bin/env bash
set -euo pipefail

# Recon seguro/didático - usa apenas fontes públicas por padrão.
# Para habilitar etapas ativas, exporte ALLOW_ACTIVE=1 conscientemente.

usage() {
  cat <<USAGE
Uso: $0 [-d dominio] [-o outdir]
Ex.: $0 -d exemplo.com -o recon-data

Ambiente:
  ALLOW_ACTIVE=1        Habilita etapas ativas (ffuf, nuclei, etc.)

USAGE
}

DOMAIN=""
OUTDIR="recon-data"

while getopts ":d:o:h" opt; do
  case $opt in
    d) DOMAIN="$OPTARG";;
    o) OUTDIR="$OPTARG";;
    h) usage; exit 0;;
    *) usage; exit 1;;
  esac
done

if [[ -z "${DOMAIN}" ]]; then
  echo "Erro: informe -d dominio"; usage; exit 1;
fi

mkdir -p "$OUTDIR"

echo "[+] Iniciando recon passivo para: $DOMAIN"
echo "[i] Nota: etapas ativas estão DESABILITADAS por padrão."

# Exemplos de passos passivos (substitua por ferramentas reais no seu ambiente):
echo "[*] crt.sh -> $OUTDIR/crtsh_${DOMAIN}.txt"
echo "[*] wayback -> $OUTDIR/wayback_${DOMAIN}.txt"
echo "[*] asset inventory -> $OUTDIR/assets_${DOMAIN}.txt"

if [[ "${ALLOW_ACTIVE:-0}" == "1" ]]; then
  echo "[+] ALLOW_ACTIVE=1 -> habilitando etapas ativas com limites seguros…"
  echo "[*] (exemplo) ffuf -> $OUTDIR/ffuf_${DOMAIN}.txt"
  echo "[*] (exemplo) nuclei -> $OUTDIR/nuclei_${DOMAIN}.txt"
else
  echo "[!] Etapas ativas desabilitadas. Exporte ALLOW_ACTIVE=1 para habilitar conscientemente."
fi

echo "[✓] Recon finalizado (didático). Revise os arquivos em $OUTDIR/."
