-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Staff` (
  `EmployeeID` INT NOT NULL,
  `EmployeeName` VARCHAR(45) NULL,
  `EmployeeType` VARCHAR(45) NULL,
  `WorkSchedule` VARCHAR(45) NULL,
  `PhoneNumber` INT NULL,
  `EmailD` VARCHAR(45) NULL,
  PRIMARY KEY (`EmployeeID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Inventory` (
  `ItemID` INT NOT NULL,
  `ItemName` VARCHAR(45) NULL,
  `Category` VARCHAR(45) NULL,
  `Quantity` INT NULL,
  `Weight` VARCHAR(10) NULL,
  `DateOfExpiry` DATETIME NULL,
  `DonatedBy` VARCHAR(45) NULL,
  `StoredAt` VARCHAR(45) NULL,
  `Staff_EmployeeID` INT NOT NULL,
  PRIMARY KEY (`ItemID`),
  INDEX `fk_Inventory_Staff1_idx` (`Staff_EmployeeID` ASC) VISIBLE,
  CONSTRAINT `fk_Inventory_Staff1`
    FOREIGN KEY (`Staff_EmployeeID`)
    REFERENCES `mydb`.`Staff` (`EmployeeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`StudentClients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`StudentClients` (
  `StudentID` INT NOT NULL,
  `StudentName` VARCHAR(45) NULL,
  `PhoneNumber` VARCHAR(45) NULL,
  `EmailID` VARCHAR(45) NULL,
  PRIMARY KEY (`StudentID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Order` (
  `OrderID` INT NOT NULL,
  `OrderDate` DATETIME NULL,
  `OrderItems` VARCHAR(45) NULL,
  `NumberOfBags` INT NULL,
  `StudentClients_StudentID` INT NOT NULL,
  `Staff_EmployeeID` INT NOT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `fk_Order_StudentClients_idx` (`StudentClients_StudentID` ASC) VISIBLE,
  INDEX `fk_Order_Staff1_idx` (`Staff_EmployeeID` ASC) VISIBLE,
  CONSTRAINT `fk_Order_StudentClients`
    FOREIGN KEY (`StudentClients_StudentID`)
    REFERENCES `mydb`.`StudentClients` (`StudentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Staff1`
    FOREIGN KEY (`Staff_EmployeeID`)
    REFERENCES `mydb`.`Staff` (`EmployeeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Storage`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Storage` (
  `LockerID` VARCHAR(45) NOT NULL,
  `LockerName` VARCHAR(20) NULL,
  `LockerLocation` VARCHAR(45) NULL,
  `StoredItems` VARCHAR(45) NULL,
  `Staff_EmployeeID` INT NOT NULL,
  PRIMARY KEY (`LockerID`),
  INDEX `fk_Storage_Staff1_idx` (`Staff_EmployeeID` ASC) VISIBLE,
  CONSTRAINT `fk_Storage_Staff1`
    FOREIGN KEY (`Staff_EmployeeID`)
    REFERENCES `mydb`.`Staff` (`EmployeeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Inventory_has_Storage`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Inventory_has_Storage` (
  `Inventory_ItemID` INT NOT NULL,
  `Storage_LockerID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Inventory_ItemID`, `Storage_LockerID`),
  INDEX `fk_Inventory_has_Storage_Storage1_idx` (`Storage_LockerID` ASC) VISIBLE,
  INDEX `fk_Inventory_has_Storage_Inventory1_idx` (`Inventory_ItemID` ASC) VISIBLE,
  CONSTRAINT `fk_Inventory_has_Storage_Inventory1`
    FOREIGN KEY (`Inventory_ItemID`)
    REFERENCES `mydb`.`Inventory` (`ItemID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Inventory_has_Storage_Storage1`
    FOREIGN KEY (`Storage_LockerID`)
    REFERENCES `mydb`.`Storage` (`LockerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
