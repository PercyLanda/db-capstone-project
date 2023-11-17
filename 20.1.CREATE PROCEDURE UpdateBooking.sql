-- NOT WORKING AS EXPECTED
USE LittleLemonDB;
DROP PROCEDURE IF EXISTS UpdateBooking;

CREATE PROCEDURE UpdateBooking(
    IN p_BookingID INT,
    IN p_BookingDate DATE
)
BEGIN
    -- Update the booking date for the specified BookingID
    UPDATE Booking
    SET BookingDate = p_BookingDate
    WHERE BookingID = p_BookingID;

    -- Select a custom message for confirmation
    SELECT CONCAT('Booking ', p_BookingID, ' Updated') AS ConfirmationMessage;
END

