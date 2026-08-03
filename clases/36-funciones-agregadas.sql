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



SELECT
COUNT(*) as total_users -- con count traemos el total de registros de una tabla
MIN(followers) as min_followers -- trae el valor minimo de seguidores
MAX(followers) as max_followers -- traer el valor maximo 
ROUND(5.5) as avg_followers -- redondea valores 
AVG(followrs) as avg_followers -- promedio de todos los followers
SUM(followers) / count(*) as avg_manual -- promedio manual de los followers

FROM 
users;