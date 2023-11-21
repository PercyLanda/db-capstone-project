DROP PROCEDURE IF EXISTS AddValidBooking;

CREATE PROCEDURE AddValidBooking(
    IN p_BookingDate DATE,
    IN p_BookingTime TIME,
    IN p_TableNumber INT,
    IN p_CustomerID INT
)
BEGIN
    DECLARE tableAlreadyBooked INT DEFAULT 0;

    START TRANSACTION;

    -- Check if the table is already booked on the given date and time
    SELECT COUNT(*) INTO tableAlreadyBooked
    FROM Booking
    WHERE TableNumber = p_TableNumber
    AND BookingDate = p_BookingDate
    AND BookingTime = p_BookingTime;

    IF tableAlreadyBooked > 0 THEN
        -- Table is already booked, rollback the transaction
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Table is already booked on the specified date and time.';
    ELSE
        -- Table is available, commit the transaction and add the new booking
        INSERT INTO Booking (BookingDate, BookingTime, TableNumber, CustomerID)
        VALUES (p_BookingDate, p_BookingTime, p_TableNumber, p_CustomerID);

        COMMIT;
    END IF;
END
