-- pruebas con la estructura de esquemas INFORMATION_SCHEMA


--  visualizacion del esquema de todas las tablas de la base de datos 
SELECT * FROM INFORMATION_SCHEMA.TABLES -- se agrega el .tables para que nos de el esquema de las tablas
WHERE TABLE_SCHEMA = 'daw_22_BD2'; -- selector de la base de datos


-- visualización de todos los esqumas de las columnas de las tablas

SELECT * FROM INFORMATION_SCHEMA.COLUMNS -- cambiamos el selector a columns para ver solo el esquma de las columnas 
WHERE TABLE_SCHEMA = 'daw_22_BD2';



-- ver las restricciones que tiene cada tabla 

SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS -- aplicamos el parametro . table_constraint para acceder a las restricciones 
WHERE CONSTRAINT_TYPE = 'PRIMARY KEY' -- especificamos la restriccion que queremos ver (PK en este caso)
  AND TABLE_SCHEMA = 'daw_22_BD2'; -- le indicamos en que esquema de tabla lo vamos a ver 


/* 
    Las tablas de information schema nos dan la infromacion de sobre la estructura de las tablas que se encuentran en la base
    de datos, así como sus posibles indices.
 */


 -- obtener todas las tablas de una base de datos :

 SELECT TABLE_NAME, TABLE_TYPE -- nos da el tipo de tabla y su numbre 
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'daw_22_BD2';

/* con esta consulta sacaremos todas las tablas que hay existentes en la base de datos (se pueden agregar más campos a la consulta) */


-- obtencion de todos los parametros de indices de la base de datos 

SELECT TABLE_NAME, INDEX_NAME, COLUMN_NAME, NON_UNIQUE -- seleccionamos todos los indices que queramos ver 
FROM INFORMATION_SCHEMA.STATISTICS
WHERE TABLE_SCHEMA = 'daw_22_BD2' -- seleccionamos la base de datos 
ORDER BY TABLE_NAME, INDEX_NAME;

/* 
    de esta manera se puede hacer una seleccion de todos los indices que contiene la base de datos que hemos seleccionado 
 */

 -- obtencion de lo que ocupa en memoria cada tabla :

 SELECT TABLE_NAME,ROUND((DATA_LENGTH + INDEX_LENGTH) / 1024 / 1024, 2) AS MB -- round
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'daw_22_BD2'
ORDER BY MB DESC;

/* explicaion de la consulta :

    round() --> redondea a dos decimales 
    DATA_LENGTH --> mide la catidad de mb que ocupan los datos 
    INDEX_LENGTH --> medida de los indices 

     / 1024 / 1024 --> division para medida en mb 

    la consulta extrae el nombre de la tabla y la operacion de la cantidad de mb que ocupa la tabla, lo guarda en el alias MB creado 
    con as 
 */