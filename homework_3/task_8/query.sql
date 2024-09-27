-- Составьте запрос для определения суммы числа скачиваний по авторам.

SELECT a.author_name, SUM(b.download_count) AS total_downloads
FROM student09.authors a
JOIN student09.books b ON a.author_id = b.author_id
GROUP BY a.author_name
ORDER BY total_downloads DESC;