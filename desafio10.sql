SELECT DISTINCT s.song_name as nome, count(hr.song_id) as reproducoes
FROM SpotifyClone.history_reproduce hr
INNER JOIN songs s ON hr.song_id = s.song_id
INNER JOIN users u ON hr.user_id = u.user_id
INNER JOIN plans p ON u.plan_id = p.plan_id
WHERE p.plan_name = 'pessoal' OR p.plan_name = 'gratuito'
GROUP BY hr.song_id
ORDER BY reproducoes DESC, nome;