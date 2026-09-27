-- Error común: olvidar el ON.
-- Sin ON, cada fila se une con TODAS las de la otra tabla
-- (producto cartesiano): 6 ventas x 5 clientes = 30 filas sin sentido.
SELECT v.id, c.nombre
FROM ventas v
JOIN clientes c;
