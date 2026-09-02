# Nemo PDF Tools

Herramientas para trabajar con archivos PDF integradas en el menú contextual de Nemo.

El proyecto está pensado para Ubuntu/Linux y permite realizar operaciones habituales sobre archivos PDF directamente desde el administrador de archivos.

## Herramientas

### Unir PDF

Selecciona varios archivos PDF y los combina en un único archivo.

### Separar PDF

Selecciona un PDF y genera un archivo independiente para cada página.

Por ejemplo:

    documento_001.pdf
    documento_002.pdf
    documento_003.pdf

### Extraer páginas

Permite seleccionar las páginas que se quieren extraer mediante expresiones como:

    1-3,7,10-12

Esto genera un nuevo PDF conservando las páginas en el orden indicado.

### Eliminar páginas

Permite seleccionar las páginas que se quieren eliminar de un PDF.

El resultado se guarda como un nuevo archivo y el PDF original no se modifica.

### Firmar PDF

Permite agregar una o varias firmas visuales a un PDF.

Cada firma puede:

- seleccionarse individualmente;
- moverse;
- cambiar de tamaño;
- colocarse en una página determinada;
- utilizar una imagen de firma diferente.

La firma es visual: se incorpora como una imagen al documento y no constituye una firma digital criptográfica.

## Instalación

Clonar el repositorio:

    git clone git@github.com:LucasBarberis/nemo-pdf-tools.git
    cd nemo-pdf-tools
    ./install.sh

El instalador copia los programas y las acciones de Nemo a:

    ~/.local/share/nemo-pdf-tools/
    ~/.local/share/nemo/actions/

Después de la instalación, las herramientas aparecen en el menú contextual de Nemo.

## Dependencias

El proyecto incluye pypdf, por lo que no es necesario instalarlo mediante pip.

En Ubuntu 24.04 se necesitan:

    sudo apt install nemo python3 python3-gi python3-cairo python3-pil \
        gir1.2-gtk-3.0 gir1.2-gdkpixbuf-2.0 poppler-utils

Las herramientas utilizan:

- Python 3
- Nemo
- GTK 3
- PyGObject
- Cairo
- Pillow
- pdftoppm

## Desinstalación

Desde el directorio del repositorio:

    ./uninstall.sh

Esto elimina los programas y las acciones instaladas por Nemo PDF Tools.

No elimina otras acciones de Nemo instaladas por el usuario.

## Estructura del proyecto

    nemo-pdf-tools/
    ├── actions/       Acciones del menú contextual de Nemo
    ├── bin/           Programas ejecutables
    ├── lib/           Código Python y pypdf incluido
    ├── install.sh     Instalador
    ├── uninstall.sh   Desinstalador
    └── README.md

## Licencia

Este proyecto no declara actualmente una licencia propia.

La copia de pypdf incluida en lib/ conserva su información de licencia original.
