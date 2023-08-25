# Exercise: Create SQL queries to check available bookings based on user input, Task 3

DELIMITER //

CREATE PROCEDURE AddValidBooking(IN booking_date DATE, IN table_number INT)
BEGIN
  DECLARE booking_status INT;

  -- Start the transaction
  START TRANSACTION;

  -- Check if the table is already booked on the given date
  SELECT COUNT(*) INTO booking_status
  FROM Bookings
  WHERE Date = booking_date AND TableNumber = table_number;

  -- Use IF ELSE to decide whether to commit or rollback
  IF booking_status > 0 THEN
    -- Table is already booked, rollback the transaction
    ROLLBACK;
    SELECT CONCAT('Table ', table_number, ' is already booked - booking cancelled') AS Status;
  ELSE
    -- Table is available, insert the new booking record
    INSERT INTO Bookings (Date, TableNumber)
    VALUES (booking_date, table_number);
    
    -- Commit the transaction
    COMMIT;
    SELECT CONCAT('Booking successful for table ', table_number, ' on ', booking_date) AS Status;
  END IF;

END;
//

DELIMITER ;

CALL AddValidBooking("2022-10-10", 5);