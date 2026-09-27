# 00 · Introducción: qué es SQL y qué aprenderás

## Ideas clave

- Los **datos** están en todas partes: compras, "me gusta", pedidos, movimientos del banco.
- Una **base de datos** guarda esos datos ordenados, como una biblioteca gigante.
- **SQL** (Structured Query Language, "lenguaje de consultas estructurado") es el idioma para hablar con una base de datos.
- Una **consulta** es una pregunta que le haces a los datos.

## Así se ve SQL

```sql
SELECT nombre, precio
FROM productos;
```

Se lee casi como una frase: "selecciona el nombre y el precio desde la tabla productos".

## Cómo funciona

Tú → escribes una consulta SQL → la base de datos busca en sus tablas → te devuelve una respuesta (otra tabla).

## Qué necesitas

- Un navegador y https://sqliteonline.com
- El archivo [`datos/tienda.sql`](../datos/tienda.sql) de este repositorio

➡️ Siguiente: [01 · Tablas y tu primer SELECT](../01-tablas-y-select)
