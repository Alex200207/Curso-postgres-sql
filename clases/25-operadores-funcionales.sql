


SELECT
	id,
	UPPER(name) AS upper_name, -- convierte los a mayusculas
	LOWER(name) AS lower_name, -- convierte los a minisculas
	LENGTH(name) as LENGTH, -- traer la longitud del nombre
	(20 * 2) as constante, -- esto es una multiplicacion de constantes, no tiene sentido pero es para mostrar el uso de operadores
	'*'||id||'-'|| name||'*' as barcode,
	CONCAT( '*',id,'-', name,'*' ),-- esto concatena los valores, es lo mismo que la linea anterior
	name -- name es el nombre original, esto es para mostrar que no se modifica el valor original
FROM
	users;

SELECT
	id,
	UPPER(name) AS upper_name,
	LOWER(name) AS lower_name,
	LENGTH(name) as LENGTH,
	(20 * 2) as constante,
	'*'||id||'-'||name||'*' as barcode,
	CONCAT('*',id,'-',name,'*') as barcode
	name
	FROM
	users;