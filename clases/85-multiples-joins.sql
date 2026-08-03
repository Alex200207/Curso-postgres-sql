-- Quiero saber los idiomas oficiales que se habla por continente

select * from countrylanguage WHERE isofficial = true;

select * from country;

select * from continent

select distinct a."language" , c."name" as continent from countrylanguage a
inner join country b on a.countrycode = b.code
inner join continent c on b.continent = c.code
WHERE a.isofficial = true;


-- Quiero saber cuantos idiomas oficiales se hablan por continentes



-- usando subquery
select count(*), continent from (
select distinct a."language" , c."name" as continent from countrylanguage a
inner join country b on a.countrycode = b.code
inner join continent c on b.continent = c.code
WHERE a.isofficial = true
) as totales
GROUP BY 
continent

