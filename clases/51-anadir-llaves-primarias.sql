-- BD 1-country.sql

--alter no sirve para modificar la tabla
-- add para agregar un nueva columna o campo
-- PRIMARY KEY llave primaria 
-- el () indica la columna o campo que servira como llave primaria tambien es posible agregar mas para hacer una llave compuesta serparando por comas.

ALTER TABLE country
add PRIMARY KEY (code);

select * from country;