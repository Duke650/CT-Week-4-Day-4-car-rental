
SELECT * FROM salespersons;
SELECT * FROM customers;
SELECT * FROM cars;
SELECT * FROM invoices;
SELECT * FROM mechanics;
SELECT * FROM services;

-- Salespersons
INSERT INTO salespersons (fullName, email)
VALUES ('Kim B.', 'kim@email.com');

INSERT INTO salespersons (fullName, email)
VALUES ('Monica F.', 'monica@email.com');

-- Customers
INSERT INTO customers (fullName, email)
VALUES ('Kyle G.', 'kyle@email.com');

INSERT INTO customers (fullName, email)
VALUES ('Bobby D.', 'bobby@email.com');

-- Cars
INSERT INTO cars (make, model, serialNum, salesPersonID, customerID)
VALUES ('Honda', 'Civic', 9871231, 2, 1);

INSERT INTO cars (make, model, serialNum, salesPersonID, customerID)
VALUES ('Dodge', 'Ram', 6217836, 1, 2);

INSERT INTO cars (make, model, serialNum, salesPersonID, customerID)
VALUES ('Subaru', 'WRX', 343421, 2, 2);

-- Invoices
INSERT INTO invoices (salesPersonID, customerID, carID)
VALUES (1, 1, 2);

INSERT INTO invoices (salesPersonID, customerID, carID)
VALUES (2, 1, 1);

INSERT INTO invoices (salesPersonID, customerID, carID)
VALUES (2, 1, 3);

-- Mechanics
INSERT INTO mechanics (fullName)
VALUES ('Jack H');

INSERT INTO mechanics (fullName)
VALUES ('Ryan G');

-- Services
INSERT INTO services (carID, customerID)
VALUES (1, 2);

INSERT INTO services (carID, customerID)
VALUES (2, 2);

-- MechanicServices
INSERT INTO mechanicServices (mechanicID, serviceID)
VALUES (1, 2);

INSERT INTO mechanicServices (mechanicID, serviceID)
VALUES (2, 1);







