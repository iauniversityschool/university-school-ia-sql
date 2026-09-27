# 05 · Crear y modificar datos

Hasta ahora solo leíamos datos con `SELECT`. En esta lección **escribimos** en la base de datos.

> ⚠️ Estas instrucciones **cambian** los datos. Practícalas sobre la base de datos de ejemplo (vuelve a cargar [`datos/tienda.sql`](../datos/tienda.sql) para reiniciarla).

## Lo que aprenderás

1. Crear una tabla con `CREATE TABLE`
2. Añadir filas con `INSERT`
3. Cambiar y borrar filas con `UPDATE` y `DELETE`

## Conceptos

| Instrucción | Qué hace |
|---|---|
| **CREATE TABLE** | Crea una tabla nueva con sus columnas y el tipo de cada una (`INTEGER`, `TEXT`, `REAL`). |
| **INSERT INTO … VALUES** | Añade una fila nueva. Los valores van en el mismo orden que las columnas. |
| **UPDATE … SET … WHERE** | Cambia datos que ya existen. `WHERE` elige qué filas. |
| **DELETE FROM … WHERE** | Borra las filas que elija `WHERE`. |

## Ejemplos (carpeta [`codigo`](codigo))

| Archivo | Qué hace |
|---|---|
| [`crear.sql`](codigo/crear.sql) | `CREATE TABLE`: crea una tabla |
| [`insert.sql`](codigo/insert.sql) | Añade una grapadora (fila nueva) |
| [`update.sql`](codigo/update.sql) | Cambia su precio |
| [`delete.sql`](codigo/delete.sql) | La borra |
| [`peligro.sql`](codigo/peligro.sql) | Qué pasa con un `UPDATE` **sin** `WHERE` |

## ⚠️ La regla más importante: no olvides WHERE

En `UPDATE` y `DELETE`, si **te olvidas del `WHERE`**, el cambio afecta a **todas** las filas:

```sql
UPDATE productos
SET precio = 0;      -- ¡pone el precio de TODOS los productos a 0!
```

Reglas de oro:

- ✅ Escribe **siempre** el `WHERE` en `UPDATE` y `DELETE`.
- 🔍 Pruébalo antes con un `SELECT` que use el mismo `WHERE`.
- 💾 En datos importantes, haz una copia primero.

## 🎯 Mini-reto

Añade un producto nuevo con `INSERT` y luego cámbiale el precio con `UPDATE` (recuerda el `WHERE`). Escríbelo en [`codigo/reto.sql`](codigo/reto.sql).

<details>
<summary>Ver solución</summary>

```sql
INSERT INTO productos (id, nombre, categoria, precio, stock)
VALUES (8, 'Regla', 'Papelería', 1.50, 60);

UPDATE productos
SET precio = 1.20
WHERE id = 8;
```

</details>

⬅️ Anterior: [04 · Contar, sumar y agrupar](../04-contar-sumar-agrupar) · ➡️ Siguiente: [06 · Unir tablas con JOIN](../06-unir-tablas-con-join)
