SELECT
  -- Cuenta cuántos registros hay en cada grupo.
  -- En este caso, cuenta cuántos países hay por continente.
  count(*),

  -- b es el alias de la tabla continent.
  -- b.name es el nombre del continente.
  b.name
FROM
  -- country a significa:
  -- usamos la tabla country y le damos el alias "a".
  country a

  -- INNER JOIN une country con continent.
  -- Solo toma los países que tienen un continente válido relacionado.
  INNER JOIN continent b ON a.continent = b.code
-- FULL OUTER JOIN
  -- ON a.continent = b.code significa:
  -- el código de continente guardado en country
  -- debe coincidir con el código de la tabla continent.
GROUP BY
  -- Agrupa los países por nombre de continente.
  -- Sin GROUP BY, count(*) contaría todos los países juntos.
  b.name

ORDER BY
  -- Ordena el resultado por la cantidad de países.
  -- ASC = de menor a mayor.
  count(*) ASC;
  
  
  
  
  
  
  -- Objetivo:
-- Obtener la cantidad de países por continente.
--
-- Además, incluir los continentes que no tienen países relacionados,
-- mostrándolos con contador 0.
--
-- Nota:
-- Si usamos solo FULL OUTER JOIN con count(*),
-- los continentes sin países podrían aparecer con count = 1,
-- porque count(*) cuenta la fila generada por el JOIN aunque no exista país.
--
-- Por eso separamos la consulta en dos partes:
-- 1. Contar continentes que sí tienen países relacionados.
-- 2. Agregar continentes sin países relacionados con count = 0.

(
  SELECT
    -- Cuenta la cantidad de países relacionados con cada continente.
    count(*) AS count,

    -- Nombre del continente.
    b.name
  FROM
    -- Tabla de países con alias "a".
    country a

    -- INNER JOIN:
    -- Solo une países que tienen un continente válido relacionado.
    INNER JOIN continent b ON a.continent = b.code

  -- Agrupa por continente para que count(*) cuente países por cada continente.
  GROUP BY
    b.name
)

UNION

(
  SELECT
    -- Como estos continentes no tienen países relacionados,
    -- forzamos el contador a 0.
    0 AS count,

    -- Nombre del continente sin países relacionados.
    b.name
  FROM
    -- Tabla de países con alias "a".
    country a

    -- RIGHT JOIN:
    -- Trae todos los continentes de la tabla continent,
    -- aunque no tengan países relacionados.
    RIGHT JOIN continent b ON a.continent = b.code

  -- Filtra solo los continentes donde no hubo país relacionado.
  -- Si a.continent es NULL, significa que no existe país que apunte a ese continente.
  WHERE
    a.continent IS NULL

  -- Agrupa por nombre del continente para evitar duplicados.
  GROUP BY
    b.name
)

-- Ordena el resultado final por el contador,
-- de menor a mayor.
ORDER BY
  count;