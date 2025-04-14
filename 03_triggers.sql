-- Create Trigger
DELIMITER //
CREATE TRIGGER trg_after_purchase
AFTER INSERT ON Purchases
FOR EACH ROW
BEGIN
    UPDATE Products
    SET quantity_in_stock = quantity_in_stock + NEW.quantity
    WHERE product_id = NEW.product_id;

    INSERT INTO Stock_Transactions (product_id, transaction_type, quantity, transaction_date)
    VALUES (NEW.product_id, 'IN', NEW.quantity, NEW.purchase_date);
END;
//
DELIMITER ;