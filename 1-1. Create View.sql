# Exercise_Crate a virtual table to summarize data Task 1

CREATE VIEW OrdersView AS SELECT
OrderID, Quantity, TotalCost
FROM Orders
WHERE Quantity > 2;

SELECT * from OrdersView;