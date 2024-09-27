-- Создание таблицы книг
CREATE TABLE IF NOT EXISTS student09.books();

ALTER TABLE IF EXISTS student09.books
    ADD COLUMN IF NOT EXISTS book_id        BIGSERIAL,
    ADD COLUMN IF NOT EXISTS title          VARCHAR(255),
    ADD COLUMN IF NOT EXISTS isbn           VARCHAR(13),
    ADD COLUMN IF NOT EXISTS price          DECIMAL(10, 2),
    ADD COLUMN IF NOT EXISTS download_count INT DEFAULT 0;

COMMENT ON TABLE  student09.books                   IS 'Таблица с книгами';
COMMENT ON COLUMN student09.books.book_id           IS 'Идентификатор книги';
COMMENT ON COLUMN student09.books.title             IS 'Название книги';
COMMENT ON COLUMN student09.books.isbn              IS 'ISBN книги';
COMMENT ON COLUMN student09.books.price             IS 'Цена книги';
COMMENT ON COLUMN student09.books.download_count    IS 'Количество скачиваний книги';

DO '
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM information_schema.table_constraints
        WHERE lower(table_name) = ''books''
          AND lower(table_schema) = ''student09''
          AND lower(constraint_type) = ''primary key''
    )
    THEN
        ALTER TABLE student09.books ADD primary key (book_id);
    END IF;
END ';