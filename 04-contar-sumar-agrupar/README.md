# 04 · Contar, sumar y agrupar

## Lo que aprenderás

1. Resumir una columna en un número con `COUNT`, `SUM` y `AVG`
2. Un resultado por grupo con `GROUP BY`
3. Filtrar esos grupos con `HAVING`

## Conceptos

| Concepto | Explicación sencilla |
|---|---|
| **COUNT** | Cuenta filas. `COUNT(*)` = cuántas filas hay. |
| **SUM** | Suma los valores de una columna. |
| **AVG** | Saca el promedio (media). Suele combinarse con `ROUND` para redondear. |
| **GROUP BY** | Agrupa las filas que comparten un valor y aplica la función a cada grupo. Como separar caramelos por color y contar cada montón. |
| **HAVING** | Filtra grupos, usando el resultado de una función. Es el "WHERE de los grupos". |

## WHERE vs HAVING

| | WHERE | HAVING |
|---|---|---|
| Filtra | Filas | Grupos |
| Cuándo | Antes de agrupar | Después de agrupar |
| Funciones | No | Sí (`COUNT`, `SUM`…) |

## Ejemplos (carpeta [`codigo`](codigo))

| Archivo | Qué hace |
|---|---|
| [`ejemplo1.sql`](codigo/ejemplo1.sql) | `COUNT(*)`: cuántos productos hay |
| [`ejemplo2.sql`](codigo/ejemplo2.sql) | Cuántos productos por categoría |
| [`ejemplo3.sql`](codigo/ejemplo3.sql) | Stock total por categoría |
| [`ejemplo4.sql`](codigo/ejemplo4.sql) | Precio medio por categoría |
| [`ejemplo5.sql`](codigo/ejemplo5.sql) | Solo grupos con 2 o más (`HAVING`) |
| [`error-comun.sql`](codigo/error-comun.sql) | Usar una función dentro de `WHERE` |

## ⚠️ Error común: función de agregación en WHERE

```sql
SELECT categoria
FROM productos
WHERE COUNT(*) > 1
GROUP BY categoria;
```

`WHERE` actúa **antes** de agrupar, así que no puede usar `COUNT`. La base de datos responde:

```
misuse of aggregate: COUNT()
```

Para filtrar por el resultado de una función, usa **`HAVING`**.

## 🎯 Mini-reto

Calcula el **stock total de cada categoría** (una fila por categoría). Escríbelo en [`codigo/reto.sql`](codigo/reto.sql).

<details>
<summary>Ver solución</summary>

```sql
SELECT categoria, SUM(stock)
FROM productos
GROUP BY categoria;
```

</details>

⬅️ Anterior: [03 · Ordenar y limitar](../03-ordenar-y-limitar) · ➡️ Siguiente: [05 · Crear y modificar datos](../05-crear-y-modificar-datos)
