-- Ejemplo 3: stock total por categoría
SELECT categoria, SUM(stock)
FROM productos
GROUP BY categoria;
