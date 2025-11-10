#!/usr/bin/env bash
set -euo pipefail
if [[ "${ALLOW_ACTIVE:-0}" != "1" ]]; then
  echo "Bloqueado: exporte ALLOW_ACTIVE=1 para habilitar.";
  exit 1
fi
echo "Exemplo de execução nuclei (didático). Use tags e templates próprios e éticos."
