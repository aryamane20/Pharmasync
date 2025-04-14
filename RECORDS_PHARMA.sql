USE PHARMASYNC;
INSERT INTO customer (cust_Fname, cust_Lname, address, phone) VALUES
('John', 'Doe', '123 Elm St, Springfield', '555-123-4567'),
('Jane', 'Smith', '456 Oak St, Riverside', '555-234-5678'),
('Alice', 'Johnson', '789 Pine St, Newport', '555-345-6789'),
('Michael', 'Brown', '321 Cedar St, Westfield', '555-456-7890'),
('Emily', 'Davis', '654 Maple St, Hilltop', '555-567-8901'),
('Chris', 'Wilson', '987 Birch St, Bayside', '555-678-9012'),
('Sophia', 'Lee', '159 Cherry St, Greenfield', '555-789-0123'),
('Daniel', 'Garcia', '753 Walnut St, Brookside', '555-890-1234'),
('Olivia', 'Martinez', '852 Poplar St, Lakeview', '555-901-2345'),
('Ethan', 'White', '963 Willow St, Meadowbrook', '555-012-3456'),
('Ava', 'Harris', '741 Cypress St, Bridgeport', '555-123-6789'),
('Mason', 'Clark', '369 Redwood St, Kingsville', '555-234-7890'),
('Isabella', 'Lewis', '258 Spruce St, Oakwood', '555-345-8901'),
('Liam', 'Walker', '147 Aspen St, Fairview', '555-456-9012'),
('Mia', 'Hall', '369 Cedar St, Woodridge', '555-567-0123'),
('Noah', 'Young', '963 Pine St, Mapleton', '555-678-1234'),
('Lucas', 'Allen', '852 Birch St, Elmwood', '555-789-2345'),
('Amelia', 'King', '753 Cherry St, Riverton', '555-890-3456'),
('Aiden', 'Scott', '159 Walnut St, Stonebrook', '555-901-4567'),
('Emma', 'Hill', '321 Maple St, Valleyview', '555-012-5678'),
('Jackson', 'Adams', '456 Oak St, Bayshore', '555-123-7890'),
('Grace', 'Carter', '789 Poplar St, Crestview', '555-234-8901'),
('Benjamin', 'Baker', '123 Willow St, Northfield', '555-345-9012'),
('Charlotte', 'Turner', '654 Elm St, Pleasantville', '555-456-0123'),
('James', 'Parker', '987 Spruce St, Greenhill', '555-567-1234'),
('Harper', 'Morris', '369 Redwood St, Clearview', '555-678-2345'),
('Elijah', 'Sanders', '852 Cypress St, Woodhaven', '555-789-3456'),
('Sofia', 'Reed', '753 Birch St, Grandview', '555-890-4567'),
('Henry', 'Phillips', '159 Pine St, Edgewood', '555-901-5678'),
('Avery', 'Stewart', '258 Cherry St, Hillcrest', '555-012-6789'),
('Evelyn', 'Collins', '741 Oak St, Lakeside', '555-123-8901'),
('Jack', 'Ramirez', '963 Maple St, Southgate', '555-234-9012'),
('Abigail', 'Mitchell', '456 Cedar St, Parkview', '555-345-0123'),
('Oliver', 'Carter', '321 Aspen St, Brookfield', '555-456-1234'),
('Ella', 'Campbell', '789 Spruce St, Silverlake', '555-567-2345'),
('William', 'Rivera', '852 Willow St, Westwood', '555-678-3456'),
('Scarlett', 'Morgan', '753 Redwood St, Eastwood', '555-789-4567'),
('Henry', 'Cooper', '258 Birch St, Highpoint', '555-890-5678'),
('Zoe', 'Peterson', '369 Poplar St, Midtown', '555-901-6789'),
('Sebastian', 'Reed', '741 Walnut St, Sunnyvale', '555-012-7890'),
('Victoria', 'Kelly', '963 Cherry St, Riverbend', '555-123-9012'),
('Alexander', 'James', '147 Cypress St, Meadowview', '555-234-0123'),
('Madison', 'Brooks', '852 Aspen St, Ridgewood', '555-345-1234'),
('Logan', 'Bailey', '159 Willow St, Oakridge', '555-456-2345'),
('Layla', 'Foster', '456 Maple St, Clearbrook', '555-567-3456'),
('David', 'Bennett', '321 Cedar St, Maplewood', '555-678-4567'),
('Aria', 'Gonzales', '789 Pine St, Roseville', '555-789-5678'),
('Matthew', 'Cook', '987 Elm St, Parkland', '555-890-6789'),
('Lily', 'Perry', '753 Spruce St, Lakewood', '555-901-7890');

