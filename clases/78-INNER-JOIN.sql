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
  
  
  -- uso de inner join se asegura de mostrar la data que esta en relacion entre A y B
  -- El INNER JOIN sirve para unir datos de dos tablas, pero solo devuelve los registros que sí tienen coincidencia en ambas tablas.
  

  -- LEFT OUTER JOIN muestra todos los registros de la tabla A,
-- aunque no tengan coincidencia en la tabla B.
-- 
-- Si existe coincidencia con B, muestra los datos de B.
-- Si NO existe coincidencia con B, igual muestra el registro de A,
-- pero las columnas de B salen como NULL.
  -- LEFT OUTER JOIN sirve para unir dos tablas, pero devuelve todo lo de la tabla izquierda, aunque no tenga coincidencia en la tabla derecha.
  
  -- RIGHT OUTER JOIN es basicamente igual que LEFT OUTER JOIN pero con la tabla derecha

-- FULL OUTER JOIN obtiene todos los resultado de tabla A y B y si hay un match entre ellos muestra toda esa data en comun y si no hay match conforme a A o vicebersa igual lo muestra aunque sea en null.


-- LEFT OUTER JOIN esto es lo opuesto es decir quiero todo los registros de A que no existan en B
-- LEFT OUTER JOIN trae todos los registros de la tabla izquierda y solo los datos que coinciden de la tabla derecha.

--RIGHT OUTER JOIN es lo mismo que LEFT OUTER JOIN pero al reves.


-- FULL OUTER JOIN 
-- FULL OUTER JOIN trae todo de ambas tablas:

-- Los registros que coinciden entre las dos tablas.
-- Los registros de la tabla izquierda aunque no tengan coincidencia.
-- Los registros de la tabla derecha aunque no tengan coincidencia.



-- INNER JOIN

SELECT
  -- a es el alias de la tabla country.
  -- a."name" significa: columna name de la tabla country.
  -- Se renombra como country para que en el resultado salga con ese nombre.
  a."name" AS country,

  -- b es el alias de la tabla continent.
  -- b."name" significa: columna name de la tabla continent.
  -- Se renombra como continent para que en el resultado salga con ese nombre.
  b."name" AS continent
FROM
  -- country a significa:
  -- usamos la tabla country y le damos el alias temporal "a".
  country a

  -- INNER JOIN une country con continent.
  -- Solo devuelve países que tengan un continente válido relacionado.
  INNER JOIN continent b ON a.continent = b.code;
  -- continent b significa:
  -- usamos la tabla continent y le damos el alias temporal "b".
  --
  -- ON a.continent = b.code significa:
  -- une ambas tablas cuando el valor de country.continent
  -- coincide con el valor de continent.code.