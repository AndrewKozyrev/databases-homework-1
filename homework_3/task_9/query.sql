-- Составьте запрос для определения количества книг у каждого автора.

SELECT a.author_name, COUNT(b.book_id) AS book_count
FROM student09.authors a
LEFT JOIN student09.books b ON a.author_id = b.author_id
GROUP BY a.author_name
ORDER BY book_count DESC;
