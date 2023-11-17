USE LittleLemonDB;
DROP PROCEDURE IF EXISTS CancelBooking;

CREATE PROCEDURE CancelBooking(
    IN p_BookingID INT
)
BEGIN
    -- Delete the booking with the specified BookingID
    DELETE FROM Booking
    WHERE BookingID = p_BookingID;
    
    -- Optionally, you can include a confirmation message
    SELECT CONCAT('Booking ', p_BookingID, ' Canceled') AS ConfirmationMessage;
END

