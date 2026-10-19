USE classicmodels;

-- 1. Tao View lay customerNumber, customerName, phone tu bang customers
CREATE VIEW customer_views AS
SELECT customerNumber, customerName, phone
FROM customers;

-- Truy van du lieu tu View vua tao
SELECT * FROM customer_views;

-- 2. Cap nhat View voi CREATE OR REPLACE VIEW
CREATE OR REPLACE VIEW customer_views AS
SELECT customerNumber, customerName, contactFirstName, contactLastName, phone
FROM customers
WHERE city = 'Nantes';

-- Kiem tra lai ket qua sau khi cap nhat
SELECT * FROM customer_views;

-- 3. Xoa View khi khong con su dung
DROP VIEW customer_views;
