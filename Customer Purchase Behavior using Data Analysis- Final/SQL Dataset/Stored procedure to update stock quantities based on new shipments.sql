#10. Write a stored procedure to Update stock quantities based on new shipments.

DELIMITER //
   CREATE PROCEDURE
update_stock_quantity(
In p_product_id INT,
IN p_quantity int
)
BEGIN
-- Update the stock quantity for the given product
UPDATE stocks
SET quantity = quantity * p_quantity
WHERE product_id = p_product_id;

-- Optionally, you can check if the product exists and handle errors
IF ROW_COUNT() = 0 THEN
SIGNAL SQLSTATE '45000'
SET message_text = 'Product ID not found in stocks table.';
END IF;
END //
