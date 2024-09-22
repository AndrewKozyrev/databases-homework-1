-- Составьте запрос для определения суммы прослушиваний по жанрам, отсортированным по возрастанию количества прослушиваний.

SELECT G.genre_name, SUM(T.play_count) AS "сумма прослушиваний"
FROM genres AS G
JOIN track_genres AS TG ON G.genre_id = TG.genre_id
JOIN tracks AS T ON TG.track_id = T.track_id
GROUP BY G.genre_name
ORDER BY "сумма прослушиваний" ASC;