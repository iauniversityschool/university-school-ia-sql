-- Ejemplo 3: compras por cliente con LEFT JOIN
-- (Elena aparece con 0; con INNER JOIN no saldría)
SELECT c.nombre, COUNT(v.id) AS compras
FROM clientes c
LEFT JOIN ventas v ON v.cliente_id = c.id
GROUP BY c.id;
