-- Pregunta 4: ¿Qué producto genera más ingreso? (precio x unidades)
SELECT p.nombre,
  ROUND(SUM(v.cantidad * p.precio), 2) AS ingreso
FROM ventas v
JOIN productos p ON v.producto_id = p.id
GROUP BY p.id
ORDER BY ingreso DESC;
