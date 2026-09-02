#!/bin/bash

set -e

BASE="$HOME/.local/share/nemo-pdf-tools"
ACTIONS="$HOME/.local/share/nemo/actions"

echo "Desinstalando Nemo PDF Tools..."

rm -rf "$BASE"

rm -f "$ACTIONS/unir-pdf.nemo_action"
rm -f "$ACTIONS/separar-pdf.nemo_action"
rm -f "$ACTIONS/extraer-paginas.nemo_action"
rm -f "$ACTIONS/eliminar-paginas.nemo_action"
rm -f "$ACTIONS/firmar-pdf.nemo_action"

if command -v nemo >/dev/null 2>&1; then
    nemo -q 2>/dev/null || true
fi

echo "Nemo PDF Tools desinstalado."
