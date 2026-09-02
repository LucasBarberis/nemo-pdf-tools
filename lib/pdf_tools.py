def parse_pages(text, max_page):
    """
    Convierte una expresión como:

        1-3,7,10-12

    en una lista de índices de página empezando en 0.

    Elimina duplicados preservando el orden.
    """

    pages = []

    for part in text.split(","):
        part = part.strip()

        if not part:
            continue

        if "-" in part:
            pieces = part.split("-")

            if len(pieces) != 2:
                raise ValueError(f"Rango inválido: {part}")

            try:
                start = int(pieces[0])
                end = int(pieces[1])
            except ValueError:
                raise ValueError(f"Rango inválido: {part}")

            if start > end:
                raise ValueError(
                    f"El rango debe ser creciente: {part}"
                )

            if start < 1 or end > max_page:
                raise ValueError(
                    f"El rango {part} está fuera de "
                    f"las páginas 1-{max_page}"
                )

            pages.extend(range(start - 1, end))

        else:
            try:
                page = int(part)
            except ValueError:
                raise ValueError(f"Página inválida: {part}")

            if page < 1 or page > max_page:
                raise ValueError(
                    f"La página {page} está fuera de "
                    f"rango 1-{max_page}"
                )

            pages.append(page - 1)

    # Eliminar duplicados preservando el orden
    return list(dict.fromkeys(pages))
