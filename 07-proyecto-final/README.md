# 07 · Proyecto final: analiza La Tiendita

En este proyecto juntas todo lo aprendido para responder **5 preguntas de negocio** reales sobre La Tiendita. Eres un **detective de datos**.

> Vuelve a cargar [`datos/tienda.sql`](../datos/tienda.sql) antes de empezar, para tener la base de datos completa (incluida la clienta Elena, que aún no ha comprado).

## Las 5 preguntas (carpeta [`codigo`](codigo))

| # | Pregunta | Archivo | Conceptos |
|---|---|---|---|
| 1 | ¿Qué producto se vende más? | [`p1-producto-mas-vendido.sql`](codigo/p1-producto-mas-vendido.sql) | `JOIN` + `GROUP BY` + `SUM` + `ORDER BY` |
| 2 | ¿Quién es el mejor cliente? | [`p2-mejor-cliente.sql`](codigo/p2-mejor-cliente.sql) | `JOIN` + `GROUP BY` + `ORDER BY` + `LIMIT` |
| 3 | ¿En qué ciudad vendemos más? | [`p3-ventas-por-ciudad.sql`](codigo/p3-ventas-por-ciudad.sql) | `JOIN` + `GROUP BY` + `COUNT` |
| 4 | ¿Qué producto da más ingreso? | [`p4-ingreso-por-producto.sql`](codigo/p4-ingreso-por-producto.sql) | `SUM(cantidad * precio)` + `ROUND` |
| 5 | ¿Quién no ha comprado aún? | [`p5-clientes-sin-compras.sql`](codigo/p5-clientes-sin-compras.sql) | `LEFT JOIN` + `WHERE ... IS NULL` |

## El orden de una consulta completa

```
SELECT → FROM → JOIN → WHERE → GROUP BY → HAVING → ORDER BY → LIMIT
```

## Respuestas (para comprobar)

1. **Bolígrafo** (10 unidades) · 2. **Ana** (11 unidades) · 3. **Madrid** y **Bogotá** (2 ventas) · 4. **Auriculares** (49.90) · 5. **Elena**

## 🚀 Sigue practicando

Ya sabes hacerle preguntas a una base de datos con SQL. Inventa las tuyas sobre La Tiendita: combina `WHERE`, `GROUP BY` y `JOIN` y comprueba los resultados en [sqliteonline.com](https://sqliteonline.com).

**¡Enhorabuena, has terminado el curso SQL desde cero!**

⬅️ Anterior: [06 · Unir tablas con JOIN](../06-unir-tablas-con-join)