select * from customer;


INSERT INTO doctors (Dr_Fname, Dr_Lname, specialization, phone) VALUES
('Michael', 'Adams', 'Cardiology', '555-1010'),
('Jessica', 'Baker', 'Dermatology', '555-2020'),
('Daniel', 'Clark', 'Pediatrics', '555-3030'),
('Emily', 'Davis', 'Neurology', '555-4040'),
('Christopher', 'Evans', 'Orthopedics', '555-5050'),
('Sophia', 'Foster', 'Cardiology', '555-6060'),
('James', 'Garcia', 'Dermatology', '555-7070'),
('Olivia', 'Harris', 'Pediatrics', '555-8080'),
('Benjamin', 'Hill', 'Neurology', '555-9090'),
('Mia', 'Jones', 'Orthopedics', '555-1111'),
('Lucas', 'King', 'Cardiology', '555-1212'),
('Amelia', 'Lewis', 'Dermatology', '555-1313'),
('Liam', 'Martinez', 'Pediatrics', '555-1414'),
('Ella', 'Nelson', 'Neurology', '555-1515'),
('Noah', 'Parker', 'Orthopedics', '555-1616'),
('Emma', 'Phillips', 'Cardiology', '555-1717'),
('Ethan', 'Rivera', 'Dermatology', '555-1818'),
('Ava', 'Roberts', 'Pediatrics', '555-1919'),
('Mason', 'Scott', 'Neurology', '555-2121'),
('Isabella', 'Stewart', 'Orthopedics', '555-2222'),
('William', 'Taylor', 'Cardiology', '555-2323'),
('Harper', 'Thomas', 'Dermatology', '555-2424'),
('Alexander', 'Walker', 'Pediatrics', '555-2525'),
('Charlotte', 'Wright', 'Neurology', '555-2626'),
('Henry', 'Young', 'Orthopedics', '555-2727'),
('Victoria', 'Anderson', 'Cardiology', '555-2828'),
('Jack', 'Bennett', 'Dermatology', '555-2929'),
('Zoe', 'Brooks', 'Pediatrics', '555-3031'),
('Sebastian', 'Carter', 'Neurology', '555-3132'),
('Layla', 'Cook', 'Orthopedics', '555-3233'),
('David', 'Diaz', 'Cardiology', '555-3334'),
('Grace', 'Edwards', 'Dermatology', '555-3435'),
('Oliver', 'Fisher', 'Pediatrics', '555-3536'),
('Scarlett', 'Gonzalez', 'Neurology', '555-3637'),
('Matthew', 'Hall', 'Orthopedics', '555-3738'),
('Lily', 'Hernandez', 'Cardiology', '555-3839'),
('Logan', 'Jackson', 'Dermatology', '555-3930'),
('Aria', 'Kelly', 'Pediatrics', '555-4041'),
('Jacob', 'Lee', 'Neurology', '555-4142'),
('Evelyn', 'Lopez', 'Orthopedics', '555-4243'),
('Aiden', 'Moore', 'Cardiology', '555-4344'),
('Sofia', 'Murphy', 'Dermatology', '555-4445'),
('Elijah', 'Nguyen', 'Pediatrics', '555-4546'),
('Zara', 'Perez', 'Neurology', '555-4647'),
('Daniel', 'Robinson', 'Orthopedics', '555-4748'),
('Emily', 'Sanchez', 'Cardiology', '555-4849'),
('Jackson', 'Sanders', 'Dermatology', '555-4940'),
('Mila', 'Thompson', 'Pediatrics', '555-5051'),
('Owen', 'Torres', 'Neurology', '555-5152'),
('Aubrey', 'Ward', 'Orthopedics', '555-5253');

