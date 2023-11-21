CREATE PROCEDURE GetMaxQuantity()
BEGIN
    DECLARE maxQuantity INT;

    -- Get the maximum ordered quantity
    SELECT MAX(Quantity) INTO maxQuantity
    FROM Orders;

    -- Display the result
    SELECT CONCAT('Maximum Ordered Quantity: ', maxQuantity) AS Result;
END;

-- Call the procedure
CALL GetMaxQuantity();
