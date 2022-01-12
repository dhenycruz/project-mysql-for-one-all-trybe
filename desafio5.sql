SELECT s.song_name as cancao,
count(h.song_id) as reproducoes 
FROM SpotifyClone.history_reproduce h
INNER JOIN songs s 
ON h.song_id = s.song_id
group by h.song_id
ORDER by reproducoes DESC, cancao ASC
LIMIT 2;