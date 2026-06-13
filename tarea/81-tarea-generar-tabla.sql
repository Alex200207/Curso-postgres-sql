

-- unificar todo lo que dice america en el total America


-- Count Union - Tarea
-- Total |  Continent
-- 5	  | Antarctica
-- 28	  | Oceania
-- 46	  | Europe
-- 51	  | America
-- 51	  | Asia
-- 58	  | Africa
(
  SELECT
    COUNT(*) as Total, b.name
  FROM
    country a 
    INNER JOIN continent b on a.continent = b.code
    WHERE b.name not LIKE '%America%'
    GROUP BY b.name
    ORDER BY COUNT(*) ASC
)

union 

(
  SELECT
    COUNT(*) as Total,
    'America'
  FROM
    country a
    INNER JOIN continent b on a.continent = b.code
    WHERE b.name LIKE '%America%'
)

ORDER BY Total asc