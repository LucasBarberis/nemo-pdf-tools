#!/bin/bash

set -e

BASE="$HOME/.local/share/nemo-pdf-tools"
ACTIONS="$HOME/.local/share/nemo/actions"

echo "Instalando Nemo PDF Tools..."

mkdir -p "$BASE"
mkdir -p "$ACTIONS"

echo "Copiando programas..."
rm -rf "$BASE/bin"
rm -rf "$BASE/lib"

cp -r bin "$BASE/"
cp -r lib "$BASE/"

chmod +x "$BASE"/bin/*

echo "Instalando acciones de Nemo..."
cp actions/*.nemo_action "$ACTIONS/"

echo
echo "Instalación completada."
echo
echo "Programas instalados en:"
echo "  $BASE"
echo
echo "Acciones de Nemo instaladas en:"
echo "  $ACTIONS"

if command -v nemo >/dev/null 2>&1; then
    echo
    echo "Reiniciando Nemo..."
    nemo -q 2>/dev/null || true
fi

echo
echo "Listo."
