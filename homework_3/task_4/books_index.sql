-- Создание индекса по полю author_id в таблице books
CREATE INDEX IF NOT EXISTS idx_books_author ON student09.books (author_id);

-- Комментарий к индексу
COMMENT ON INDEX idx_books_author IS 'Индекс по автору книги';
