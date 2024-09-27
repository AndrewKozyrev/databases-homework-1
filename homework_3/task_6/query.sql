-- Составьте запрос для определения суммы скачиваний по жанрам.

SELECT g.genre_name, SUM(b.download_count) AS total_downloads
FROM student09.books b
JOIN student09.genres g
ON g.genre_id = b.genre_id
GROUP BY g.genre_name
ORDER BY total_downloads DESC;