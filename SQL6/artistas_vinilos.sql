/* Una vez tengas la base de datos en el escritorio de edición standard de mySQL Workbench, haz inserciones (al menos 5), 
asegurándote de insertar correctamente los id de las claves foráneas (en el ejemplo, cada coche en qué concesionario está).
Y realiza consultas multitabla, tanto las que vimos anteriormente como algunas nuevas opciones con CONCAT, FORMAT y LIMIT.
*/

SELECT * FROM artistas_vinilos.artistas;

SELECT nombre_artista, nombre_album FROM artistas_vinilos.artistas, artistas_vinilos.vinilos
WHERE vinilos.artistas_idartistas = artistas.idartistas;

SELECT CONCAT(artistas.nombre_artista, ' - ', vinilos.nombre_album) AS artista_album
FROM artistas_vinilos.artistas, artistas_vinilos.vinilos
WHERE vinilos.artistas_idartistas = artistas.idartistas;

SELECT CONCAT(artistas.nombre_artista, ' - ', vinilos.nombre_album, ' (', FORMAT(vinilos.año_lanzamiento, 0), ')') AS artista_album_año
FROM artistas_vinilos.artistas, artistas_vinilos.vinilos
WHERE vinilos.artistas_idartistas = artistas.idartistas;

SELECT CONCAT(artistas.nombre_artista, ' - ', vinilos.nombre_album) AS artista_album
FROM artistas_vinilos.artistas, artistas_vinilos.vinilos
WHERE vinilos.artistas_idartistas = artistas.idartistas
LIMIT 5;

