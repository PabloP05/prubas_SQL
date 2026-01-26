/* con esta subconsulta obtengo todos los nombres de usuarios que cuentan con 
    partidas dentro del sistema
*/

SELECT nombre
FROM usuarios
WHERE idusuario IN (SELECT idJugador FROM partidas);



/*la subconsulta obtiene las fotos que se han tenido respuesta almacenada en la base de datos,
 lo que se obtiene es la url relativa dentro de la base de datos.*/

SELECT foto
FROM fotos
WHERE idFoto IN (SELECT idFoto FROM respuestasFotos);
