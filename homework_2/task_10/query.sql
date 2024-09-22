-- Составьте запрос для определения суммы числа прослушиваний по исполнителям, отсортированным по возрастанию числа прослушиваний.

SELECT A.name AS artist_name, SUM(T.play_count) AS сумма_прослушиваний
FROM artists AS A
JOIN tracks AS T ON A.artist_id = T.artist_id
GROUP BY A.name
ORDER BY сумма_прослушиваний ASC;