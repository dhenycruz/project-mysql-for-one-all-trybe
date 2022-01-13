SELECT
song_name as nome_musica,
CASE
	WHEN song_name = 'Dance With Her Own' 
		Then replace(song_name, 'Her Own', 'Trybe')
	WHEN song_name = 'Troubles Of My Inner Fire' 
		Then replace(song_name, 'Inner Fire', 'Project')
	WHEN song_name = 'Magic Circus'
		Then replace(song_name, 'Circus', 'Pull Request')
	WHEN song_name = 'Without My Streets'
		Then replace(song_name, 'Streets', 'Code Review')
	WHEN song_name = "Let's Be Silly" 
		Then replace(song_name, 'Silly', 'Nice')
    END as novo_nome
FROM SpotifyClone.songs
WHERE song_name LIKE '%Streets' OR
song_name LIKE '%Her Own' OR
song_name LIKE '%Inner Fire' OR
song_name LIKE '%Silly' OR
song_name LIKE '%Circus'
ORDER BY nome_musica ASC;

