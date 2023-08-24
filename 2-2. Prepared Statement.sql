# Exercise: Create optimized queries to manage and analyze data, Task 2

PREPARE GetOrderDetail FROM 
'SELECT Orders.OrderID, Orders.Quantity, Orders.TotalCost 
FROM Orders
INNER JOIN Bookings ON Orders.BookingID = Bookings.BookingID
INNER JOIN Customers ON Bookings.CusomterID = Customers.CustomerID
WHERE Department = ?';

SET @CustomerID = '1';

EXECUTE GetOrderDetail USING @CustomerID;


