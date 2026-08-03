Select
  name,
  SUBSTRING(name, 0, 5), -- corta una parte de la cadena tomar en cuenta que aqui las posiciones empiezan desde 1 no desde 0
  -- POSITION('E' in name)  busca un caracter y devuelve la posicion de este ejemplo (Eddy seria posicion 1 pues ahi se encuentra la E "0" no vale nada aqui)
  SUBSTRING(name, 0,  POSITION(' ' in name)) as first_name,
  SUBSTRING(name,POSITION(' ' in name )+1) as last_name,
  TRIM(SUBSTRING(name,POSITION(' ' in name ) + 1) )as last_name -- quita los espacios al inicio y final no recomendado pxq hace mas trabajo de lo recomendado
from
  users;

Select
name,
SUBSTRING(name,0,5)--cortar el name de la posicion 0 a la 5 
POSITION('E' in name) -- buscar la posicion de la letra E en el name las posiciones empiezan desde 1 no desde 0
SUBSTRING(name, POSITION(' ' in name)+1) as last_name 
TRIM(SUBSTRING(name, POSITION('') in name) +1) as last_name --TRIM elimina espacios vacios en inicio y final
FROM
users;