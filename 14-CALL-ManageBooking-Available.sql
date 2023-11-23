-- Calling the ManageBooking() procedure by passing the appropriate parameters:
-- First with an available table number
CALL ManageBooking('2023-12-31', STR_TO_DATE('19:00:00', '%H:%i:%s'), 1);
