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