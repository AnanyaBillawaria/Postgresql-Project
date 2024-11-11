INSERT INTO Users (first_name, last_name, email)
VALUES
    ('John', 'Doe', 'john.doe@example.com'),
    ('Jane', 'Smith', 'jane.smith@example.com'),
    ('Michael', 'Johnson', 'michael.johnson@example.com');

INSERT INTO Categories (cat_name)
VALUES
    ('Electronics'),
    ('Clothing'),
    ('Home Appliances');
	INSERT INTO Products (product_name, description, price, category_id)
VALUES
    ('Smartphone', 'A high-end smartphone with a 6.5-inch display', 700, 1),
    ('Laptop', 'A lightweight laptop with 16GB RAM and 512GB SSD', 1200, 1),
    ('T-Shirt', 'A cotton T-shirt in various colors', 20, 2),
    ('Washing Machine', 'A fully automatic washing machine with 7kg capacity', 350, 3),
    ('Headphones', 'Noise-cancelling headphones with 20-hour battery life', 150, 1);

INSERT INTO Orders (user_id, product_id, quantity)
VALUES
    (1, 1, 1), -- John Doe orders 1 Smartphone
    (2, 2, 1), -- Jane Smith orders 1 Laptop
    (3, 3, 2), -- Michael Johnson orders 2 T-Shirts
    (1, 4, 1), -- John Doe orders 1 Washing Machine
    (2, 5, 1); -- Jane Smith orders 1 Headphones