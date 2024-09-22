-- Составьте запрос определения среднего числа прослушиваний у исполнителей, отсортированных по убыванию количества прослушиваний.

SELECT A.name AS artist_name, AVG(T.play_count) AS "среднее количество прослушиваний"
FROM artists AS A
JOIN tracks AS T ON A.artist_id = T.artist_id
GROUP BY A.name
ORDER BY "среднее количество прослушиваний" DESC;