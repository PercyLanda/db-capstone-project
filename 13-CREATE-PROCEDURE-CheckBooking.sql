-- Assuming 'Booking' table structure with columns: BookingID, BookingDate, BookingTime, TableNumber, TableNote, CustomerID

CREATE PROCEDURE CheckBooking(IN p_BookingDate DATE, IN p_BookingTime DATETIME, IN p_TableNumber INT)
BEGIN
    DECLARE BookingStatus VARCHAR(20);

    -- Check if the table is already booked for the given date and time
    SELECT CASE
        WHEN COUNT(*) > 0 THEN 'Booked'
        ELSE 'Available'
    END INTO BookingStatus
    FROM Booking
    WHERE TableNumber = p_TableNumber
    AND BookingDate = p_BookingDate
    AND BookingTime = p_BookingTime;

    -- Return the booking status
    SELECT BookingStatus AS BookingStatus;
END