select * from doctors;
show tables;

INSERT INTO shift (shift_time) VALUES
('Morning Shift'),
('Afternoon Shift'),
('Evening Shift'),
('Night Shift'),
('Weekend Shift');

select * from shift;


INSERT INTO employees (emp_Fname, emp_Lname, position, shift_id) VALUES
('John', 'Doe', 'Pharmacist', 1),
('Jane', 'Smith', 'Cashier', 2),
('Emily', 'Davis', 'Technician', 3),
('Michael', 'Brown', 'Manager', 4),
('Chris', 'Wilson', 'Assistant', 5),
('Olivia', 'Martinez', 'Pharmacist', 1),
('Sophia', 'Lee', 'Cashier', 2),
('Daniel', 'Garcia', 'Technician', 3),
('Mia', 'Jones', 'Manager', 4),
('Ethan', 'White', 'Assistant', 5),
('Lucas', 'King', 'Pharmacist', 1),
('Amelia', 'Lewis', 'Cashier', 2),
('Liam', 'Walker', 'Technician', 3),
('Isabella', 'Nelson', 'Manager', 4),
('Mason', 'Clark', 'Assistant', 5),
('Ava', 'Harris', 'Pharmacist', 1),
('Noah', 'Young', 'Cashier', 2),
('Ella', 'Allen', 'Technician', 3),
('James', 'Taylor', 'Manager', 4),
('Zoe', 'Baker', 'Assistant', 5),
('Henry', 'Morris', 'Pharmacist', 1),
('Grace', 'Hill', 'Cashier', 2),
('Benjamin', 'Scott', 'Technician', 3),
('Charlotte', 'Phillips', 'Manager', 4),
('Jack', 'Mitchell', 'Assistant', 5),
('Victoria', 'Rivera', 'Pharmacist', 1),
('Oliver', 'Carter', 'Cashier', 2),
('Emily', 'Stewart', 'Technician', 3),
('Jacob', 'Anderson', 'Manager', 4),
('Aubrey', 'Roberts', 'Assistant', 5),
('Harper', 'Gonzalez', 'Pharmacist', 1),
('William', 'Edwards', 'Cashier', 2),
('Madison', 'Parker', 'Technician', 3),
('Elijah', 'Nguyen', 'Manager', 4),
('Aria', 'Brooks', 'Assistant', 5),
('Logan', 'Kelly', 'Pharmacist', 1),
('Layla', 'Diaz', 'Cashier', 2),
('David', 'Sanchez', 'Technician', 3),
('Scarlett', 'Peterson', 'Manager', 4),
('Matthew', 'Cooper', 'Assistant', 5),
('Lily', 'Hernandez', 'Pharmacist', 1),
('Jackson', 'Moore', 'Cashier', 2),
('Elena', 'Ramirez', 'Technician', 3),
('Aiden', 'Hughes', 'Manager', 4),
('Sofia', 'Murphy', 'Assistant', 5),
('Owen', 'Torres', 'Pharmacist', 1),
('Evelyn', 'Foster', 'Cashier', 2),
('Sebastian', 'Sanders', 'Technician', 3),
('Layla', 'Ward', 'Manager', 4),
('Henry', 'Bennett', 'Assistant', 5);


-- Supplier insert

