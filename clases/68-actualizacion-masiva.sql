-- backup de country 

CREATE TABLE country_backup AS
SELECT * FROM country;

SELECT * from country;

-- eliminar check constraint en country 

alter table country drop CONSTRAINT country_continent_check;

-- asegurarse primero de los datos a modificar
-- poner un alias al final (a) podemos acceder mas facil a sus campos
-- esto basicamente es un inner join
SELECT
  a.name,
  a.continent,
  (SELECT "code" FROM continent b where b.name = a.continent ) --subquery
from
  country a;
  
  -- tomamos el subquery para hacer la actualizacion y establecer llave foranea
  
  UPDATE country a 
  set continent =   (SELECT "code" FROM continent b where b.name = a.continent ); --subquery
  
  
  SELECT * from country;
