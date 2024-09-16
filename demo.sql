-- Create a table for 5 products with product names and prices.
CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10, 2)
);

INSERT INTO products (id, name, price) VALUES (1, 'Apple', 1.00);
INSERT INTO products (id, name, price) VALUES (2, 'Banana', 0.50);
INSERT INTO products (id, name, price) VALUES (3, 'Cherry', 2.00);
INSERT INTO products (id, name, price) VALUES (4, 'Date', 1.50);
INSERT INTO products (id, name, price) VALUES (5, 'Elderberry', 3.00);