# Exercise: Create optimized queries to manage and analyze data, Task 3

DELIMITER //
CREATE PROCEDURE CancelOrder(IN order_id INT)
BEGIN
    DELETE FROM Orders WHERE OrderID = order_id;
    -- You can add additional error-handling or logging here if desired.
END;
//
DELIMITER ;

CALL CancelOrder(5);