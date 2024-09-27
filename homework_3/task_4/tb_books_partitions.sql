-- Создание партиции P1: для книг с количеством скачиваний меньше 1000
CREATE TABLE IF NOT EXISTS student09.books_p1
    PARTITION OF student09.books
    FOR VALUES FROM (MINVALUE) TO (1000);

-- Создание партиции P2: для книг с количеством скачиваний от 1000 до 9999
CREATE TABLE IF NOT EXISTS student09.books_p2
    PARTITION OF student09.books
    FOR VALUES FROM (1000) TO (10000);

-- Создание партиции P3: для книг с количеством скачиваний от 10000 и выше
CREATE TABLE IF NOT EXISTS student09.books_p3
    PARTITION OF student09.books
    FOR VALUES FROM (10000) TO (MAXVALUE);