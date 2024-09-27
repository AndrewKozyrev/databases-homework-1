-- Добавьте в список жанров несколько новых жанров: детектив, фэнтези, биография.

-- Напишите JOIN запросы для таблиц жанры и книги: INNER JOIN, LEFT OUTER JOIN, RIGHT OUTER JOIN, FULL JOIN.

-- Вставка новых жанров
INSERT INTO student09.genres (genre_name)
VALUES ('Adventure'),
       ('Self-Help'),
       ('Poetry'),
       ('Graphic Novel'),
       ('Classic');

-- INNER JOIN
SELECT g.genre_id, g.genre_name, b.title
FROM student09.genres g
INNER JOIN student09.books b ON g.genre_id = b.genre_id;

-- LEFT OUTER JOIN
SELECT g.genre_id, g.genre_name, b.title
FROM student09.genres g
LEFT JOIN student09.books b ON g.genre_id = b.genre_id;

-- RIGHT OUTER JOIN
SELECT g.genre_id, g.genre_name, b.title
FROM student09.genres g
RIGHT JOIN student09.books b ON g.genre_id = b.genre_id;

-- FULL JOIN
SELECT g.genre_id, g.genre_name, b.title
FROM student09.genres g
FULL JOIN student09.books b ON g.genre_id = b.genre_id;
