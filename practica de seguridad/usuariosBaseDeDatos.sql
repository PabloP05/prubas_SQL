-- usuario solo con permisos de select e insert 
    CREATE USER 'restrict'@'localhost' IDENTIFIED BY '';
    GRANT select,insert ON seguridad.* TO 'restrict'@'localhost';
    FLUSH PRIVILEGES;
        /* 
            estos usuarios son adecuados para app donde solo se busca la insercion y 
            seleccion de los daros de una base de datos.
        */

-- usuario para los administradores 
    CREATE USER 'admin'@'localhost' IDENTIFIED BY '1234';
     GRANT select,insert,alter,delete ON seguridad.* TO 'admin'@'localhost';
     FLUSH PRIVILEGES;

        /* 
            usuario generado para los adminsitradores de una app los cuales necesitan modificar
            datos de personas dentro de la app (ej: una app de empresa controlada por un encargado)
         */