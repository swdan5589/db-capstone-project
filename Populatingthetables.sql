-- Use the Database
USE `LittleLemonDB`;

-- Insert more data into `Customers` table
INSERT INTO `Customers` (`CustomerID`, `CustomerName`, `Address`, `Email`, `PhoneNumber`) VALUES
(1, 'John Doe', '123 Main St', 'john.doe@email.com', '123-456-7890'),
(2, 'Jane Smith', '234 Elm St', 'jane.smith@email.com', '098-765-4321'),
(3, 'Emily Clark', '345 Oak St', 'emily.clark@email.com', '321-654-9870'),
(4, 'Robert Brown', '567 Cedar St', 'robert@email.com', '555-123-4567'),
(5, 'Sarah Green', '678 Maple St', 'sarah@email.com', '555-987-6543');

-- Insert more data into `Bookings` table
INSERT INTO `Bookings` (`BookingID`, `Date`, `TableNumber`, `CustomerID`) VALUES
(1, '2023-08-25', 5, 1),
(2, '2023-08-26', 3, 2),
(3, '2023-08-27', 1, 3),
(4, '2023-08-28', 2, 1),
(5, '2023-08-29', 6, 5),
(6, '2023-08-30', 7, 2),
(7, '2023-08-31', 4, 3),
(8, '2023-09-01', 2, 4);

-- Insert more data into `MenuItems` table
INSERT INTO `MenuItems` (`MenuItemsID`, `CourseName`, `StarterName`, `DesertName`) VALUES
(1, 'Pasta Course', 'Caesar Salad', 'Tiramisu'),
(2, 'Dim Sum Course', 'Spring Roll', 'Mango Pudding'),
(3, 'Steak Course', 'Garlic Bread', 'Apple Pie'),
(4, 'Taco Course', 'Nachos', 'Churros'),
(5, 'Sushi Course', 'Edamame', 'Mochi');

-- Insert more data into `Menus` table
INSERT INTO `Menus` (`MenuID`, `MenuName`, `Cuisine`, `Price`, `MenuItemsID`) VALUES
(1, 'Italian Feast', 'Italian', 20.5, 1),
(2, 'Chinese Delight', 'Chinese', 15.0, 2),
(3, 'American Classic', 'American', 18.75, 3),
(4, 'Mexican Fiesta', 'Mexican', 21.0, 4),
(5, 'Japanese Essence', 'Japanese', 23.0, 5);

-- Insert more data into `Staffs` table
INSERT INTO `Staffs` (`StaffID`, `StaffName`, `Role`, `Salary`) VALUES
(1, 'Alice', 'Waiter', 2000),
(2, 'Bob', 'Chef', 3000),
(3, 'Charlie', 'Manager', 4000),
(4, 'David', 'Bartender', 1800),
(5, 'Lucy', 'Dishwasher', 1600);

-- Insert more data into `Orders` table
INSERT INTO `Orders` (`OrderID`, `OrderDate`, `Quantity`, `TotalCost`, `MenuID`, `StaffID`, `BookingID`) VALUES
(1, '2023-08-25', 2, 41.0, 1, 1, 1),
(2, '2023-08-26', 1, 15.0, 2, 2, 2),
(3, '2023-08-27', 3, 56.25, 3, 3, 3),
(4, '2023-08-28', 1, 21.0, 4, 4, 4),
(5, '2023-08-29', 2, 46.0, 5, 5, 5),
(6, '2023-08-30', 4, 60.0, 2, 2, 6),
(7, '2023-08-31', 3, 63.0, 3, 3, 7),
(8, '2023-09-01', 1, 23.0, 5, 5, 8);

-- Insert more data into `OrderDeliveryStatus` table
INSERT INTO `OrderDeliveryStatus` (`StatusID`, `DeliveryDate`, `Status`, `OrderID`) VALUES
(1, '2023-08-25', 'Delivered', 1),
(2, '2023-08-26', 'Out for Delivery', 2),
(3, '2023-08-27', 'Pending', 3),
(4, '2023-08-28', 'Delivered', 4),
(5, '2023-08-29', 'Out for Delivery', 5),
(6, '2023-08-30', 'Pending', 6),
(7, '2023-08-31', 'Delivered', 7),
(8, '2023-09-01', 'Pending', 8);
