-- Создание таблицы платежей
CREATE TABLE IF NOT EXISTS student09.payments();

ALTER TABLE IF EXISTS student09.payments
    ADD COLUMN IF NOT EXISTS payment_id    BIGSERIAL,
    ADD COLUMN IF NOT EXISTS order_id      BIGINT,
    ADD COLUMN IF NOT EXISTS payment_date  DATE,
    ADD COLUMN IF NOT EXISTS amount        DECIMAL(10, 2);

COMMENT ON TABLE  student09.payments                 IS 'Таблица с платежами';
COMMENT ON COLUMN student09.payments.payment_id      IS 'Идентификатор платежа';
COMMENT ON COLUMN student09.payments.order_id        IS 'Идентификатор заказа';
COMMENT ON COLUMN student09.payments.payment_date    IS 'Дата платежа';
COMMENT ON COLUMN student09.payments.amount          IS 'Сумма платежа';

DO '
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM information_schema.table_constraints
        WHERE lower(table_name) = ''payments''
          AND lower(table_schema) = ''student09''
          AND lower(constraint_type) = ''primary key''
    )
    THEN
        ALTER TABLE student09.payments ADD primary key (payment_id);
    END IF;
END ';

DO '
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM information_schema.table_constraints
        WHERE lower(table_name) = ''payments''
          AND lower(table_schema) = ''student09''
          AND lower(constraint_type) = ''foreign key''
    )
    THEN
        ALTER TABLE student09.payments ADD foreign key (order_id) REFERENCES student09.orders(order_id);
    END IF;
END ';