# Exercise: Create SQL queries to add and update bookings, Task 2

DELIMITER //

CREATE PROCEDURE UpdateBooking(IN booking_id INT, IN booking_date DATE)
BEGIN
UPDATE bookings 
SET Date = booking_date
WHERE BookingID = booking_id;

END;
//

DELIMITER ;

CALL UpdateBooking(9, '2022-12-17');

SELECT * FROM bookings WHERE BookingID = 9