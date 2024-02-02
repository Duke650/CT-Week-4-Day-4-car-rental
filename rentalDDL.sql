CREATE TABLE salesPersons (
    salesPersonID SERIAL PRIMARY KEY,
    fullName VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE customers (
    customerID SERIAL PRIMARY KEY,
    fullName VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE cars (
    carID SERIAL PRIMARY KEY,
    make VARCHAR(255),
    model VARCHAR(255),
    serialNum INT
);

CREATE TABLE mechanics (
    mechanicID SERIAL PRIMARY KEY,
    fullName VARCHAR(255)
);

CREATE TABLE services (
    serviceID SERIAL PRIMARY KEY,
    carID INT REFERENCES cars(carID),
    customerID INT REFERENCES customers(customerID)
);

CREATE TABLE invoices (
    invoiceID SERIAL PRIMARY KEY,
    salesPersonID INT REFERENCES salesPersons(salesPersonID),
    customerID INT REFERENCES customers(customerID),
    carID INT REFERENCES cars(carID)
);

CREATE TABLE mechanicServices (
    mechanicID INT REFERENCES mechanics(mechanicID),
    serviceID INT REFERENCES services(serviceID)
)

DROP TABLE mechanicServices;
DROP TABLE invoices;
DROP TABLE services;
DROP TABLE salesPersons;
DROP TABLE customers;
DROP TABLE cars;
DROP TABLE mechanics;
