-- Menambahkan data ke tabel Customers
INSERT INTO OnlineRetaildb.customers (customer_name, email, phone_number) VALUES
    ('Alice Johnson', 'alice.johnson@example.com', '081341234567'),
    ('Bob Smith', 'bob.smith@example.com', '081349876543'),
    ('Charlie Brown', 'charlie.brown@example.com', '081342345678'),
    ('Diana Martinez', 'diana.martinez@example.com', '081348765432'),
    ('Edward Wilson', 'edward.wilson@example.com', '081343456789'),
    ('Fiona Davis', 'fiona.davis@example.com', '081342345678'),
    ('George Turner', 'george.turner@example.com', '081347890123'),
    ('Helen Anderson', 'helen.anderson@example.com', '081344567890'),
    ('Ivan Rodriguez', 'ivan.rodriguez@example.com', '081348901234'),
    ('Julia Lee', 'julia.lee@example.com', '081345678901');


-- Menambahkan data ke tabel Products
INSERT INTO OnlineRetaildb.products (product_name, price, stock_quantity, category, product_description) VALUES
    ('Smartphone X', 2500000, 100, 'Electronics', NULL),
    ('Running Shoes', 500000, 50, 'Footwear', NULL),
    ('Coffee Maker', 750000, 30, 'Appliances', NULL),
    ('Graphic T-Shirt', 150000, 80, 'Clothing', NULL),
    ('Bluetooth Earbuds', 300000, 60, 'Electronics', NULL),
    ('Backpack', 200000, 40, 'Accessories', '20L backpack'),
    ('Home Security Camera', 1200000, 20, 'Electronics', NULL),
    ('Office Chair', 800000, 10, 'Furniture', NULL),
    ('Gaming Mouse', 400000, 70, 'Electronics', NULL),
    ('Yoga Mat', 100000, 90, 'Fitness', NULL),
    ('HD LED TV', 3500000, 15, 'Electronics', NULL),
    ('Leather Wallet', 75000, 50, 'Accessories', NULL),
    ('Wireless Charger', 200000, 40, 'Electronics', NULL),
    ('Cookware Set', 1500000, 25, 'Kitchen', 'the most cheap set that you can use'),
    ('Running Jacket', 300000, 30, 'Clothing', 'best jacket to wear, tech wear jacket');


-- Menambahkan data ke Orders table
INSERT INTO OnlineRetaildb.orders (id, customer_id, order_date, total_amount) VALUES
    (101, 1, '2023-09-15', NULL),  -- Order 101, customer_id = 1, date = '2023-01-15', total_amount will be updated later
    (102, 2, '2023-10-01', NULL), 
    (103, 3, '2023-10-10', NULL), 
    (104, 4, '2023-09-05', NULL), 
    (105, 5, '2023-10-20', NULL), 
    (106, 6, '2023-11-02', 100000), 
    (107, 7, '2023-11-15', 4500000), 
    (108, 8, '2023-11-01', 3000000), 
    (109, 9, '2023-11-10', 150000), 
    (110, 10, '2023-11-01', 7000000);

-- Menambahkan data ke Orders_items table
INSERT INTO OnlineRetaildb.order_Items (order_id, product_id, quantity) VALUES
    (101, 1, 2), 
    (101, 3, 1), 
    (102, 2, 3),
    (102, 11, 1), 
    (102, 15, 3),  
    (102, 12, 2), 
    (103, 4, 2), 
    (103, 6, 2),
    (104, 5, 2), 
    (105, 6, 2),  
    (106, 10, 1),
    (107, 14, 3), 
    (108, 15, 10), 
    (109, 12, 2),
    (110, 11, 2); 



