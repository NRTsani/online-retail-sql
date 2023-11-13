-- Create Customers table
CREATE TABLE OnlineRetaildb.customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    UNIQUE (email)
);

-- Create Products table
CREATE TABLE OnlineRetaildb.products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price BIGINT NOT NULL,
    stock_quantity INT NOT NULL,
    category VARCHAR(50) NOT NULL,
    product_description VARCHAR(255)
);

-- Create Orders table
CREATE TABLE OnlineRetaildb.orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES Customers(customer_id),
    order_date DATE NOT NULL,
    total_amount BIGINT,
    order_status VARCHAR(50)DEFAULT 'progress'
);

-- Create Order_Items table
CREATE TABLE OnlineRetaildb.order_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL REFERENCES Orders(order_id),
    product_id INT NOT NULL REFERENCES Products(product_id),
    quantity INT NOT NULL
);

