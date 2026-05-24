SELECT
  *
FROM
  city
where
  name = 'Jinzhou'
  and countrycode = 'CHN'
  and district = 'Liaoning';


-- crear un indice
create unique index "unique_name_country_district" on city (
name, countrycode, district);

create index "idx_district" on city (district);