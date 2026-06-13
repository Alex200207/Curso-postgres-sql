-- la UNION es una forma de unir resultados, es sumamente util cuando hay varios resultados 
-- que queremos anadir en un solo resultset porque puede ser que queramos hacer un reporte o hacer algo en particular que requiera hacer dos queries



-- unimos los resultados siempre y cuando tenga mismo numero de columnas
-- los tipos deben hacer matchs 
SELECT * from continent WHERE name like '%America%'
union
SELECT * FROM continent where code in (3,5)
order BY "name" ASC;