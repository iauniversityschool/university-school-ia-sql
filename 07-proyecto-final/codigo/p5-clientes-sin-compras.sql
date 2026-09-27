-- Pregunta 5: ¿Qué clientes no han comprado todavía?
SELECT c.nombre
FROM clientes c
LEFT JOIN ventas v ON v.cliente_id = c.id
WHERE v.id IS NULL;
