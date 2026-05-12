# Indices - Index

![alt text](image-14.png)

Los indices le dice a la base de datos que prepare consultas basadas en este mismo.

Los índices en bases de datos son estructuras especiales que se utilizan para mejorar la velocidad de búsqueda y consulta de información dentro de una tabla.

Funcionan de manera similar al índice de un libro:
- En lugar de revisar página por página, el índice permite encontrar rápidamente la información.

## Objetivo principal

El objetivo de un índice es:
- Acelerar consultas `SELECT`
- Mejorar búsquedas
- Optimizar filtros, ordenamientos y relaciones

## Ejemplo sin índice

```sql
SELECT * FROM users WHERE email = 'alex@gmail.com';
```

Sin índice:
- La base de datos revisa fila por fila hasta encontrar el dato.

Esto se conoce como:
- Full Table Scan

## Ejemplo con índice

Si existe un índice sobre `email`:

```sql
CREATE INDEX idx_users_email
ON users(email);
```

La base de datos puede encontrar el dato mucho más rápido sin recorrer toda la tabla.

## Ventajas

- Consultas más rápidas
- Mejor rendimiento
- Optimización de búsquedas frecuentes
- Ayuda en `JOIN`, `WHERE` y `ORDER BY`

## Desventajas

- Consumen espacio adicional
- Los `INSERT`, `UPDATE` y `DELETE` pueden ser un poco más lentos
- Demasiados índices pueden afectar el rendimiento

## Tipos comunes de índices

### Índice simple

Se crea sobre una sola columna.

```sql
CREATE INDEX idx_name
ON users(name);
```

### Índice único

No permite valores duplicados.

```sql
CREATE UNIQUE INDEX idx_email
ON users(email);
```

### Índice compuesto

Usa varias columnas.

```sql
CREATE INDEX idx_fullname
ON users(first_name, last_name);
```

## Resumen

Los índices son estructuras que permiten acceder más rápido a los datos de una tabla, mejorando el rendimiento de las consultas en una base de datos.