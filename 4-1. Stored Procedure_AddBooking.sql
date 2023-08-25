# Exercise: Create SQL queries to add and update bookings, Task 1

DELIMITER //

CREATE PROCEDURE AddBooking(IN booking_id INT, IN customer_id INT, IN table_number INT, IN booking_date DATE)
BEGIN
INSERT INTO bookings (BookingID, Date, TableNumber, CustomerID)
VALUES (booking_id, booking_date, table_number, customer_id);
END;
//

DELIMITER ;


CALL ADDBooking(14, 3, 4, '2022-12-30')