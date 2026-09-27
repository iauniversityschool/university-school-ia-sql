-- ⚠️ PELIGRO: sin WHERE, UPDATE cambia TODAS las filas.
-- Esto pone el precio de TODOS los productos a 0. No lo ejecutes en datos reales.
UPDATE productos
SET precio = 0;
