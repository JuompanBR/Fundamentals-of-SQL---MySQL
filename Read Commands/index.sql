SELECT * FROM table_name;

-- To select distinct values
SELECT DISTINCT country FROM Customers;

-- To count the distinct values
SELECT COUNT(DISTINCT Country) FROM Customers;

-- To filter based on a condition
SELECT * FROM Customers WHERE Country LIKE 'Cameroon';
    -- In the case of a range: This uses ascii chars codes of each subsequent letter -- can be very powerful
    SELECT * FROM Customers WHERE Country BETWEEN 'Cameroon' AND 'Japan';

-- Combining multiple clauses for the WHERE clause
SELECT * FROM Products WHERE ProductName LIKE 'Ch%' AND Price > 21;

-- Specify multiples values for the WHERE clause
SELECT * FROM Products WHERE CategoryID IN (2, 3, 4, 5);

-- Joins5
-- Inner joins
SELECT Orders.OrderID, Customers.CustomerID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
-- 
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID) INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);
-- Outer joins
SELECT Orders.OrderID, Customer.CustomerID, Customer;



