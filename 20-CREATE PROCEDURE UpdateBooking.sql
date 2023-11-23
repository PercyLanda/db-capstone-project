USE LittleLemonDB;
DROP PROCEDURE IF EXISTS UpdateBooking;

CREATE PROCEDURE UpdateBooking(
    IN p_BookingID INT,
    IN p_BookingDate DATE,
    IN p_BookingTime TIME
)
BEGIN
    -- Update the booking date and time for the specified BookingID
    UPDATE Booking
    SET BookingDate = p_BookingDate,
        BookingTime = p_BookingTime
    WHERE BookingID = p_BookingID;
END;
