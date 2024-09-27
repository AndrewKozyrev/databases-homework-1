-- Создание таблицы авторов
CREATE TABLE IF NOT EXISTS student09.authors();

ALTER TABLE IF EXISTS student09.authors
    ADD COLUMN IF NOT EXISTS author_id      BIGSERIAL,
    ADD COLUMN IF NOT EXISTS author_name    VARCHAR(255);

COMMENT ON TABLE  student09.authors               IS 'Таблица с авторами';
COMMENT ON COLUMN student09.authors.author_id     IS 'Идентификатор автора';
COMMENT ON COLUMN student09.authors.author_name   IS 'Имя автора';

DO '
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM information_schema.table_constraints
        WHERE lower(table_name) = ''authors''
          AND lower(table_schema) = ''student09''
          AND lower(constraint_type) = ''primary key''
    )
    THEN
        ALTER TABLE student09.authors ADD primary key (author_id);
    END IF;
END ';
