CREATE TABLE IF NOT EXISTS student09.albums();

ALTER TABLE IF EXISTS student09.albums
    ADD COLUMN IF NOT EXISTS album_id       BIGSERIAL,
    ADD COLUMN IF NOT EXISTS artist_id      BIGINT,
    ADD COLUMN IF NOT EXISTS title          VARCHAR(255),
    ADD COLUMN IF NOT EXISTS release_year   INT;

COMMENT ON TABLE  student09.albums                  IS 'Таблица с альбомами';
COMMENT ON COLUMN student09.albums.album_id         IS 'Идентификатор альбома';
COMMENT ON COLUMN student09.albums.artist_id        IS 'Идентификатор исполнителя';
COMMENT ON COLUMN student09.albums.title            IS 'Название альбома';
COMMENT ON COLUMN student09.albums.release_year     IS 'Год выпуска альбома';

DO '
BEGIN
    IF NOT EXISTS (
            SELECT 1
            FROM information_schema.table_constraints
            WHERE lower(table_name) = ''albums''
              AND lower(table_schema) = ''student09''
              AND lower(constraint_type) = ''primary key''
        )
    THEN
        ALTER TABLE student09.albums ADD primary key (album_id);
    END IF;
END ';

DO '
BEGIN
    IF NOT EXISTS (
            SELECT 1
            FROM information_schema.table_constraints
            WHERE lower(table_name) = ''albums''
              AND lower(table_schema) = ''student09''
              AND lower(constraint_type) = ''foreign key''
        )
    THEN
        ALTER TABLE student09.albums ADD foreign key (artist_id) REFERENCES student09.artists(artist_id);
    END IF;
END ';