CREATE DATABASE GreenspotGrocerS;
USE GreenspotGrocerS;
CREATE TABLE Products (
    ItemNum INT,
    Description VARCHAR(255),
    QuantityOnHand INT,
    Cost DECIMAL(10, 2),
    PurchaseDate DATE,
    VendorID INT,
    Price DECIMAL(10, 2),
    DateSold DATE,
    CustomerID INT,
    QuantitySold INT,
    ItemType VARCHAR(50),
    Location VARCHAR(50),
    Unit VARCHAR(20)
);
INSERT INTO Products (ItemNum, Description, QuantityOnHand, Cost, PurchaseDate, VendorID, Price, DateSold, CustomerID, QuantitySold, ItemType, Location, Unit)
VALUES 
(1000, 'Bennet Farm free-range eggs', 29, 2.35, '2022-02-01', NULL, NULL, NULL, NULL, 25, 'Dairy', 'D12', 'dozen'),
(1000, 'Bennet Farm free-range eggs', 27, 5.49, '2022-02-02', 198765, 5.49, '2022-02-02', 198765, 2, 'Dairy', 'D12', 'dozen'),
(2000, 'Ruby''s Kale', 3, 3.99, '2022-02-02', NULL, 3.99, '2022-02-02', NULL, 2, 'Produce', 'p12', 'bunch'),
(1100, 'Freshness White beans', 13, NULL, '2022-02-02', 202900, 1.49, '2022-02-02', 202900, 2, 'Canned', 'a2', '12 ounce can'),
(1100, 'Freshness White beans', 53, 0.69, '2022-02-02', 198765, NULL, NULL, NULL, 40, 'Canned', 'a2', '12 oz can'),
(1000, 'Bennet Farm free-range eggs', 25, 5.99, '2022-02-04', 196777, NULL, NULL, NULL, 2, 'Dairy', 'D12', 'dozen'),
(1100, 'Freshness White beans', 45, 1.49, '2022-02-07', 198765, 8, '2022-02-07', 198765, NULL, 'Canned', 'a2', '12-oz can'),
(1222, 'Freshness Green beans', 59, 0.59, '2022-02-10', NULL, NULL, NULL, NULL, 40, 'Canned', 'a3', '12 ounce can'),
(1223, 'Freshness Green beans', 12, 1.75, '2022-02-10', NULL, NULL, NULL, NULL, 10, 'Canned', 'a7', '36 oz can'),
(1224, 'Freshness Wax beans', 31, 0.65, '2022-02-10', NULL, NULL, NULL, NULL, 30, 'Canned', 'a3', '12 ounce can'),
(1000, 'Bennet Farm free-range eggs', 21, 5.49, '2022-02-11', 277177, NULL, NULL, NULL, 4, 'Dairy', 'd12', 'dozen'),
(1100, 'Freshness White beans', 41, 1.49, '2022-02-11', NULL, NULL, NULL, NULL, 4, 'Canned', 'a2', '12 ounce can'),
(1222, 'Freshness Green beans', 47, 1.29, '2022-02-12', 111000, NULL, NULL, NULL, 12, 'Canned', 'a3', '12-oz can'),
(1224, 'Freshness Wax beans', 23, 1.55, '2022-02-12', NULL, NULL, NULL, NULL, 8, 'Canned', 'a3', '12-oz can'),
(2000, 'Ruby''s Kale', 28, 1.29, '2022-02-12', 111000, NULL, NULL, NULL, 25, 'Produce', 'p12', 'bunch'),
(2001, 'Ruby''s Organic Kale', 20, 2.19, '2022-02-12', 111000, NULL, NULL, NULL, 20, 'Produce', 'po2', 'bunch'),
(1223, 'Freshness Green beans', 7, 3.49, '2022-02-13', 198765, 5, '2022-02-13', 198765, 5, 'Canned', 'a7', '36 oz can'),
(2001, 'Ruby''s Organic Kale', 19, 6.99, '2022-02-13', 100988, NULL, NULL, NULL, 1, 'Produce', 'po2', 'bunch'),
(2001, 'Ruby''s Organic Kale', 7, 6.99, '2022-02-14', 202900, NULL, NULL, NULL, 12, 'Produce', 'po2', 'bunch'),
(1223, 'Freshness Green beans', 17, 1.8, '2022-02-15', NULL, NULL, NULL, NULL, 10, 'Canned', 'a7', '36 oz can'),
(2000, 'Ruby''s Kale', 26, 3.99, '2022-02-15', 111000, NULL, NULL, NULL, 2, 'Produce', 'p12', 'bunch')
;
SELECT * FROM Products;
CREATE TABLE Vendors (
    VendorID INT PRIMARY KEY,
    VendorName VARCHAR(100),
    VendorAddress VARCHAR(255)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    CustomerAddress VARCHAR(255)
);

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    ItemNum INT, -- Foreign Key referencing Products table
    VendorID INT, -- Foreign Key referencing Vendors table
    CustomerID INT, -- Foreign Key referencing Customers table
    TransactionDate DATE
);
INSERT INTO Vendors (VendorID, VendorName, VendorAddress)
VALUES
(198765, 'Freshness, Inc.', '202 E. Maple St., St. Joseph, MO 45678'),
(196777, 'VendorXYZ', '123 Main Street, Anytown, USA');

INSERT INTO Customers (CustomerID, CustomerName, CustomerAddress)
VALUES
(2, 'CustomerABC', '456 Oak Street, Another Town, USA'),
(4, 'CustomerXYZ', '789 Pine Avenue, Yet Another City, USA');

INSERT INTO Transactions (TransactionID, ItemNum, VendorID, CustomerID, TransactionDate)
VALUES
(1, 1000, NULL, NULL, '2022-02-02'),
(2, 1100, 198765, 2, '2022-02-07');
SHOW TABLES;
CREATE TABLE Vendors (
    VendorID INT PRIMARY KEY,
    VendorName VARCHAR(100),
    VendorAddress VARCHAR(255)
);
INSERT INTO Vendors (VendorID, VendorName, VendorAddress)
VALUES
(198765, 'Freshness, Inc.', '202 E. Maple St., St. Joseph, MO 45678'),
(196777, 'VendorXYZ', '123 Main Street, Anytown, USA');
SHOW TABLES;
INSERT INTO Products (ItemNum, Description, QuantityOnHand, Cost, PurchaseDate, VendorID, Price, DateSold, CustomerID, QuantitySold, ItemType, Location, Unit)
VALUES 
(3000, 'Low Stock Product 1', 5, 4.99, '2022-02-20', 198765, 7.99, NULL, NULL, 0, 'Grocery', 'A1', 'box'),
(3001, 'Low Stock Product 2', 8, 6.49, '2022-02-21', 196777, 12.99, NULL, NULL, 0, 'Grocery', 'B2', 'pack');
SELECT * FROM Products; 
SHOW TABLES;