INSERT INTO suppliers (name, contact, address) VALUES
('MedSupply Inc.', '555-1001', '101 Pharma Ave, MedCity, TX 75001'),
('HealthPro Ltd.', '555-1002', '202 Wellness Rd, Healthville, CA 90210'),
('Global Medics', '555-1003', '303 Cure Blvd, Caretown, NY 10001'),
('PharmaPlus', '555-1004', '404 Remedy Ln, Healburg, FL 33101'),
('Wellness Corp.', '555-1005', '505 Health St, Wellness Park, IL 60601'),
('CareFirst Supply', '555-1006', '606 Vitality Dr, Sanitas, TX 75002'),
('LifeLine Distributors', '555-1007', '707 Life Blvd, Lifespring, WA 98001'),
('Medico Supplies', '555-1008', '808 Doctor Ln, Medico City, CO 80201'),
('PrimeHealth Partners', '555-1009', '909 Care Cir, Primehill, AZ 85001'),
('Trusted Pharma', '555-1010', '1010 Trust St, Safeguard, NV 89501'),
('VitalMed Ltd.', '555-1011', '111 Vital St, Medville, OH 44101'),
('CureAll Supply Co.', '555-1012', '1212 Cure Blvd, Healthhub, TX 75003'),
('BioPharm Inc.', '555-1013', '1313 Bio St, Biotown, NJ 07001'),
('WellCare Solutions', '555-1014', '1414 Wellness Dr, Carewood, MA 02101'),
('SafeMeds LLC', '555-1015', '1515 Safety Ln, Securetown, OR 97201');


-- Medications


INSERT INTO medications (medication_id, name, supplier_id, price, stock) VALUES
(1, 'Paracetamol', 1, 10.50, 500),
(2, 'Ibuprofen', 2, 15.00, 300),
(3, 'Amoxicillin', 3, 25.00, 200),
(4, 'Metformin', 4, 30.00, 150),
(5, 'Omeprazole', 5, 18.00, 400),
(6, 'Cetirizine', 6, 8.00, 600),
(7, 'Atorvastatin', 7, 35.00, 250),
(8, 'Losartan', 8, 22.50, 350),
(9, 'Amlodipine', 9, 27.00, 280),
(10, 'Ciprofloxacin', 10, 20.00, 180),
(11, 'Doxycycline', 11, 15.50, 300),
(12, 'Lisinopril', 12, 12.00, 450),
(13, 'Montelukast', 13, 28.00, 230),
(14, 'Prednisolone', 14, 18.50, 500),
(15, 'Clopidogrel', 15, 25.00, 300);



INSERT INTO patients (patient_id, name, address, phone) VALUES
(1, 'Sophia Green', '15 Hill Street, Riverdale', '555-123-9876'),
(2, 'Liam Carter', '20 Oak Avenue, Lakeside', '555-234-8765'),
(3, 'Noah Wright', '30 Pine Road, Valleyview', '555-345-7654'),
(4, 'Emma Hill', '40 Birch Lane, Woodville', '555-456-6543'),
(5, 'Mia Johnson', '50 Cedar Street, Springfield', '555-567-5432'),
(6, 'Ethan Lewis', '60 Maple Drive, Clearview', '555-678-4321'),
(7, 'Ava Taylor', '70 Aspen Road, Brookfield', '555-789-3210'),
(8, 'Lucas Martin', '80 Spruce Lane, Kingsville', '555-890-2109'),
(9, 'Isabella Walker', '90 Poplar Street, Northfield', '555-901-1098'),
(10, 'Amelia Perez', '100 Cherry Avenue, Grandview', '555-012-0987');


INSERT INTO prescriptions (prescription_id, patient_id, doctor_id, prescription_date) VALUES
(1, 1, 1, '2024-01-15'),
(2, 2, 2, '2024-01-18'),
(3, 3, 3, '2024-01-20'),
(4, 4, 4, '2024-01-25'),
(5, 5, 5, '2024-02-01'),
(6, 6, 6, '2024-02-05'),
(7, 7, 7, '2024-02-10'),
(8, 8, 8, '2024-02-15'),
(9, 9, 9, '2024-02-20'),
(10, 10, 10, '2024-02-25');


