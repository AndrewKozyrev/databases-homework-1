-- Составьте запрос для поиска исполнителей, у которых нет ни одного трека в жанре “M” (например, кантри).

SELECT artists.name AS artist
FROM student09.artists
WHERE artists.artist_id NOT IN
      (SELECT DISTINCT t.artist_id
       FROM student09.tracks t
                JOIN student09.track_genres tg ON t.track_id = tg.track_id
                JOIN student09.genres g ON tg.genre_id = g.genre_id
       WHERE g.genre_name = 'Rock');