-- creando llaves foraneas

alter table countrylanguage 
-- agregar nueva constraint nomenclatura fk es convencional
	add CONSTRAINT fk_country_code
	-- pasamos el campo o campos que establecen esa llave
	FOREIGN KEY ( countrycode )
	-- palabra reservada references para hacer referencia a la tabla
	REFERENCES country( code ); -- ON DELETE CASCADE
	
	
	delete FROM country where code ='AFG'

    -- al eliminar el país se eliminan las filas relacionadas en countrylanguage
    -- pero no se eliminan las filas relacionadas en city, por lo que se rompe la integridad referencial
    -- para evitar esto, se puede usar ON DELETE CASCADE en la creación de la llave foranea, para que al eliminar un país se eliminen las filas relacionadas en city y countrylanguage