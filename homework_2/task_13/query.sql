-- Добавьте в список песню какого-либо исполнителя, заполнив ее жанр значением NULL.
-- Напишите запрос по выводу списка жанров, для которых нет песен в таблице (с учетом особенностей сравнения с NULL).

INSERT INTO tracks (artist_id, title, release_year, duration, play_count)
VALUES (1, 'Unnamed Track', 2023, 240, 0);

SELECT G.genre_name
FROM genres AS G
LEFT OUTER JOIN track_genres AS TG ON G.genre_id = TG.genre_id
LEFT OUTER JOIN tracks AS T ON TG.track_id = T.track_id
WHERE T.track_id IS NULL;
