-- Queremos obtener el país que tiene más ciudades registradas.
-- El resultado mostrará:
-- 1. El nombre del país.
-- 2. La cantidad total de ciudades de ese país.

SELECT
  -- Cuenta cuántas ciudades hay dentro de cada grupo de país.
  COUNT(*) AS total,

  -- Obtiene el nombre del país desde la tabla country.
  -- "b" es el alias de country.
  b.name AS country

-- La tabla principal es city.
-- "a" es un alias corto para referirnos a city.
FROM city AS a

-- Une cada ciudad con el país al que pertenece.
-- INNER JOIN solo incluye ciudades que tengan un país relacionado.
INNER JOIN country AS b -- Une cada ciudad con su país, haciendo coincidir el código de país de la ciudad con el código del país.

  -- a.countrycode es el código de país guardado en cada ciudad.
  -- b.code es el código identificador del país.
  -- Ejemplo: NIC = NIC.
  ON a.countrycode = b.code

-- Agrupa todas las ciudades que pertenecen al mismo país.
-- Se incluye code porque identifica de manera única al país.
GROUP BY-- agrupa ciudades que tengan el mismo codigo y nombre de pais 
  b.code,
  b.name

-- Ordena los países por cantidad de ciudades.
-- DESC significa de mayor a menor.
ORDER BY
  COUNT(*) DESC

-- Devuelve solamente el primer resultado.
-- Como está ordenado de mayor a menor, será el país con más ciudades.
LIMIT 1;