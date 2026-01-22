
-- voy a usar este usuario para la creacion de tablas mediate inyeccion de codigo dentro 

CREATE USER 'creador_tablas'@'localhost' IDENTIFIED BY '1234';

-- permisos del usuario
GRANT create,alter,drop ON daw_22_BD2.* TO 'nuevo_usuario'@'localhost';
FLUSH PRIVILEGES;


-- prueba de la inyeccion que he realizado 
 ''or 1=1;  create table if not exists iyectado(
    idInyectado tinyint PRIMARY KEY auto_increment,
    nombre varchar(50) -- 
 );


 /*******************************************************************************************************/