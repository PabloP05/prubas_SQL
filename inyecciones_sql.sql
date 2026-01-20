-- ejemplo de inyeccion de codigo :

select * from usuarios
WHERE idUsuario = '' or 1 = 1 -- 

/* esta consulta indica lo siguiente :

    select * from usuarios
    WHERE idUsuario = '' or 1 = 1 -- 

suponindo que el id se le pase a la consulta se envia por $_POST con php ahí es donde se aprovecha para inyectar 
el codigo sql, en vez de mandar un dato real mandaremos los caracteres 'or 1=1 -- que lo que hace es que la primera
comilla simple cierra cualquier posible cadena de caracteres y el or 1=1 actua de controlador a true y los dos guiones 
rompen la consulta restante para saltar la seguridad. 
 */