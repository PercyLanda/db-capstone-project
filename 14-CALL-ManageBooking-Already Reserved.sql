-- Calling the ManageBooking() procedure by passing the appropriate parameters:
-- Second with a table number that has already been reserved: Booked
CALL ManageBooking('2023-11-02', STR_TO_DATE('18:30:00', '%H:%i:%s'), 2);
