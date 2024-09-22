-- Составьте запрос для поиска треков в жанре “Х” (например, поп) с числом прослушиваний, более 30000.

SELECT T.title, T.play_count, G.genre_name
FROM tracks AS T
         JOIN track_genres ON T.track_id = track_genres.track_id
         JOIN genres AS G ON track_genres.genre_id = G.genre_id
WHERE genre_name = 'Rock'
  AND play_count > 30000;