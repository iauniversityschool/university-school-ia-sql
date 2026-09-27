-- Ejemplo 4: precio medio por categoría (redondeado)
SELECT categoria, ROUND(AVG(precio), 2)
FROM productos
GROUP BY categoria;
