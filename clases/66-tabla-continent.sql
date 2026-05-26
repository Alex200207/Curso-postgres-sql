SELECT DISTINCT continent FROM country order by continent asc;

-- insertar en continentes todos los registro de continentes en country

insert into
  continent (name)
SELECT DISTINCT
  continent
FROM
  country
order by
  continent asc;
  
  
  -- se han insertado con exito
SELECT
  *
from
  continent;