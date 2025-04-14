-- Retrieve Customer Purchase History. Get the list of customers along with the medications they purchased, quantity, and total spent.

SELECT 
    c.customer_id,
    CONCAT(c.cust_Fname, ' ', c.cust_Lname) AS customer_name,
    m.name AS medication_name,
    sd.quantity,
    (sd.quantity * sd.price) AS total_spent
FROM sales s
JOIN customer c ON s.customer_id = c.customer_id
JOIN sales_details sd ON s.sale_id = sd.sale_id
JOIN medications m ON sd.medication_id = m.medication_id
ORDER BY c.customer_id, s.sale_date;



-- List Doctors and Their Prescribed Medications. Retrieve a list of doctors and the medications they have prescribed, including the total quantity prescribed.

SELECT 
    d.doctor_id,
    CONCAT(d.Dr_Fname, ' ', d.Dr_Lname) AS doctor_name,
    m.name AS medication_name,
    SUM(pd.quantity) AS total_quantity_prescribed
FROM prescriptions p
JOIN doctors d ON p.doctor_id = d.doctor_id
JOIN prescription_details pd ON p.prescription_id = pd.prescription_id
JOIN medications m ON pd.medication_id = m.medication_id
GROUP BY d.doctor_id, m.name
ORDER BY doctor_name, medication_name;



-- Top-Selling Medications
SELECT 
    m.medication_id,
    m.name AS medication_name,
    SUM(sd.quantity) AS total_quantity_sold
FROM sales_details sd
JOIN medications m ON sd.medication_id = m.medication_id
GROUP BY m.medication_id, m.name
ORDER BY total_quantity_sold DESC
LIMIT 5;





-- Find the Most Expensive Medication Sold
-- This query retrieves the details of the most expensive medication sold, based on the price from the medications table, while considering sales data.

SELECT 
    m.name AS medication_name,
    m.price,
    s.sale_date,
    c.cust_Fname,
    c.cust_Lname
FROM medications m
JOIN sales_details sd ON m.medication_id = sd.medication_id
JOIN sales s ON sd.sale_id = s.sale_id
JOIN customer c ON s.customer_id = c.customer_id
WHERE m.price = (
    SELECT MAX(price)
    FROM medications
);


-- Patients and Their Prescriptions
-- Retrieve patients and their prescribed medications, along with the prescribing doctor and total prescription cost.

SELECT 
    p.patient_id,
    p.name AS patient_name,
    CONCAT(d.Dr_Fname, ' ', d.Dr_Lname) AS doctor_name,
    m.name AS medication_name,
    pd.quantity,
    (pd.quantity * m.price) AS prescription_cost
FROM prescriptions pr
JOIN patients p ON pr.patient_id = p.patient_id
JOIN doctors d ON pr.doctor_id = d.doctor_id
JOIN prescription_details pd ON pr.prescription_id = pd.prescription_id
JOIN medications m ON pd.medication_id = m.medication_id
ORDER BY p.patient_id, pr.prescription_date;

-- Employee Workload by Shift
-- Retrieve a list of employees and their shifts, including the count of sales they have processed.

SELECT 
    e.employee_id,
    CONCAT(e.emp_Fname, ' ', e.emp_Lname) AS employee_name,
    s.shift_time,
    COUNT(sa.sale_id) AS total_sales_processed
FROM employees e
JOIN shift s ON e.shift_id = s.shift_id
LEFT JOIN sales sa ON sa.processed_by = e.employee_id
GROUP BY e.employee_id, s.shift_time
ORDER BY total_sales_processed DESC;




-- 0
-- 
-- Find Medications Below Restock Level. Retrieve medications where the stock is below a specified threshold (e.g., 10).

SELECT 
    m.medication_id,
    m.name AS medication_name,
    m.stock,
    s.name AS supplier_name
FROM medications m
JOIN suppliers s ON m.supplier_id = s.supplier_id
WHERE m.stock < 10;


-- Find Customers Who Have Purchased Medications From a Specific Supplier. 
-- This query retrieves customers who have purchased medications from a specific supplier (e.g., Supplier Name).


SELECT 
    c.customer_id,
    CONCAT(c.cust_Fname, ' ', c.cust_Lname) AS customer_name
FROM customer c
WHERE c.customer_id IN (
    SELECT DISTINCT s.customer_id
    FROM sales s
    JOIN sales_details sd ON s.sale_id = sd.sale_id
    JOIN medications m ON sd.medication_id = m.medication_id
    JOIN suppliers sup ON m.supplier_id = sup.supplier_id
    WHERE sup.name = 'Supplier Name'
);

