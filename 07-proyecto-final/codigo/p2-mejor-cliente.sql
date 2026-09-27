-- Pregunta 2: ¿Quién es el mejor cliente? (más unidades compradas)
SELECT c.nombre, SUM(v.cantidad) AS unidades
FROM ventas v
JOIN clientes c ON v.cliente_id = c.id
GROUP BY c.id
ORDER BY unidades DESC
LIMIT 1;
