-- Составьте запрос для поиска исполнителей, у которых есть треки в жанре “N” (например, рок).

SELECT DISTINCT artists.name AS artist FROM artists
JOIN tracks ON artists.artist_id = tracks.artist_id
JOIN track_genres ON tracks.track_id = track_genres.track_id
JOIN genres ON track_genres.genre_id = genres.genre_id
WHERE genres.genre_name = 'Rock';