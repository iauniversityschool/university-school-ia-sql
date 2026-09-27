# 03 · Ordenar y limitar

## Lo que aprenderás

1. Ordenar los resultados con `ORDER BY`
2. Elegir el sentido con `ASC` y `DESC`
3. Quedarte solo con las primeras filas con `LIMIT`

## Conceptos

| Concepto | Explicación sencilla |
|---|---|
| **ORDER BY** | Ordena las filas por la columna que le digas. Es como poner a un grupo de personas en fila por altura. |
| **ASC** | De menor a mayor (o de la A a la Z). Es lo que hace **por defecto**. |
| **DESC** | De mayor a menor (o de la Z a la A). Hay que escribirlo. |
| **LIMIT** | Te deja solo las primeras N filas. |

## Estructura

```sql
SELECT columnas
FROM tabla
ORDER BY columna;      -- añade DESC para el orden inverso
```

## El orden de las cláusulas

Siempre es el mismo: **`WHERE` → `ORDER BY` → `LIMIT`**.

## Ejemplos (carpeta [`codigo`](codigo))

| Archivo | Qué hace |
|---|---|
| [`ejemplo1.sql`](codigo/ejemplo1.sql) | Ordenar por precio (de menor a mayor) |
| [`ejemplo2.sql`](codigo/ejemplo2.sql) | `DESC`: de mayor a menor |
| [`ejemplo3.sql`](codigo/ejemplo3.sql) | Ordenar texto de la A a la Z |
| [`ejemplo4.sql`](codigo/ejemplo4.sql) | El top 3 más caro (`ORDER BY` + `LIMIT`) |
| [`error-comun.sql`](codigo/error-comun.sql) | Qué pasa si pones `LIMIT` antes de `ORDER BY` |

## ⚠️ Error común: LIMIT en el sitio equivocado

```sql
SELECT nombre
FROM productos
LIMIT 3
ORDER BY precio;
```

`LIMIT` va **después** de `ORDER BY`. Al revés, la base de datos responde:

```
near "ORDER": syntax error
```

## 🎯 Mini-reto

Muestra los **3 productos más caros** (nombre y precio). Escríbelo en [`codigo/reto.sql`](codigo/reto.sql).

<details>
<summary>Ver solución</summary>

```sql
SELECT nombre, precio
FROM productos
ORDER BY precio DESC
LIMIT 3;
```

</details>

⬅️ Anterior: [02 · Filtrar con WHERE](../02-filtrar-con-where) · ➡️ Siguiente: [04 · Contar, sumar y agrupar](../04-contar-sumar-agrupar)
