USE LittleLemonDB;
-- replace with the BookingID to be canceled 
CALL CancelBooking(30);
-- Output: +------------------------+
--         | ConfirmationMessage   |
--         +------------------------+
--         | BookingID Canceled    |
--         +------------------------+
