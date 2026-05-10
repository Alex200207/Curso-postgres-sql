-- subqueries no es nada mas que un query que se ejecuta dentro de un query


SELECT
  *
FROM
  (
    SELECT
      COUNT(*),
      -- contar todos los registros de cada grupo
      SUBSTRING(email, POSITION('@' IN email) + 1) AS DOMAIN,
      -- obtener el dominio del email
      -- ejemplo: gmail.com
      'Eddy' as name,
      23 as age
    FROM
      users
      -- usar la tabla users
    GROUP BY
      SUBSTRING(email, POSITION('@' IN email) + 1)
      -- agrupar usuarios por dominio de email
    HAVING
      COUNT(*) > 1
    ORDER BY
      SUBSTRING(email, POSITION('@' IN email) + 1) ASC
  ) as email_domain -- es hacer un select from a email domain