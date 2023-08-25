# Exercise: Create SQL queries to check available bookings based on user input, Task 2

DELIMITER //

CREATE PROCEDURE CheckBooking(IN booking_date DATE, IN table_number INT)
BEGIN
  DECLARE booking_status INT;

  SELECT COUNT(*) INTO booking_status 
  FROM Bookings
  WHERE Date = booking_date AND TableNumber = table_number;

  CASE 
    WHEN booking_status > 0 THEN
      SELECT CONCAT('Table ', table_number, ' is already booked') AS Status;
    ELSE
      SELECT 'Table is available' AS Status;
  END CASE;

END;
//

DELIMITER ;

call CheckBooking("2022-11-12", 3)