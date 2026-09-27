-- Ejemplo 4: dos condiciones con OR (basta UNA)
SELECT nombre, categoria, precio
FROM productos
WHERE categoria = 'Papelería'
  OR precio > 40;
