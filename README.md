# Nemo PDF Tools

Herramientas para trabajar con archivos PDF integradas en el menú contextual de Nemo.

## Herramientas

- Unir PDF
- Separar PDF
- Extraer páginas
- Eliminar páginas
- Firmar PDF visualmente

La herramienta de firma permite agregar varias firmas independientes,
moverlas y cambiar su tamaño antes de generar el PDF.

## Instalación

Clonar el repositorio:

    git clone https://github.com/USUARIO/nemo-pdf-tools.git
    cd nemo-pdf-tools
    ./install.sh

## Dependencias

- Python 3
- GTK 3
- PyGObject
- Cairo
- Pillow
- pdftoppm
- Nemo

`pypdf` está incluido en el repositorio.

## Desinstalación

    ./uninstall.sh

## Ubicación

Los archivos se instalan en:

    ~/.local/share/nemo-pdf-tools/

Las acciones de Nemo se instalan en:

    ~/.local/share/nemo/actions/

MIT
