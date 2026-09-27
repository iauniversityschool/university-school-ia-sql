-- Ejemplo 3: dos condiciones con AND (se cumplen TODAS)
SELECT nombre, precio
FROM productos
WHERE categoria = 'Tecnología'
  AND precio < 30;
