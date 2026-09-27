# 01 · Tablas y tu primer SELECT

## Lo que aprenderás

1. Qué es una tabla
2. Qué son las filas y las columnas
3. Cómo leer datos con `SELECT … FROM`

## Conceptos

| Concepto | Explicación sencilla |
|---|---|
| **Tabla** | Es como una hoja de cálculo, pero más estricta y rápida. Guarda un solo tipo de cosa (productos, clientes…). |
| **Columna** | Va de arriba abajo. Es un tipo de dato: `precio`, `stock`… Responde a "¿qué dato es?". |
| **Fila** | Va de lado a lado. Es un registro completo, por ejemplo la mochila. Responde a "¿de quién es el dato?". |
| **id** | Número único de cada fila, como un documento de identidad. Nunca se repite. |
| **SELECT** | "Selecciona": qué columnas quieres. |
| **FROM** | "Desde": de qué tabla. |
| **;** | El punto final de la consulta. |

## Estructura

```sql
SELECT columna1, columna2
FROM nombre_tabla;
```

## Ejemplos (carpeta [`codigo`](codigo))

| Archivo | Qué hace |
|---|---|
| [`ejemplo1.sql`](codigo/ejemplo1.sql) | Muestra solo los nombres |
| [`ejemplo2.sql`](codigo/ejemplo2.sql) | Muestra nombre y precio |
| [`ejemplo3.sql`](codigo/ejemplo3.sql) | `SELECT *`: todas las columnas |
| [`error-comun.sql`](codigo/error-comun.sql) | Qué pasa si olvidas la coma |

## Buenas costumbres

- Palabras clave de SQL en MAYÚSCULAS.
- Una parte de la consulta por línea.
- Termina siempre con `;`.
- En tablas gigantes evita `*` y pide solo las columnas que necesitas.

## ⚠️ Error común: olvidar la coma

```sql
SELECT nombre precio
FROM productos;
```

El resultado es una columna llamada `precio`… ¡llena de nombres! Sin coma, SQL entiende que `precio` es un nuevo nombre (un *alias*) para la columna `nombre`.

## 🎯 Mini-reto

Muestra el **nombre** y el **stock** de todos los productos. Escríbelo en [`codigo/reto.sql`](codigo/reto.sql).

<details>
<summary>Ver solución</summary>

```sql
SELECT nombre, stock
FROM productos;
```

</details>

⬅️ Anterior: [00 · Introducción](../00-introduccion) · ➡️ Siguiente: 02 · Filtrar con WHERE (próximamente)
