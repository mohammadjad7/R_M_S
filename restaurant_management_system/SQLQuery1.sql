CREATE TABLE users
(
	id INT PRIMARY KEY IDENTITY(1,1),
	username VARCHAR(MAX) NULL,
	password VARCHAR(MAX) NULL,
	profile_image VARCHAR(MAX) NULL,
	role VARCHAR(MAX) NULL,
	status VARCHAR(MAX) NULL,
	date_reg DATE NULL,
)
SELECT * FROM users

INSERT INTO users (username,password,profile_image,role,status,date_reg) VALUES ('admin' , 'admin123' , '' , 'Admin' , 'Active' , '2024-12-13')

CREATE TABLE products
(




	id INT PRIMARY KEY IDENTITY(1,1),
	prod_id  VARCHAR(MAX) NULL,
	prod_name  VARCHAR(MAX) NULL,
	prod_type  VARCHAR(MAX) NULL,
	prod_stock  VARCHAR(MAX) NULL,
	prod_price  VARCHAR(MAX) NULL,
	prod_status  VARCHAR(MAX) NULL,
	prod_image  VARCHAR(MAX) NULL,
	date_insert DATE NULL,
	date_update DATE NULL,
	date_delete DATE NULL,
)
SELECT * FROM products


INSERT INTO products
(
    prod_id, 
    prod_name, 
    prod_type, 
    prod_stock, 
    prod_price, 
    prod_status, 
    prod_image, 
    date_insert, 
    date_update, 
    date_delete
)
VALUES
(
    'P001', 
    'Product 1', 
    'Electronics', 
    '100', 
    '500', 
    'Active', 
    NULL,  -- Here, we set NULL instead of an image
    '2024-12-13', 
    '2024-12-13', 
    NULL
);
DELETE FROM products
WHERE prod_id = 'P001';

DROP TABLE products;

CREATE TABLE orders
(
    id INT PRIMARY KEY IDENTITY(1,1),
    customer_id INT NULL,
    prod_id  VARCHAR(MAX) NULL,
    prod_name VARCHAR(MAX) NULL,
    prod_type VARCHAR(MAX) NULL,
    prod_price FLOAT,
    order_date DATE NULL,
    delete_order DATE NULL,
)
ALTER TABLE orders ADD qty INT NULL

SELECT * FROM orders



CREATE TABLE customers
(
    id INT PRIMARY KEY IDENTITY(1,1),
    customer_id INT NULL,
    total_price FLOAT NULL,
    date DATE NULL,
)

SELECT * FROM customers

ALTER TABLE customers ADD amount VARCHAR(MAX) NULL,

 ALTER TABLE customers 
  ADD change  FLOAT NULL,

 ALTER TABLE customers 
 ADD users  VARCHAR(MAX) NULL