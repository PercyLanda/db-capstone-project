-- Drop the existing primary key constraint
ALTER TABLE Booking
DROP PRIMARY KEY;

-- Modify the BookingID column to be an auto-increment primary key
ALTER TABLE Booking
MODIFY COLUMN BookingID INT AUTO_INCREMENT PRIMARY KEY;
