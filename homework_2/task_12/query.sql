-- Добавьте в список жанров несколько новых жанров.
-- Напишите JOIN запросы для таблиц жанры и песни: INNER JOIN, LEFT OUTER JOIN, RIGHT OUTER JOIN, FULL JOIN.

INSERT INTO genres (genre_name)
VALUES ('Electronic'),
       ('Hip Hop'),
       ('Classical'),
       ('Jazz'),
       ('Reggae');

-- INNER JOIN
SELECT G.genre_name, T.title AS track_title
FROM genres AS G
INNER JOIN track_genres AS TG ON G.genre_id = TG.genre_id
INNER JOIN tracks AS T ON TG.track_id = T.track_id;

-- LEFT OUTER JOIN
SELECT G.genre_name, T.title AS track_title
FROM genres AS G
LEFT OUTER JOIN track_genres AS TG ON G.genre_id = TG.genre_id
LEFT OUTER JOIN tracks AS T ON TG.track_id = T.track_id;

-- RIGHT OUTER JOIN
SELECT G.genre_name, T.title AS track_title
FROM genres AS G
RIGHT OUTER JOIN track_genres AS TG ON G.genre_id = TG.genre_id
RIGHT OUTER JOIN tracks AS T ON TG.track_id = T.track_id;

-- FULL JOIN
SELECT G.genre_name, T.title AS track_title
FROM genres AS G
FULL JOIN track_genres AS TG ON G.genre_id = TG.genre_id
FULL JOIN tracks AS T ON TG.track_id = T.track_id;
