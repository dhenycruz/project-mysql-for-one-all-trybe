SELECT count(*) as cancoes,
(SELECT count(*)
FROM SpotifyClone.artist) as artistas,
(SELECT count(*)
FROM SpotifyClone.album
) as albuns
FROM SpotifyClone.songs
;