-- Insert Sample Data
INSERT INTO Categories (category_name) VALUES 
('Electronics'), 
('Furniture'), 
('Groceries');

INSERT INTO Suppliers (supplier_name, contact_info) VALUES 
('Tech Supplies Inc.', 'tech@example.com'),
('FurniCo', 'furni@example.com'),
('Daily Needs Ltd.', 'daily@example.com');

INSERT INTO Products (product_name, category_id, supplier_id, price, quantity_in_stock) VALUES 
('Laptop', 1, 1, 60000.00, 50),
('Desk', 2, 2, 5000.00, 20),
('Rice Bag', 3, 3, 1200.00, 100);

INSERT INTO Purchases (product_id, quantity, purchase_date) VALUES 
(1, 10, '2025-04-01'),
(2, 5, '2025-04-03'),
(3, 25, '2025-04-05');