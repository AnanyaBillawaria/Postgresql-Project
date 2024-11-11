-- SELECT 
--     users.first_name,
--     users.last_name,
--     products.product_name,
--     products.description,
--     categories.cat_name AS category,
--     orders.quantity
-- FROM orders
-- JOIN users ON orders.user_id = users.id
-- JOIN products ON orders.product_id = products.id
-- JOIN categories ON products.cat_id = categories.id;
SELECT users.first_name, users.last_name, products.id AS product_id, categories.cat_name
FROM orders
JOIN users ON users.id = orders.user_id
JOIN products ON products.id = orders.product_id
JOIN categories ON categories.id = products.cat_id
WHERE categories.cat_name = 'Electronics';
ALTER TABLE users
UPDATE users
SET age = 30
WHERE first_name = 'John' 
UPDATE users
SET age = 29
WHERE first_name = 'Jane'
UPDATE users
SET age = 25
WHERE first_name = 'Michael'  ;
SELECT * FROM users;


