USE LittleLemonDB;
DROP PROCEDURE IF EXISTS AddBooking;

CREATE PROCEDURE AddBooking(
    IN p_CustomerID INT,
    IN p_BookingDate DATE,
    IN p_TableNumber INT
)
BEGIN
    -- Insert the new booking record
    INSERT INTO Booking (CustomerID, BookingDate, TableNumber)
    VALUES (p_CustomerID, p_BookingDate, p_TableNumber);

    -- Select a custom message for confirmation
    SELECT 'New Booking Added' AS ConfirmationMessage;
END
