SELECT ar.artist_name as artista,
a.album_name as album,
(SELECT count(*) FROM followers f WHERE f.artist_id = a.artist_id) as seguidores
FROM SpotifyClone.album a
INNER JOIN artist ar ON a.artist_id = ar.artist_id
ORDER BY seguidores DESC;