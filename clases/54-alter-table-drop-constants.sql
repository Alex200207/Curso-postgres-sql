ALTER TABLE [ ONLY ] table [ * ]
    ADD [ COLUMN ] column type [ column_constraint [ ... ] ]
ALTER TABLE [ ONLY ] table [ * ]
    ALTER [ COLUMN ] column { SET DEFAULT value | DROP DEFAULT }
ALTER TABLE [ ONLY ] table [ * ]
    ALTER [ COLUMN ] column SET STATISTICS integer
ALTER TABLE [ ONLY ] table [ * ]
    RENAME [ COLUMN ] column TO newcolumn
ALTER TABLE table
    RENAME TO new_table
ALTER TABLE table
    ADD table_constraint_definition
ALTER TABLE [ ONLY ] table 
        DROP CONSTRAINT constraint { RESTRICT | CASCADE }
ALTER TABLE table
        OWNER TO new_owner



-- BD 1-country.sql

--alter no sirve para modificar la tabla
-- add para agregar un nueva columna o campo
-- PRIMARY KEY llave primaria 
-- el () indica la columna o campo que servira como llave primaria tambien es posible agregar mas para hacer una llave compuesta serparando por comas.

ALTER TABLE country
add PRIMARY KEY (code);

select * from country;

-- CHECK es una restriccion que se utiliza para limitar los valores que se pueden insertar en una columna o campo, en este caso se esta limitando a que el valor de surfacearea sea mayor o igual a 0.
alter table country add check(surfacearea >= 0);
-- resive dentro de parentesis los nombres de las columnas o campos que se van a utilizar para la restriccion, en este caso se esta utilizando la columna surfacearea y se esta limitando a que el valor sea mayor o igual a 0.



-- check con multiples posibilidades de strings



select DISTINCT
  continent
from
  country;
  
  -- check para solo esperar estos continentes y tipo de dato dentro del campo

alter table country
add CHECK (
  (continent = 'Asia'::text) -- casteo especificamos el tipo , sera text string
  or (continent = 'South America'::text)
  or (continent = 'North America'::text)
  or (continent = 'Oceania'::text)
  or (continent = 'Antarctica'::text)
  or (continent = 'Africa'::text)
  or (continent = 'Europe'::text)
    or (continent = 'Central America'::text)
)

-- eliminar una restriccion - acostumbrar a eliminarlo cuando se va extender la restriccion
alter table country drop CONSTRAINT "country_continent_check10";


-- tarea buscar pais de centroamerica 

SELECT * FROM country where code = 'HND';

update country
set
  continent = 'Central America'
where
  code = 'HND';




