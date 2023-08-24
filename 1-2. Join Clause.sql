# Exercise_Crate a virtual table to summarize data Task 2

SELECT
Customers.CustomerID,
Customers.CustomerName,
Orders.OrderID,
Orders.TotalCost,
Menus.MenuName,
MenuItems.CourseName,
MenuItems.StarterName

FROM Customers
INNER JOIN Bookings ON Customers.CustomerID = Bookings.CustomerID
INNER JOIN Orders ON Bookings.BookingID = Orders.BookingID
INNER JOIN Menus ON Orders.MenuID = Menus.MenuID
INNER JOIN MenuItems ON Menus.MenuItemsID = MenuItems.MenuItemsID

WHERE Orders.TotalCost > 50 
