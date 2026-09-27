-- Ejemplo 4: el top 3 más caro (ORDER BY + LIMIT)
SELECT nombre, precio
FROM productos
ORDER BY precio DESC
LIMIT 3;
