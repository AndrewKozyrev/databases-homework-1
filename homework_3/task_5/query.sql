-- Составьте запрос для определения суммы скачиваний книг в жанре «Romance».

SELECT title, g.genre_name, download_count
FROM student09.books b
JOIN student09.genres g ON b.genre_id = g.genre_id
WHERE g.genre_name = 'Romance';

SELECT SUM(b.download_count) AS total_downloads
FROM student09.books b
JOIN student09.genres g ON b.genre_id = g.genre_id
WHERE g.genre_name = 'Romance';