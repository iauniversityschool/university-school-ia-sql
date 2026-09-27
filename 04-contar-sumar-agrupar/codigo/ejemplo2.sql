-- Ejemplo 2: cuántos productos hay por categoría
SELECT categoria, COUNT(*)
FROM productos
GROUP BY categoria;
