-- La Tiendita: base de datos de práctica del curso "SQL desde cero" (University School IA).
-- Cómo usarla: copia todo este archivo en https://sqliteonline.com y pulsa "Run".

DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS productos;

CREATE TABLE productos (
  id        INTEGER PRIMARY KEY,
  nombre    TEXT    NOT NULL,
  categoria TEXT    NOT NULL,
  precio    REAL    NOT NULL,
  stock     INTEGER NOT NULL
);

INSERT INTO productos (id, nombre, categoria, precio, stock) VALUES
  (1, 'Teclado',     'Tecnología', 25.00,  40),
  (2, 'Ratón',       'Tecnología', 12.50,  75),
  (3, 'Cuaderno',    'Papelería',   3.20, 200),
  (4, 'Mochila',     'Accesorios', 35.00,  18),
  (5, 'Auriculares', 'Tecnología', 49.90,  22),
  (6, 'Bolígrafo',   'Papelería',   0.80, 500);

-- Tablas que usaremos en lecciones posteriores.
CREATE TABLE clientes (
  id     INTEGER PRIMARY KEY,
  nombre TEXT NOT NULL,
  ciudad TEXT NOT NULL
);

INSERT INTO clientes (id, nombre, ciudad) VALUES
  (1, 'Ana',    'Madrid'),
  (2, 'Luis',   'Bogotá'),
  (3, 'Sofía',  'Ciudad de México'),
  (4, 'Carlos', 'Buenos Aires');

CREATE TABLE ventas (
  id          INTEGER PRIMARY KEY,
  cliente_id  INTEGER NOT NULL REFERENCES clientes(id),
  producto_id INTEGER NOT NULL REFERENCES productos(id),
  cantidad    INTEGER NOT NULL,
  fecha       TEXT    NOT NULL
);

INSERT INTO ventas (id, cliente_id, producto_id, cantidad, fecha) VALUES
  (1, 1, 1, 1, '2026-09-01'),
  (2, 2, 3, 5, '2026-09-02'),
  (3, 3, 5, 1, '2026-09-02'),
  (4, 1, 6, 10, '2026-09-03'),
  (5, 4, 4, 1, '2026-09-04'),
  (6, 2, 2, 2, '2026-09-05');
