-- Создание таблицы жанров
CREATE TABLE IF NOT EXISTS student09.genres();

ALTER TABLE IF EXISTS student09.genres
    ADD COLUMN IF NOT EXISTS genre_id      BIGSERIAL,
    ADD COLUMN IF NOT EXISTS genre_name    VARCHAR(100);

COMMENT ON TABLE  student09.genres               IS 'Таблица с жанрами';
COMMENT ON COLUMN student09.genres.genre_id      IS 'Идентификатор жанра';
COMMENT ON COLUMN student09.genres.genre_name    IS 'Название жанра';

DO '
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM information_schema.table_constraints
        WHERE lower(table_name) = ''genres''
          AND lower(table_schema) = ''student09''
          AND lower(constraint_type) = ''primary key''
    )
    THEN
        ALTER TABLE student09.genres ADD primary key (genre_id);
    END IF;
END ';
