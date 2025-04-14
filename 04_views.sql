-- Create View
CREATE VIEW Low_Stock_Alert AS
SELECT product_id, product_name, quantity_in_stock
FROM Products
WHERE quantity_in_stock < 10;