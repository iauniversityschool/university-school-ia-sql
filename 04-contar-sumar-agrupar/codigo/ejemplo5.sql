-- Ejemplo 5: solo las categorías con 2 o más productos (HAVING)
SELECT categoria, COUNT(*)
FROM productos
GROUP BY categoria
HAVING COUNT(*) >= 2;
