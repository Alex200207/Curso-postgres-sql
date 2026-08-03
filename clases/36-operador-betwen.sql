SELECT
  first_name,
  last_name,
  followers
FROM
  users
WHERE
  -- 	followers > 4600 AND < 4700
  followers BETWEEN 4600 AND 4700 -- esto hace lo mismo y es mas facil 
ORDER BY
  followers asc -- agrupado de forma acendente

  SELECT
  first_name,
  last_name,
  followrs
  from 
  users
  where 
  -- followers > 4600 AND < 4700
  followrs BETWEEN 4600 AND 4700 
  order by
  followers asc
