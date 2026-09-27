-- Pregunta 1: ¿Qué producto se vende más? (en unidades)
SELECT p.nombre, SUM(v.cantidad) AS unidades
FROM ventas v
JOIN productos p ON v.producto_id = p.id
GROUP BY p.id
ORDER BY unidades DESC;
