# Exercise: Create optimized queries to manage and analyze data, Task 1

DELIMITER //
CREATE PROCEDURE GetMaxQuantity()
BEGIN
SELECT Quantity
FROM Orders
WHERE Quantity = (SELECT MAX(Quantity) FROM Orders);
END;
//
DELIMITER ;

CALL GetMaxQuantity();