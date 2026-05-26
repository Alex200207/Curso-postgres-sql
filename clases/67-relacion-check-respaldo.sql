-- backup de country 

CREATE TABLE country_backup AS
SELECT * FROM country;

SELECT * from country;

-- eliminar check constraint en country 

alter table country drop CONSTRAINT country_continent_check;

