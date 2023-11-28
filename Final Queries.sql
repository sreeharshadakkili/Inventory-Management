#QUERY 1
select Inventory.ItemName, Inventory.Quantity, Inventory.DateOfExpiry, Storage.LockerName
from Inventory, Storage, Inventory_has_Storage
where Inventory_has_Storage.Inventory_ItemID = ItemID
and Inventory_has_Storage.Storage_LockerID = LockerID;


#Query 2
SELECT ItemName, DateOfExpiry FROM Inventory
WHERE DateOfExpiry > 2023-12-02
ORDER BY DateOfExpiry;


#Query 3
SELECT ItemName, Quantity 
FROM Inventory
WHERE Quantity > 100
ORDER BY Quantity;

#QUERY 4
SELECT LockerID, LockerName, LockerLocation
FROM Storage
WHERE StoredItems = 'Null';

#Query 5
SELECT OrderID, OrderDate, StudentName
FROM mydb.Order, StudentClients
where StudentClients_StudentID = StudentID;

#Query 6
SELECT ItemName, Staff_EmployeeID, EmployeeName
FROM Inventory,staff
where Staff_EmployeeID = EmployeeID;

#Query 7
SELECT MAX(Quantity),ItemName
From Inventory
group by ItemName
order by MAX(Quantity) desc;

#Query 8
SELECT ItemName, Category 
From Inventory
WHERE Category = 'Food';

#Query 9
UPDATE Staff
SET Employeetype = 'Fulltime'
WHERE EmployeeName = 'Bts';


#Stored Procedure
DELIMITER //
CREATE PROCEDURE ProductExpiry ()
BEGIN
SELECT ItemName, DateofExpiry
FROM Inventory
ORDER By DateOfExpiry;
END //
DELIMITER ;END

Call ProductExpiry;

