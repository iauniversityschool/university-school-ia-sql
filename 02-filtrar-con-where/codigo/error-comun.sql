-- Error común: olvidar las comillas en un texto.
-- La base de datos cree que Tecnología es una columna y da:
--   no such column: Tecnología
SELECT nombre
FROM productos
WHERE categoria = Tecnología;
