# 06 · Unir tablas con JOIN

## Lo que aprenderás

1. Las **claves** que conectan las tablas (primaria y foránea)
2. `INNER JOIN`: unir las filas que encajan
3. `LEFT JOIN`: conservar todas las filas de un lado

## Conceptos

| Concepto | Explicación sencilla |
|---|---|
| **Clave primaria** | El `id` que identifica cada fila de una tabla (`clientes.id`). Único por fila. |
| **Clave foránea** | Una columna que apunta al `id` de otra tabla (`ventas.cliente_id`). Así se conectan. |
| **JOIN … ON** | Une dos tablas por una condición de encaje (`ON v.cliente_id = c.id`). |
| **INNER JOIN** | Solo las filas que encajan en las dos tablas. Es el `JOIN` por defecto. |
| **LEFT JOIN** | Todas las filas de la tabla de la izquierda, aunque no tengan pareja (aparecen con `NULL`). |
| **Apodos** | `ventas v`, `clientes c`: un nombre corto para la tabla, para escribir menos. |

## Cómo encajan las tablas

`ventas.cliente_id` → `clientes.id` · `ventas.producto_id` → `productos.id`

## Ejemplos (carpeta [`codigo`](codigo))

| Archivo | Qué hace |
|---|---|
| [`ejemplo1.sql`](codigo/ejemplo1.sql) | El cliente de cada venta (`INNER JOIN`) |
| [`ejemplo2.sql`](codigo/ejemplo2.sql) | Unir tres tablas: quién compró qué y cuánto |
| [`ejemplo3.sql`](codigo/ejemplo3.sql) | Compras por cliente con `LEFT JOIN` (Elena sale con 0) |
| [`error-comun.sql`](codigo/error-comun.sql) | Qué pasa si olvidas el `ON` |

## ⚠️ Error común: olvidar el ON

```sql
SELECT v.id, c.nombre
FROM ventas v
JOIN clientes c;      -- ¡sin ON!
```

Sin `ON`, cada fila se une con **todas** las de la otra tabla (producto cartesiano): 6 × 5 = **30 filas** sin sentido. Pon siempre la condición de encaje.

## 🎯 Mini-reto

Muestra el **id de cada venta** junto al **nombre del cliente** que la hizo. Escríbelo en [`codigo/reto.sql`](codigo/reto.sql).

<details>
<summary>Ver solución</summary>

```sql
SELECT v.id, c.nombre
FROM ventas v
JOIN clientes c ON v.cliente_id = c.id;
```

</details>

⬅️ Anterior: [05 · Crear y modificar datos](../05-crear-y-modificar-datos) · ➡️ Siguiente: [07 · Proyecto final](../07-proyecto-final)
