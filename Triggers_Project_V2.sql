-- 1
-- Trigger to Log Inventory Updates. This trigger automatically adds an entry to the inventory_log table whenever the stock of a medication is updated in the medications table.
-- Keeps a record of all stock changes in the inventory_log table.
DELIMITER $$

CREATE TRIGGER after_stock_update
AFTER UPDATE ON medications
FOR EACH ROW
BEGIN
    IF NEW.stock != OLD.stock THEN
        INSERT INTO inventory_log (medication_id, change_amount, log_date)
        VALUES (NEW.medication_id, NEW.stock - OLD.stock, CURDATE());
    END IF;
END$$

DELIMITER ;


UPDATE medications
SET stock = stock + 10
WHERE medication_id = 1; -- Replace '1' with the actual ID of a medication


SELECT * FROM inventory_log;



-- 2
-- Trigger to Prevent Negative Stock. This trigger ensures that no medication's stock falls below zero after an update. 
-- Prevents stock inconsistencies by disallowing negative stock values.

DELIMITER $$

CREATE TRIGGER before_stock_update
BEFORE UPDATE ON medications
FOR EACH ROW
BEGIN
    IF NEW.stock < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Stock cannot be negative.';
    END IF;
END$$

DELIMITER ;

UPDATE medications
SET stock = -5
WHERE medication_id = 1; -- Replace '1' with the actual ID of a medication

SELECT * FROM medications WHERE medication_id = 1;

-- 3
-- How It Works:
-- Trigger Type: AFTER INSERT on the sales_details table — meaning the trigger fires after a new record is inserted into sales_details.
-- 
-- Logic:
-- 
-- It calculates the total amount for a given sale by summing the price * quantity for all records in the sales_details table that share the same sale_id.
-- It then updates the total_amount in the sales table for the corresponding sale_id.

DROP TRIGGER after_sales_details_insert;
DELIMITER $$

CREATE TRIGGER after_sales_details_insert
AFTER INSERT ON sales_details
FOR EACH ROW
BEGIN
    DECLARE total_amount DECIMAL(10, 2);

    -- Calculate the total for the sale
    SELECT SUM(price * quantity) INTO total_amount
    FROM sales_details
    WHERE sale_id = NEW.sale_id;

    -- Update the total amount in the sales table
    UPDATE sales
    SET total_amount = total_amount
    WHERE sale_id = NEW.sale_id;
END$$

DELIMITER ;

-- Example to Test the Trigger
-- Insert a new sale:
-- 
-- Before inserting into sales_details, let's add a sale to the sales table:
INSERT INTO sales(customer_id, sale_date, total_amount, payment_id)
VALUES (1, CURDATE(), 0.00, 1);

-- Insert sale details:

-- Now, insert some details into sales_details. This will trigger the calculation of the total_amount.

INSERT INTO sales_details (sale_id, medication_id, quantity, price)
VALUES (1, 101, 2, 20.00);  -- 2 units of medication at 20 each

SELECT * FROM sales WHERE sale_id = 1;
