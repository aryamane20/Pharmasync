
-- Calculate Total Revenue for a Date Range. This function calculates the total revenue generated from sales within a specific date range.

DELIMITER $$

CREATE FUNCTION TotalRevenue(p_start_date DATE, p_end_date DATE)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10, 2);

    SELECT SUM(total_amount) INTO total
    FROM sales
    WHERE sale_date BETWEEN p_start_date AND p_end_date;

    RETURN IFNULL(total, 0.00);
END$$

DELIMITER ;


-- Test it
SELECT TotalRevenue('2024-01-15', '2024-04-01');

-- Get Medication Stock Level. This function retrieves the current stock level for a specific medication.

DELIMITER $$

CREATE FUNCTION GetStockLevel(p_medication_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE stock_level INT;

    SELECT stock INTO stock_level
    FROM medications
    WHERE medication_id = p_medication_id;

    RETURN IFNULL(stock_level, 0);
END$$

DELIMITER ;

-- Test it
SELECT GetStockLevel(1);


-- Calculate Total Quantity of Medication Sold. This function calculates the total quantity of a specific medication sold.

DELIMITER $$

CREATE FUNCTION TotalMedicationSold(p_medication_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_sold INT;

    SELECT SUM(sd.quantity) INTO total_sold
    FROM sales_details sd
    WHERE sd.medication_id = p_medication_id;

    RETURN IFNULL(total_sold, 0);
END$$

DELIMITER ;


-- Test it

SELECT TotalMedicationSold(1);

