-- Добавьте в список книгу:

-- Доктор Живаго	Борис Пастернак	1955	660	NULL	20300
-- Напишите запрос по выводу списка жанров книг, для которых нет книг в таблице (с учетом особенностей сравнения с NULL).

-- Вставка новой книги
INSERT INTO student09.books (title, author_id, publication_year, pages_count, genre_id, download_count)
VALUES ('Доктор Живаго',
        (SELECT author_id FROM student09.authors WHERE author_name = 'Борис Пастернак'),
        1955,
        660,
        NULL,
        20300);

SELECT g.genre_id, g.genre_name
FROM student09.genres g
LEFT JOIN student09.books b ON g.genre_id = b.genre_id
WHERE b.book_id IS NULL;

