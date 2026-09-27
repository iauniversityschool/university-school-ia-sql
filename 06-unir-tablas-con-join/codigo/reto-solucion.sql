-- Solución del mini-reto
SELECT v.id, c.nombre
FROM ventas v
JOIN clientes c ON v.cliente_id = c.id;
