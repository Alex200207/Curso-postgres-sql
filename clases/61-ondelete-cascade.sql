delete from country where code = 'AFG';


-- Query 1: ERROR:  update or delete on table "country" violates foreign key constraint "fk_country_code" on table "countrylanguage"
-- DETAIL:  Key (code)=(AFG) is still referenced from table "countrylanguage".

-- se establecio eliminacion en casada en la fk y asi se mantuvo la integridad referencial

select *  from country where code = 'AFG';

SELECT * from city where countrycode = 'AFG';

SELECT * from countrylanguage where countrycode = 'AFG';