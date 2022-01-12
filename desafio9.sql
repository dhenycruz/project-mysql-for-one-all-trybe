SELECT distinct hr.user_id as quantidade_musicas_no_historico
FROM SpotifyClone.history_reproduce hr
INNER JOIN users s ON hr.user_id = s.user_id
WHERE s.user_name = 'Bill';