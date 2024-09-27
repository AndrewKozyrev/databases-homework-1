INSERT INTO student09.customers (name, email, password)
VALUES ('John Doe', 'john.doe@example.com', 'password123'),
       ('Jane Smith', 'jane.smith@example.com', 'qwerty2024'),
       ('Michael Johnson', 'michael.johnson@example.com', 'mikepass456'),
       ('Emily Davis', 'emily.davis@example.com', 'emily789'),
       ('David Wilson', 'david.wilson@example.com', 'wilson321');

INSERT INTO student09.books (book_id, title, isbn, price, download_count)
VALUES (1, 'To Kill a Mockingbird', '9780061120084', 14.99, 1250),
       (2, '1984', '9780452284234', 9.99, 2300),
       (3, 'Pride and Prejudice', '9780199535569', 11.49, 1890),
       (4, 'The Great Gatsby', '9780743273565', 10.99, 2100),
       (5, 'Moby Dick', '9780142437247', 13.99, 780),
       (6, 'War and Peace', '9781853260629', 15.99, 950),
       (7, 'Ulysses', '9780679722329', 18.99, 670),
       (8, 'The Catcher in the Rye', '9780316769488', 10.99, 3450),
       (9, 'Crime and Punishment', '9780140449136', 12.99, 1430),
       (10, 'Brave New World', '9780060850524', 9.49, 2650),
       (11, 'The Odyssey', '9780140268867', 12.49, 1560),
       (12, 'The Iliad', '9780140275360', 11.49, 1100),
       (13, 'Jane Eyre', '9780141441146', 10.99, 990),
       (14, 'Wuthering Heights', '9780141439556', 9.99, 780),
       (15, 'Anna Karenina', '9780143035008', 14.49, 1290),
       (16, 'The Hobbit', '9780345339683', 16.99, 3450),
       (17, 'The Lord of the Rings', '9780345339706', 20.99, 2800),
       (18, 'Harry Potter and the Sorcerer`s Stone', '9780590353403', 8.99, 5400),
       (19, 'Harry Potter and the Chamber of Secrets', '9780439064866', 8.99, 5000),
       (20, 'Harry Potter and the Prisoner of Azkaban', '9780439136358', 9.99, 4900),
       (21, 'The Hunger Games', '9780439023483', 8.49, 4600),
       (22, 'Catching Fire', '9780439023490', 8.99, 4200),
       (23, 'Mockingjay', '9780439023506', 8.99, 4100),
       (24, 'A Game of Thrones', '9780553897845', 9.49, 3700),
       (25, 'A Clash of Kings', '9780553897852', 9.99, 3500),
       (26, 'A Storm of Swords', '9780553897869', 10.49, 3300),
       (27, 'A Feast for Crows', '9780553801479', 10.99, 2900),
       (28, 'A Dance with Dragons', '9780553801486', 12.99, 2800),
       (29, 'The Da Vinci Code', '9780385504201', 10.99, 4100),
       (30, 'Angels & Demons', '9780743275064', 10.49, 3900);



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
