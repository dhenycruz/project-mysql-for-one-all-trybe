SELECT u.user_name as usuario,
if(max(h.date_reproduce) > '2021-01-01', 'Usuário ativo', 'Usuário inativo') as condicao_usuario
FROM SpotifyClone.history_reproduce h 
INNER JOIN users u ON h.user_id = u.user_id
group by h.user_id
ORDER BY u.user_name;