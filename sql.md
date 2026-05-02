# Conceptos básicos de SQL

## 1. Sentencia (Statement)

Una **sentencia SQL** es cualquier instrucción completa que el motor de base de datos puede ejecutar.

Ejemplos:

```sql
SELECT * FROM users;
INSERT INTO users (name, email) VALUES ('Alex', 'alex@mail.com');
UPDATE users SET name = 'Alex' WHERE id = 1;
DELETE FROM users WHERE id = 1;
```

Puntos clave:

- Toda consulta es una sentencia, pero no toda sentencia es una consulta.
- Las sentencias suelen terminar con `;`.

## 2. Consulta (Query)

Una **consulta** es una sentencia enfocada en **leer datos**, normalmente con `SELECT`.

Ejemplo:

```sql
SELECT id, name FROM users;
```

Puntos clave:

- Devuelve resultados.
- No modifica datos por sí sola.

## 3. Cláusulas (Clauses)

Las **cláusulas** son partes internas de una sentencia, especialmente de `SELECT`.

Ejemplo:

```sql
SELECT name
FROM users
WHERE age > 18
ORDER BY name ASC;
```

Cláusulas comunes:

- `SELECT`: columnas a mostrar.
- `FROM`: tabla origen.
- `WHERE`: filtro de filas.
- `ORDER BY`: orden de resultados.
- `GROUP BY`: agrupación para agregaciones.
- `HAVING`: filtro sobre grupos.
- `LIMIT` / `TOP`: límite de filas (según motor).

Las cláusulas no se ejecutan solas; forman parte de una sentencia completa.

## 4. Operadores

Los **operadores** permiten comparar, filtrar y combinar condiciones dentro de cláusulas como `WHERE` y `HAVING`.

Ejemplos:

```sql
WHERE name LIKE 'A%'
 AND age >= 18
 AND status = 'active';
```

Operadores frecuentes:

- Comparación: `=`, `!=`, `<>`, `>`, `<`, `>=`, `<=`
- Lógicos: `AND`, `OR`, `NOT`
- Patrones: `LIKE`
- Rangos: `BETWEEN`
- Conjuntos: `IN`
- Nulos: `IS NULL`, `IS NOT NULL`

## Resumen rápido

- **Sentencia**: instrucción SQL completa.
- **Consulta**: sentencia para leer datos (`SELECT`).
- **Cláusula**: bloque interno de una sentencia (`FROM`, `WHERE`, etc.).
- **Operador**: condición o comparación dentro de una cláusula.

## Forma fácil de recordarlo

- Sentencia = la orden completa.
- Consulta = orden para leer.
- Cláusulas = piezas de la orden.
- Operadores = condiciones dentro de esas piezas.

------------------------------------------------

```sql
-- create table users (
--  name VARCHAR(10) UNIQUE -- con unique decimos que no habran nombre duplicados en mi tabla
-- );-- Recomendable poner el punto y coma pues eso indica que hasta ahi termino la instruccion
-- una ves tenemos la tabla creada hay que seleccionar y dar ctrl + enter para ejecutar la query
-- ctrl + i para organizar mejor 
INSERT INTO
  users (name) -- como tenemos una columna podriamos solo dejar users o incluso aunque hubieran mas.
VALUES
  ('Alex'),
  ('andrely');
  
  
-- actualizar un registro
update users -- actualiza tabla usuario
set
  name = 'Alexis'-- establece el nombre Alexis
WHERE
  name = 'Alex';-- donde el nombre es Alex



  
-- sentencia de seleccion
select
  *
from
  users
limit
  2
OFFSET
  2; -- saltar los primeros 2 y traer 2 

-- selecciona todos los registros de la tabla usuarios con limite y salto

```
