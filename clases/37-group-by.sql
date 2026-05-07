SELECT
  COUNT(*) as total_users, -- trae el conteo de todos los registros de la tabla
  MIN(followers) as min_followers, -- trae valor minimo de seguidores
  MAX(followers) as max_followers, -- trae el maximo de seguidores de un user
  ROUND(AVG(followers)) as avg_followers, -- promedio de todos los followers
  SUM(followers) / count(*) as avg_manual -- promedio manual de los followers
  -- round redondea un valor
FROM
  users;

SELECT
  *
FROM
  users;

select
  first_name,
  last_name,
  followers
from
  users
where
  followers = 4
  or followers = 4999;

select
  count(*)
from
  users
where
  followers = 4
  or followers = 4999 -- esto va terminar sumando lo valores asi que no podremos verlos separados
GROUp BY
  followers -- agrupa los valores por (columna) followers y asi no los suma.
  