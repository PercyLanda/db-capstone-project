DROP PROCEDURE IF EXISTS AddValidBooking;

CREATE PROCEDURE AddValidBooking(
    IN p_BookingDate DATE,
    IN p_BookingTime DATETIME,
    IN p_TableNumber INT
)
BEGIN
    DECLARE BookingCount INT;

    -- Start a transaction
    START TRANSACTION;

    -- Check if the table is already booked on the given date and time
    SELECT COUNT(*) INTO BookingCount
    FROM Booking
    WHERE TableNumber = p_TableNumber
    AND BookingDate = p_BookingDate
    AND BookingTime <> p_BookingTime; -- Ensure the time is different, considering overlapping reservations

    -- If the table is already booked, rollback the transaction
    IF BookingCount > 0 THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Table already booked for the given date and time';
    ELSE
        -- If the table is available, insert the new booking record and commit the transaction
        INSERT INTO Booking (BookingDate, BookingTime, TableNumber)
        VALUES (p_BookingDate, p_BookingTime, p_TableNumber);

        COMMIT;
    END IF;
END
