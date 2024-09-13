CREATE TABLE IF NOT EXISTS student09.artists();

ALTER TABLE IF EXISTS student09.artists
    ADD COLUMN IF NOT EXISTS artist_id      BIGSERIAL,
    ADD COLUMN IF NOT EXISTS name           VARCHAR(255),
    ADD COLUMN IF NOT EXISTS country        VARCHAR(100);

COMMENT ON TABLE  student09.artists                IS 'Таблица с исполнителями';
COMMENT ON COLUMN student09.artists.artist_id      IS 'Идентификатор исполнителя';
COMMENT ON COLUMN student09.artists.name           IS 'Имя исполнителя';
COMMENT ON COLUMN student09.artists.country        IS 'Страна исполнителя';

DO '
BEGIN
    IF NOT EXISTS (
            SELECT 1
            FROM information_schema.table_constraints
            WHERE lower(table_name) = ''artists''
              AND lower(table_schema) = ''student09''
              AND lower(constraint_type) = ''primary key''
        )
    THEN
        ALTER TABLE student09.artists ADD primary key (artist_id);
    END IF;
END ';
