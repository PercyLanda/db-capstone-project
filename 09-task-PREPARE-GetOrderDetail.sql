USE LittleLemonDB;

-- Create the prepared statement
PREPARE GetOrderDetail FROM 'SELECT OrderID, Quantity, GrandTotal FROM Orders WHERE CustomerID = ?';

-- Create a variable and assign a value
SET @id = 2;

-- Execute the prepared statement
EXECUTE GetOrderDetail USING @id;

-- Deallocate the prepared statement
-- To deallocate a prepared statement means to remove it from the MySQL server's cache. 
DEALLOCATE PREPARE GetOrderDetail;
