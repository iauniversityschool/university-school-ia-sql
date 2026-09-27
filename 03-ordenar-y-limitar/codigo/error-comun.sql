-- Error común: poner LIMIT antes de ORDER BY.
-- El orden correcto es: WHERE -> ORDER BY -> LIMIT. Esto da:
--   near "ORDER": syntax error
SELECT nombre
FROM productos
LIMIT 3
ORDER BY precio;
