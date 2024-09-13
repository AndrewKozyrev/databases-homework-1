CREATE TABLE IF NOT EXISTS student09.track_genres();

ALTER TABLE IF EXISTS student09.track_genres
    ADD COLUMN IF NOT EXISTS track_id       BIGINT,
    ADD COLUMN IF NOT EXISTS genre_id       SMALLINT;

COMMENT ON TABLE  student09.track_genres                IS 'Таблица связи треков с жанрами';
COMMENT ON COLUMN student09.track_genres.track_id       IS 'Идентификатор трека';
COMMENT ON COLUMN student09.track_genres.genre_id       IS 'Идентификатор жанра';

DO '
BEGIN
    IF NOT EXISTS (
            SELECT 1
            FROM information_schema.table_constraints
            WHERE lower(table_name) = ''track_genres''
              AND lower(table_schema) = ''student09''
              AND lower(constraint_type) = ''primary key''
        )
    THEN
        ALTER TABLE student09.track_genres ADD primary key (track_id, genre_id);
    END IF;
END ';

DO '
BEGIN
    IF NOT EXISTS (
            SELECT 1
            FROM information_schema.table_constraints
            WHERE lower(table_name) = ''track_genres''
              AND lower(table_schema) = ''student09''
              AND lower(constraint_type) = ''foreign key''
        )
    THEN
        ALTER TABLE student09.track_genres ADD foreign key (track_id) REFERENCES student09.tracks(track_id);
        ALTER TABLE student09.track_genres ADD foreign key (genre_id) REFERENCES student09.genres(genre_id);
    END IF;
END ';
