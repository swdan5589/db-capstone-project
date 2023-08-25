# Exercise: Create SQL queries to add and update bookings, Task 3


DELIMITER //

CREATE PROCEDURE CancelBooking(IN booking_id INT)
BEGIN
DELETE FROM bookings 
WHERE BookingID = booking_id;

END;
//

DELIMITER ;

CALL CancelBooking(9);

SELECT * FROM bookings WHERE BookingID = 9
