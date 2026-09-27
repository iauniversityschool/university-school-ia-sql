-- Ejemplo 1: el nombre del cliente de cada venta (INNER JOIN)
SELECT v.id, c.nombre
FROM ventas v
JOIN clientes c ON v.cliente_id = c.id;
