-- Solución del mini-reto
INSERT INTO productos (id, nombre, categoria, precio, stock)
VALUES (8, 'Regla', 'Papelería', 1.50, 60);

UPDATE productos
SET precio = 1.20
WHERE id = 8;
