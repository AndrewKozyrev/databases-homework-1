-- Шаг 0: Удалить таблицу с книгами, если она существует
DROP TABLE IF EXISTS student09.books CASCADE;

-- Шаг 1: Создание основной таблицы с указанием партиционирования по полю download_count
CREATE TABLE IF NOT EXISTS student09.books
(
    book_id         BIGINT,
    title           VARCHAR(255),
    isbn            VARCHAR(13),
    price           NUMERIC(10, 2),
    download_count  INT DEFAULT 0
) PARTITION BY RANGE (download_count);

COMMENT ON TABLE  student09.books                   IS 'Таблица с книгами';
COMMENT ON COLUMN student09.books.book_id           IS 'Идентификатор книги';
COMMENT ON COLUMN student09.books.title             IS 'Название книги';
COMMENT ON COLUMN student09.books.isbn              IS 'ISBN книги';
COMMENT ON COLUMN student09.books.price             IS 'Цена книги';
COMMENT ON COLUMN student09.books.download_count    IS 'Количество скачиваний книги';

-- Шаг 2: Создание партиций с диапазонами для числа скачиваний
CREATE TABLE books_p1 PARTITION OF student09.books
    FOR VALUES FROM (MINVALUE) TO (1000);   -- P1: меньше 1000 скачиваний

CREATE TABLE books_p2 PARTITION OF student09.books
    FOR VALUES FROM (1000) TO (10000);      -- P2: от 1000 до 9999 скачиваний

CREATE TABLE books_p3 PARTITION OF student09.books
    FOR VALUES FROM (10000) TO (MAXVALUE);  -- P3: больше или равно 10000 скачиваний