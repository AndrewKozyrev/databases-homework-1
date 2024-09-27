-- Создание партиционированной таблицы книг
CREATE TABLE student09.books
(
    book_id            BIGSERIAL,
    title              VARCHAR(255),
    author_id          BIGINT,
    publication_year   INT,
    pages_count        INT,
    genre_id           BIGINT,
    download_count     INT DEFAULT 0
) PARTITION BY RANGE (download_count);

COMMENT ON TABLE  student09.books                   IS 'Таблица с книгами, партиционированная по количеству скачиваний';
COMMENT ON COLUMN student09.books.book_id           IS 'Идентификатор книги';
COMMENT ON COLUMN student09.books.title             IS 'Название книги';
COMMENT ON COLUMN student09.books.author_id         IS 'Идентификатор автора';
COMMENT ON COLUMN student09.books.publication_year  IS 'Год публикации книги';
COMMENT ON COLUMN student09.books.pages_count       IS 'Количество страниц книги';
COMMENT ON COLUMN student09.books.genre_id          IS 'Идентификатор жанра';
COMMENT ON COLUMN student09.books.download_count    IS 'Количество скачиваний книги';

DO '
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM information_schema.table_constraints
        WHERE lower(table_name) = ''books''
          AND lower(table_schema) = ''student09''
          AND lower(constraint_type) = ''foreign key''
    )
    THEN
        ALTER TABLE student09.books ADD foreign key (author_id) REFERENCES student09.authors(author_id);
        ALTER TABLE student09.books ADD foreign key (genre_id) REFERENCES student09.genres(genre_id);
    END IF;
END ';
