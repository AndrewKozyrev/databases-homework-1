-- Создание таблицы заказов
CREATE TABLE IF NOT EXISTS student09.orders();

ALTER TABLE IF EXISTS student09.orders
    ADD COLUMN IF NOT EXISTS order_id      BIGSERIAL,
    ADD COLUMN IF NOT EXISTS customer_id   BIGINT,
    ADD COLUMN IF NOT EXISTS book_id       BIGINT,
    ADD COLUMN IF NOT EXISTS order_date    DATE;

COMMENT ON TABLE  student09.orders                   IS 'Таблица с заказами';
COMMENT ON COLUMN student09.orders.order_id          IS 'Идентификатор заказа';
COMMENT ON COLUMN student09.orders.customer_id       IS 'Идентификатор пользователя';
COMMENT ON COLUMN student09.orders.book_id           IS 'Идентификатор книги';
COMMENT ON COLUMN student09.orders.order_date        IS 'Дата заказа';

DO '
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM information_schema.table_constraints
        WHERE lower(table_name) = ''orders''
          AND lower(table_schema) = ''student09''
          AND lower(constraint_type) = ''primary key''
    )
    THEN
        ALTER TABLE student09.orders ADD primary key (order_id);
    END IF;
END ';

DO '
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM information_schema.table_constraints
        WHERE lower(table_name) = ''orders''
          AND lower(table_schema) = ''student09''
          AND lower(constraint_type) = ''foreign key''
    )
    THEN
        ALTER TABLE student09.orders ADD foreign key (customer_id) REFERENCES student09.customers(customer_id);
        ALTER TABLE student09.orders ADD foreign key (book_id) REFERENCES student09.books(book_id);
    END IF;
END ';