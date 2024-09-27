-- Составьте запрос определения среднего числа скачиваний у авторов.

SELECT a.author_name, AVG(b.download_count) AS average_downloads
FROM student09.authors a
JOIN student09.books b ON a.author_id = b.author_id
GROUP BY a.author_name
ORDER BY average_downloads DESC;
