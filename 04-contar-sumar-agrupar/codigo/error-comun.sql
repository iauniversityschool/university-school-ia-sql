-- Error común: usar una función de agregación dentro de WHERE.
-- WHERE actúa antes de agrupar, así que da:
--   misuse of aggregate: COUNT()
-- Para filtrar por el resultado de una función, usa HAVING.
SELECT categoria
FROM productos
WHERE COUNT(*) > 1
GROUP BY categoria;
