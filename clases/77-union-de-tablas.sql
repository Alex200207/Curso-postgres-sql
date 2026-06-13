-- Seleccionamos las columnas name y continent
-- desde la tabla country.
--
-- La letra "a" después de country es un alias.
-- Es decir, le damos un nombre corto temporal a la tabla country.
--
-- Entonces:
-- country a  = la tabla country ahora se puede referenciar como "a"
-- a.name     = columna name de la tabla country
-- a.continent = columna continent de la tabla country

-- union de tablas con where

SELECT
  a.name as country, -- renombras columna
  b.name as continent
FROM
  country a,
  continent b
WHERE
  a.continent = b.code -- filtro 
order by
  a.name ASC; -- orden acendente