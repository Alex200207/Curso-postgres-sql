-- creando llaves foraneas

alter table city 
-- agregar nueva constraint nomenclatura fk es convencional
	add CONSTRAINT fk_country_code
	-- pasamos el campo o campos que establecen esa llave
	FOREIGN KEY ( countrycode )
	-- palabra reservada references para hacer referencia a la tabla
	REFERENCES country( code ); -- ON DELETE CASCADE
	
	
	SELECT * FROM country WHERE  code = 'AFG';
	
	-- crear ciudad faltante
	
	INSERT INTO country
		values('AFG', 'Afghanistan', 'Asia', 'Southern Asia', 652860, 1919, 40000000, 62, 69000000, NULL, 'Afghanistan', 'Totalitarian', NULL, NULL, 'AF');