SELECT
    count(*) as total, -- cuenta cuántas filas hay en cada grupo
    country   -- muestra el país del grupo
FROM
    users     -- tabla users de donde salen los datos
GROUP BY
    country  -- agrupa las filas que tengan el mismo país
HAVING COUNT(*) BETWEEN 1 AND 5 -- having es una condicion ahpra no trae las cantidades mayores a 5
ORDER BY country DESC;

-- Significado completo de la consulta:
-- 1. Obtiene los datos de la tabla users
-- 2. Agrupa los usuarios según el país
-- 3. Cuenta cuántos usuarios existen en cada país
-- 4. Devuelve el total de usuarios junto al nombre del país


SELECT 
    count(*) as total,
    country
FROM
     users
GROUP BY
    contry
HAVING COUNT(*) BETWEEN 1 AND 5
ORDER BY country DESC;