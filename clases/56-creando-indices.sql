select * from country where continent = 'North America';

-- creacion de indices
-- podemos tener un indice compuesto y unicos
create  index "contry_continent" on country (continent);

--crear el índice en la tabla country usando la columna continent

create index "country_continent" on country(continent);