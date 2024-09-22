-- Составьте запрос для определения количества песен у каждого исполнителя.

SELECT A.name AS artist_name, COUNT(T.track_id) AS количество_песен FROM artists AS A
JOIN tracks AS T ON A.artist_id = T.artist_id
GROUP BY A.name;