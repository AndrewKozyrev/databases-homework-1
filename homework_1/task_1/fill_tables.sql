INSERT INTO student09.artists (name, country)
VALUES ('The Beatles', 'United Kingdom'),
       ('Led Zeppelin', 'United Kingdom'),
       ('Pink Floyd', 'United Kingdom'),
       ('Queen', 'United Kingdom'),
       ('The Rolling Stones', 'United Kingdom'),
       ('AC/DC', 'Australia'),
       ('Nirvana', 'United States'),
       ('Eminem', 'United States'),
       ('Bob Marley', 'Jamaica'),
       ('Michael Jackson', 'United States');

INSERT INTO student09.genres (genre_name)
VALUES ('Rock'),
       ('Pop'),
       ('Hip Hop'),
       ('Reggae'),
       ('Electronic'),
       ('Jazz'),
       ('Blues'),
       ('Classical'),
       ('Country'),
       ('Metal');

INSERT INTO student09.albums (artist_id, title, release_year)
VALUES (1, 'Abbey Road', 1969),
       (1, 'Sgt. Peppers Lonely Hearts Club Band', 1967),
       (2, 'Led Zeppelin IV', 1971),
       (3, 'The Dark Side of the Moon', 1973),
       (4, 'A Night at the Opera', 1975),
       (5, 'Sticky Fingers', 1971),
       (6, 'Back in Black', 1980),
       (7, 'Nevermind', 1991),
       (8, 'The Marshall Mathers LP', 2000),
       (9, 'Legend', 1984),
       (10, 'Thriller', 1982);

INSERT INTO student09.tracks (album_id, artist_id, title, release_year, duration, play_count)
VALUES (1, 1, 'Come Together', 1969, 259, 120000),
       (1, 1, 'Something', 1969, 182, 90000),
       (2, 1, 'Lucy in the Sky with Diamonds', 1967, 211, 85000),
       (3, 2, 'Stairway to Heaven', 1971, 482, 200000),
       (3, 2, 'Black Dog', 1971, 295, 100000),
       (4, 3, 'Money', 1973, 382, 110000),
       (4, 3, 'Time', 1973, 420, 115000),
       (5, 4, 'Bohemian Rhapsody', 1975, 354, 250000),
       (5, 4, 'You are My Best Friend', 1975, 210, 88000),
       (6, 5, 'Brown Sugar', 1971, 215, 76000),
       (7, 6, 'Back in Black', 1980, 255, 135000),
       (7, 6, 'Hells Bells', 1980, 312, 127000),
       (8, 7, 'Smells Like Teen Spirit', 1991, 301, 180000),
       (9, 8, 'Stan', 2000, 404, 95000),
       (9, 8, 'The Real Slim Shady', 2000, 284, 125000),
       (10, 9, 'No Woman, No Cry', 1984, 247, 140000),
       (11, 10, 'Thriller', 1982, 358, 220000),
       (11, 10, 'Billie Jean', 1982, 294, 230000);

INSERT INTO student09.track_genres (track_id, genre_id)
VALUES (1, 1),
       (2, 1),
       (3, 1),
       (4, 1),
       (5, 1),
       (6, 1),
       (7, 1),
       (8, 1),
       (9, 1),
       (10, 1),
       (11, 1),
       (12, 1),
       (13, 1),
       (14, 3),
       (15, 3),
       (16, 4),
       (17, 2),
       (18, 2);



