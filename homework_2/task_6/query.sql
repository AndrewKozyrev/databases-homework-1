-- Составьте запрос для поиска исполнителей жанра Y (например, рэп), у которых среднее число прослушиваний треков более 100 000.

SELECT A.name, AVG(T.play_count) AS avg_play_count FROM tracks AS T
JOIN artists AS A ON T.artist_id = A.artist_id
JOIN track_genres AS TG ON T.track_id = TG.track_id
JOIN genres AS G ON TG.genre_id = G.genre_id
WHERE G.genre_name = 'Rock'
GROUP BY A.name
HAVING AVG(T.play_count) > 100000;
