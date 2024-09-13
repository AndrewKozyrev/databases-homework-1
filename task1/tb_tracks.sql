CREATE TABLE IF NOT EXISTS student09.tracks();

ALTER TABLE IF EXISTS student09.tracks
    ADD COLUMN IF NOT EXISTS track_id       BIGSERIAL,
    ADD COLUMN IF NOT EXISTS album_id       BIGINT,
    ADD COLUMN IF NOT EXISTS artist_id      BIGINT,
    ADD COLUMN IF NOT EXISTS title          VARCHAR(255),
    ADD COLUMN IF NOT EXISTS release_year   INT,
    ADD COLUMN IF NOT EXISTS duration       INTERVAL,
    ADD COLUMN IF NOT EXISTS play_count     INT DEFAULT 0;

COMMENT ON TABLE  student09.tracks                  IS 'Таблица с треками';
COMMENT ON COLUMN student09.tracks.track_id         IS 'Идентификатор трека';
COMMENT ON COLUMN student09.tracks.album_id         IS 'Идентификатор альбома';
COMMENT ON COLUMN student09.tracks.artist_id        IS 'Идентификатор исполнителя';
COMMENT ON COLUMN student09.tracks.title            IS 'Название трека';
COMMENT ON COLUMN student09.tracks.release_year     IS 'Год выпуска трека';
COMMENT ON COLUMN student09.tracks.duration         IS 'Продолжительность трека';
COMMENT ON COLUMN student09.tracks.play_count       IS 'Количество прослушиваний трека';

DO '
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM information_schema.table_constraints
        WHERE lower(table_name) = ''tracks''
          AND lower(table_schema) = ''student09''
          AND lower(constraint_type) = ''primary key''
    )
    THEN
        ALTER TABLE student09.tracks ADD primary key (track_id);
    END IF;
END ';

DO '
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM information_schema.table_constraints
        WHERE lower(table_name) = ''tracks''
          AND lower(table_schema) = ''student09''
          AND lower(constraint_type) = ''foreign key''
    )
    THEN
        ALTER TABLE student09.tracks ADD foreign key (album_id) REFERENCES student09.albums(album_id);
        ALTER TABLE student09.tracks ADD foreign key (artist_id) REFERENCES student09.artists(artist_id);
    END IF;
END ';
