DELIMITER //
CREATE PROCEDURE ProductExpiry ()
BEGIN
SELECT ItemName, DateofExpiry
FROM Inventory
ORDER By DateOfExpiry;
END //
DELIMITER ;END

Call ProductExpiry;
