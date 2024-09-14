INSERT INTO student09.customers (name, email, password)
VALUES ('John Doe', 'john.doe@example.com', 'password123'),
       ('Jane Smith', 'jane.smith@example.com', 'qwerty2024'),
       ('Michael Johnson', 'michael.johnson@example.com', 'mikepass456'),
       ('Emily Davis', 'emily.davis@example.com', 'emily789'),
       ('David Wilson', 'david.wilson@example.com', 'wilson321');

INSERT INTO student09.books (title, isbn, price)
VALUES ('The Catcher in the Rye', '9780316769488', 9.99),
       ('To Kill a Mockingbird', '9780061120084', 12.99),
       ('1984', '9780451524935', 8.99),
       ('Pride and Prejudice', '9780141439518', 7.99),
       ('The Great Gatsby', '9780743273565', 10.99);

INSERT INTO student09.orders (customer_id, book_id, order_date)
VALUES (1, 1, '2024-09-10'),
       (2, 2, '2024-09-11'),
       (3, 3, '2024-09-12'),
       (4, 4, '2024-09-13'),
       (5, 5, '2024-09-14');

INSERT INTO student09.payments (order_id, payment_date, amount)
VALUES (1, '2024-09-10', 9.99),
       (2, '2024-09-11', 12.99),
       (3, '2024-09-12', 8.99),
       (4, '2024-09-13', 7.99),
       (5, '2024-09-14', 10.99);
