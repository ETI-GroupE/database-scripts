-- Drop Tables
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS product;

-- Create Tables
CREATE TABLE category (
    category_id int auto_increment,
    category_name text,
    PRIMARY KEY(category_id)
);

CREATE TABLE product (
    product_id int auto_increment,
    owner_id int, -- FK for user service
    product_name text,
    product_description text,
    product_price float,
    product_category_id int REFERENCES category(category_id),
    product_ship_location text,
    product_original_stock int,
    product_status enum ('ACTIVE', 'INACTIVE') DEFAULT 'ACTIVE',
    product_stock int,
    PRIMARY KEY(product_id)
);

INSERT INTO category(category_name) VALUES
('Fashion'),
('Tech'),
('Home'),
('Edibles');

INSERT INTO product(owner_id, product_name, product_description, product_price, product_category_id, product_ship_location, product_original_stock, product_stock) VALUES
(1, 'Long Sleeve Casual Plus Size Cardigan Thin Sports Zipper Men''s Hoodie Leisure Hooded Jacket', 'Basicaly a hoodie', 0.5, 1, 'Singapore', 10, 10),
(1, 'Airpods Pro', 'True Wireless Stero by Apple', 0.5, 2, 'Singapore', 10, 10),
(1, 'Nothing Ear 1', 'True Wireless Stero by Nothing', 0.5, 2, 'Singapore', 10, 10),
(2, 'Ikea ALEX', 'Drawer unit, 36x70 cm', 0.5, 3, 'Singapore', 10, 10),
(2, '2L Water Bottle', 'Just water', 0.5, 4, 'Singapore', 10, 10);