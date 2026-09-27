-- Solución del mini-reto
SELECT categoria, SUM(stock)
FROM productos
GROUP BY categoria;
