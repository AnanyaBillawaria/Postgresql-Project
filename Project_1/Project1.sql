CREATE TABLE users(
id SERIAL PRIMARY KEY,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20),
email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE categories(
id SERIAL PRIMARY KEY,
cat_name VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE products(
id SERIAL PRIMARY KEY,
product_name VARCHAR(20) ,
price INT,
description TEXT,
cat_id INTEGER REFERENCES categories(id) 


);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES Users(id) ON DELETE CASCADE,
    product_id INTEGER REFERENCES Products(id) ON DELETE CASCADE,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    quantity INTEGER NOT NULL
);


