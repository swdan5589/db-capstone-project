# Exercise_Crate a virtual table to summarize data Task 3

SELECT MenuName
FROM Menus
WHERE MenuID = ANY (SELECT MenuID FROM Orders WHERE Quantity >2 )