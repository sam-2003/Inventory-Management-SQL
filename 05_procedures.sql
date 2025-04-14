-- Create Stored Procedure
DELIMITER //
CREATE PROCEDURE SellProduct(IN p_id INT, IN qty INT)
BEGIN
    DECLARE stock INT;
    SELECT quantity_in_stock INTO stock FROM Products WHERE product_id = p_id;

    IF stock >= qty THEN
        UPDATE Products
        SET quantity_in_stock = quantity_in_stock - qty
        WHERE product_id = p_id;

        INSERT INTO Stock_Transactions (product_id, transaction_type, quantity, transaction_date)
        VALUES (p_id, 'OUT', qty, CURDATE());
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Not enough stock';
    END IF;
END;
//
DELIMITER ;