-- Ejemplo 2: unir tres tablas (quién compró qué y cuánto)
SELECT c.nombre AS cliente, p.nombre AS producto, v.cantidad
FROM ventas v
JOIN clientes c ON v.cliente_id = c.id
JOIN productos p ON v.producto_id = p.id;
