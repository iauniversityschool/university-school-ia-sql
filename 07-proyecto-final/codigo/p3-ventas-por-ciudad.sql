-- Pregunta 3: ¿En qué ciudad vendemos más?
SELECT c.ciudad, COUNT(v.id) AS ventas
FROM ventas v
JOIN clientes c ON v.cliente_id = c.id
GROUP BY c.ciudad
ORDER BY ventas DESC;
