-- Наполнение таблицы с жанрами
INSERT INTO student09.genres (genre_name) VALUES ('Rock');
INSERT INTO student09.genres (genre_name) VALUES ('Pop');
INSERT INTO student09.genres (genre_name) VALUES ('Hip-Hop');
INSERT INTO student09.genres (genre_name) VALUES ('Jazz');
INSERT INTO student09.genres (genre_name) VALUES ('Classical');
INSERT INTO student09.genres (genre_name) VALUES ('Electronic');








-- Наполнение таблицы с исполнителями
INSERT INTO student09.artists (name, country) VALUES ('The Beatles', 'UK');
INSERT INTO student09.artists (name, country) VALUES ('Beyoncé', 'USA');
INSERT INTO student09.artists (name, country) VALUES ('Kanye West', 'USA');
INSERT INTO student09.artists (name, country) VALUES ('Miles Davis', 'USA');
INSERT INTO student09.artists (name, country) VALUES ('Ludwig van Beethoven', 'Germany');










-- Наполнение таблицы с альбомами
INSERT INTO student09.albums (artist_id, title, release_year, genre_id) VALUES (
                                                                                       (SELECT artist_id FROM student09.artists WHERE name='The Beatles'),
                                                                                       'Abbey Road',
                                                                                       1969,
                                                                                       (SELECT genre_id FROM student09.genres WHERE genre_name='Rock')
                                                                                   );

INSERT INTO student09.albums (artist_id, title, release_year, genre_id) VALUES (
                                                                                       (SELECT artist_id FROM student09.artists WHERE name='Beyoncé'),
                                                                                       'Lemonade',
                                                                                       2016,
                                                                                       (SELECT genre_id FROM student09.genres WHERE genre_name='Pop')
                                                                                   );

INSERT INTO student09.albums (artist_id, title, release_year, genre_id) VALUES (
                                                                                       (SELECT artist_id FROM student09.artists WHERE name='Kanye West'),
                                                                                       'My Beautiful Dark Twisted Fantasy',
                                                                                       2010,
                                                                                       (SELECT genre_id FROM student09.genres WHERE genre_name='Hip-Hop')
                                                                                   );

INSERT INTO student09.albums (artist_id, title, release_year, genre_id) VALUES (
                                                                                       (SELECT artist_id FROM student09.artists WHERE name='Miles Davis'),
                                                                                       'Kind of Blue',
                                                                                       1959,
                                                                                       (SELECT genre_id FROM student09.genres WHERE genre_name='Jazz')
                                                                                   );

INSERT INTO student09.albums (artist_id, title, release_year, genre_id) VALUES (
                                                                                       (SELECT artist_id FROM student09.artists WHERE name='Ludwig van Beethoven'),
                                                                                       'Symphony No. 9',
                                                                                       1824,
                                                                                       (SELECT genre_id FROM student09.genres WHERE genre_name='Classical')
                                                                                   );










-- Наполнение таблицы с треками
INSERT INTO student09.tracks (album_id, artist_id, title, release_year, duration, play_count) VALUES (
                                                                                                             (SELECT album_id FROM student09.albums WHERE title='Abbey Road'),
                                                                                                             (SELECT artist_id FROM student09.artists WHERE name='The Beatles'),
                                                                                                             'Come Together',
                                                                                                             1969,
                                                                                                             INTERVAL '4 minutes 20 seconds',
                                                                                                             1000000
                                                                                                         );

INSERT INTO student09.tracks (album_id, artist_id, title, release_year, duration, play_count) VALUES (
                                                                                                             (SELECT album_id FROM student09.albums WHERE title='Lemonade'),
                                                                                                             (SELECT artist_id FROM student09.artists WHERE name='Beyoncé'),
                                                                                                             'Formation',
                                                                                                             2016,
                                                                                                             INTERVAL '3 minutes 26 seconds',
                                                                                                             500000
                                                                                                         );

INSERT INTO student09.tracks (album_id, artist_id, title, release_year, duration, play_count) VALUES (
                                                                                                             (SELECT album_id FROM student09.albums WHERE title='My Beautiful Dark Twisted Fantasy'),
                                                                                                             (SELECT artist_id FROM student09.artists WHERE name='Kanye West'),
                                                                                                             'Power',
                                                                                                             2010,
                                                                                                             INTERVAL '4 minutes 52 seconds',
                                                                                                             800000
                                                                                                         );

INSERT INTO student09.tracks (album_id, artist_id, title, release_year, duration, play_count) VALUES (
                                                                                                             (SELECT album_id FROM student09.albums WHERE title='Kind of Blue'),
                                                                                                             (SELECT artist_id FROM student09.artists WHERE name='Miles Davis'),
                                                                                                             'So What',
                                                                                                             1959,
                                                                                                             INTERVAL '9 minutes 4 seconds',
                                                                                                             200000
                                                                                                         );

INSERT INTO student09.tracks (album_id, artist_id, title, release_year, duration, play_count) VALUES (
                                                                                                             (SELECT album_id FROM student09.albums WHERE title='Symphony No. 9'),
                                                                                                             (SELECT artist_id FROM student09.artists WHERE name='Ludwig van Beethoven'),
                                                                                                             'Ode to Joy',
                                                                                                             1824,
                                                                                                             INTERVAL '24 minutes 52 seconds',
                                                                                                             100000
                                                                                                         );










-- Наполнение таблицы связи треков с жанрами
INSERT INTO student09.track_genres (track_id, genre_id) VALUES (
                                                                       (SELECT track_id FROM student09.tracks WHERE title='Come Together'),
                                                                       (SELECT genre_id FROM student09.genres WHERE genre_name='Rock')
                                                                   );

INSERT INTO student09.track_genres (track_id, genre_id) VALUES (
                                                                       (SELECT track_id FROM student09.tracks WHERE title='Formation'),
                                                                       (SELECT genre_id FROM student09.genres WHERE genre_name='Pop')
                                                                   );

INSERT INTO student09.track_genres (track_id, genre_id) VALUES (
                                                                       (SELECT track_id FROM student09.tracks WHERE title='Power'),
                                                                       (SELECT genre_id FROM student09.genres WHERE genre_name='Hip-Hop')
                                                                   );

INSERT INTO student09.track_genres (track_id, genre_id) VALUES (
                                                                       (SELECT track_id FROM student09.tracks WHERE title='So What'),
                                                                       (SELECT genre_id FROM student09.genres WHERE genre_name='Jazz')
                                                                   );

INSERT INTO student09.track_genres (track_id, genre_id) VALUES (
                                                                       (SELECT track_id FROM student09.tracks WHERE title='Ode to Joy'),
                                                                       (SELECT genre_id FROM student09.genres WHERE genre_name='Classical')
                                                                   );
