-- Solución del mini-reto
SELECT nombre, precio
FROM productos
WHERE categoria = 'Tecnología'
  AND precio < 30;
