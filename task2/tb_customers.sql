-- Создание таблицы пользователей
CREATE TABLE IF NOT EXISTS student09.customers();

ALTER TABLE IF EXISTS student09.customers
    ADD COLUMN IF NOT EXISTS customer_id   BIGSERIAL,
    ADD COLUMN IF NOT EXISTS name          VARCHAR(255),
    ADD COLUMN IF NOT EXISTS email         VARCHAR(255),
    ADD COLUMN IF NOT EXISTS password      VARCHAR(255);

COMMENT ON TABLE  student09.customers                IS 'Таблица с пользователями';
COMMENT ON COLUMN student09.customers.customer_id    IS 'Идентификатор пользователя';
COMMENT ON COLUMN student09.customers.name           IS 'Имя пользователя';
COMMENT ON COLUMN student09.customers.email          IS 'Электронная почта пользователя';
COMMENT ON COLUMN student09.customers.password       IS 'Пароль пользователя';

DO '
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM information_schema.table_constraints
        WHERE lower(table_name) = ''customers''
          AND lower(table_schema) = ''student09''
          AND lower(constraint_type) = ''primary key''
    )
    THEN
        ALTER TABLE student09.customers ADD primary key (customer_id);
    END IF;
END ';