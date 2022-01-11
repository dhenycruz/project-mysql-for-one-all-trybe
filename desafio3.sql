SELECT f.user_name as usuario, COUNT(a.song_id) as qtde_musicas_ouvidas,
ROUND((SUM(s.song_duration) / 60), 2) as total_minutos
FROM SpotifyClone.history a 
INNER JOIN users f ON a.user_id = f.user_id
INNER JOIN songs s ON a.song_id = s.song_id
group by a.user_id order by f.user_name ASC;