INSERT INTO prescription_details (detail_id, prescription_id, medication_id, quantity) VALUES
(1, 1, 1, 2),
(2, 1, 3, 1),
(3, 2, 2, 3),
(4, 2, 4, 1),
(5, 3, 5, 1),
(6, 3, 6, 2),
(7, 4, 7, 1),
(8, 4, 8, 2),
(9, 5, 9, 1),
(10, 5, 10, 1),
(11, 6, 11, 2),
(12, 7, 12, 1),
(13, 8, 13, 2),
(14, 9, 14, 1),
(15, 10, 15, 3);

INSERT INTO payment (payment_id, payment_date, amount, method) VALUES
(1, '2024-03-01', 50.00, 'Cash'),
(2, '2024-03-02', 75.00, 'Credit Card'),
(3, '2024-03-03', 30.00, 'Debit Card'),
(4, '2024-03-04', 45.00, 'Cash'),
(5, '2024-03-05', 60.00, 'Credit Card'),
(6, '2024-03-06', 90.00, 'Debit Card'),
(7, '2024-03-07', 25.00, 'Cash'),
(8, '2024-03-08', 80.00, 'Credit Card'),
(9, '2024-03-09', 35.00, 'Debit Card'),
(10, '2024-03-10', 55.00, 'Cash');

INSERT INTO sales (sale_id, customer_id, sale_date, total_amount, payment_id) VALUES
(1, 1, '2024-03-01', 50.00, 1),
(2, 2, '2024-03-02', 75.00, 2),
(3, 3, '2024-03-03', 30.00, 3),
(4, 4, '2024-03-04', 45.00, 4),
(5, 5, '2024-03-05', 60.00, 5),
(6, 6, '2024-03-06', 90.00, 6),
(7, 7, '2024-03-07', 25.00, 7),
(8, 8, '2024-03-08', 80.00, 8),
(9, 9, '2024-03-09', 35.00, 9),
(10, 10, '2024-03-10', 55.00, 10);

INSERT INTO sales_details (sale_detail_id, sale_id, medication_id, quantity, price) VALUES
(1, 1, 1, 2, 20.00),
(2, 1, 3, 1, 25.00),
(3, 2, 2, 3, 15.00),
(4, 2, 4, 1, 30.00),
(5, 3, 5, 1, 18.00),
(6, 3, 6, 2, 16.00),
(7, 4, 7, 1, 35.00),
(8, 4, 8, 2, 45.00),
(9, 5, 9, 1, 27.00),
(10, 5, 10, 1, 20.00);




INSERT INTO inventory_log (log_id, medication_id, change_amount, log_date) VALUES
(1, 1, -50, '2024-02-01'),
(2, 2, -30, '2024-02-02'),
(3, 3, -25, '2024-02-03'),
(4, 4, -20, '2024-02-04'),
(5, 5, -35, '2024-02-05'),
(6, 6, -40, '2024-02-06'),
(7, 7, -15, '2024-02-07'),
(8, 8, -18, '2024-02-08'),
(9, 9, -20, '2024-02-09'),
(10, 10, -10, '2024-02-10');


INSERT INTO return_product (return_id, sale_id, medication_id, return_date, quantity) VALUES
(1, 1, 1, '2024-03-15', 1),
(2, 2, 2, '2024-03-16', 2),
(3, 3, 3, '2024-03-17', 1),
(4, 4, 4, '2024-03-18', 1),
(5, 5, 5, '2024-03-19', 1),
(6, 6, 6, '2024-03-20', 1),
(7, 7, 7, '2024-03-21', 1),
(8, 8, 8, '2024-03-22', 1),
(9, 9, 9, '2024-03-23', 1),
(10, 10, 10, '2024-03-24', 1);



