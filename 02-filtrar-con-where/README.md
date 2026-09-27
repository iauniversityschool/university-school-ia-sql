# 02 · Filtrar con WHERE

## Lo que aprenderás

1. La palabra `WHERE` para quedarte solo con las filas que te interesan
2. Los operadores de comparación
3. Cómo unir condiciones con `AND` y `OR`

## Conceptos

| Concepto | Explicación sencilla |
|---|---|
| **WHERE** | Un colador: deja pasar solo las filas que cumplen una condición. Va después de `FROM`. |
| **Comillas** | El texto va entre comillas simples (`'Tecnología'`). Los números van sin comillas (`30`). |
| **AND** | Une condiciones: se cumplen **todas**. Cuantas más pones, **menos** filas salen. |
| **OR** | Une condiciones: basta con que se cumpla **al menos una**. Cuantas más pones, **más** filas salen. |

## Operadores de comparación

| Operador | Significa |
|---|---|
| `=` | igual |
| `<` | menor que |
| `>` | mayor que |
| `<=` | menor o igual |
| `>=` | mayor o igual |
| `<>` | distinto de |

## Estructura

```sql
SELECT columnas
FROM tabla
WHERE condicion;
```

## Ejemplos (carpeta [`codigo`](codigo))

| Archivo | Qué hace |
|---|---|
| [`ejemplo1.sql`](codigo/ejemplo1.sql) | Igualdad: productos de la categoría Tecnología |
| [`ejemplo2.sql`](codigo/ejemplo2.sql) | Menor que: productos de menos de 10 € |
| [`ejemplo3.sql`](codigo/ejemplo3.sql) | `AND`: Tecnología **y** menos de 30 € |
| [`ejemplo4.sql`](codigo/ejemplo4.sql) | `OR`: Papelería **o** más de 40 € |
| [`error-comun.sql`](codigo/error-comun.sql) | Qué pasa si olvidas las comillas |

## ⚠️ Error común: olvidar las comillas

```sql
SELECT nombre
FROM productos
WHERE categoria = Tecnología;
```

Sin comillas, la base de datos cree que `Tecnología` es una columna y responde con un error:

```
no such column: Tecnología
```

El texto siempre va entre comillas simples: `WHERE categoria = 'Tecnología'`.

## 🎯 Mini-reto

Muestra el **nombre** y el **precio** de los productos de la categoría **Tecnología** que cuesten **menos de 30 €**. Escríbelo en [`codigo/reto.sql`](codigo/reto.sql).

<details>
<summary>Ver solución</summary>

```sql
SELECT nombre, precio
FROM productos
WHERE categoria = 'Tecnología'
  AND precio < 30;
```

</details>

⬅️ Anterior: [01 · Tablas y tu primer SELECT](../01-tablas-y-select) · ➡️ Siguiente: 03 · Ordenar y limitar (próximamente)
