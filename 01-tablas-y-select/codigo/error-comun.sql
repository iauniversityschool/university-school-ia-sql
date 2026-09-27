-- Error común: falta la coma entre columnas.
-- SQL interpreta 'precio' como un nuevo nombre (alias) para la columna 'nombre'.
SELECT nombre precio
FROM productos;
