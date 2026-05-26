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
  
  
  -- alterar campo code de contry al mismo tipo de continent campo code asi podemos tener mismo tipo y integridad referencial para poder agregar una llave foranea
  
  alter table country 
  alter COLUMN continent TYPE int4;
  
  -- Query 1: ERROR:  column "continent" cannot be cast automatically to type integer
-- HINT:  You might need to specify "USING continent::integer".

-- solucion

  alter table country 
  alter COLUMN continent TYPE int4
  USING continent::integer; -- esto no siempre funciona pero esta ves funciono
  
  
  -- hacer unica la columna code en continent ya que tuvimos este error Query 1: ERROR:  there is no unique constraint matching given keys for referenced table "continent"
  
ALTER TABLE continent
ADD UNIQUE(code);


-- agregar llave foranea

alter table country
add CONSTRAINT fk_continent_code
FOREIGN KEY (continent)
REFERENCES continent(code);


