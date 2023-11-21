USE LittleLemonDB;

CREATE PROCEDURE CancelOrder(IN orderIDParam INT)
BEGIN
    -- Check if the order exists before attempting to delete
    IF EXISTS (SELECT 1 FROM Orders WHERE OrderID = orderIDParam) THEN
        -- Delete the order
        DELETE FROM Orders WHERE OrderID = orderIDParam;
        SELECT CONCAT('Order ', orderIDParam, ' has been canceled.') AS Message;
    ELSE
        SELECT 'Order does not exist.' AS Message;
    END IF;
END;

-- CALL CancelOrder(10); -- Replace 10 with the actual OrderID you want to cancel
