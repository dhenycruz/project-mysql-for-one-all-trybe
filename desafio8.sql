SELECT a.artist_name as artista,
ab.album_name as album
FROM SpotifyClone.album ab
INNER join artist a ON ab.artist_id = a.artist_id
WHERE a.artist_name = 'Walter Phoenix';