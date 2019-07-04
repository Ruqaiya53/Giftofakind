-- MySQL Workbench Forward Engineering



SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';


-- -----------------------------------------------------

-- Schema Giftofakind
-- 
--------------------------------------------------------


-- -----------------------------------------------------

-- Schema Giftofakind
-- --------------------------------
---------------------
-----------------------------------
CREATE SCHEMA IF NOT EXISTS `Giftofakind` DEFAULT CHARACTER SET utf8 ;
USE `Giftofakind` ;


-- -----------------------------------------------------

-- Table `Giftofakind`.`Category`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `Giftofakind`.`Category` (
  
	`CategoryID` VARCHAR(10) NOT NULL,
  
	`Name` VARCHAR(15) NOT NULL,
  
	PRIMARY KEY (`CategoryID`),
  
	UNIQUE INDEX `CategoryID_UNIQUE` (`CategoryID` ASC))

ENGINE = InnoDB;



-- -----------------------------------------------------

-- Table `Giftofakind`.`Product`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `Giftofakind`.`Product` (
  
	`ProductID` VARCHAR(10) NOT NULL,
  
	`Name` VARCHAR(50) NOT NULL,
  
	`Price` INT NOT NULL,
  
	`Quantity` INT NOT NULL,
  
	`CateogoryID` VARCHAR(10) NOT NULL,
  
	PRIMARY KEY (`ProductID`),
  
	UNIQUE INDEX `ProductID_UNIQUE` (`ProductID` ASC),
  
	INDEX `CategoryID_idx` (`CateogoryID` ASC),
  
	CONSTRAINT `CategoryID`
    
	FOREIGN KEY (`CateogoryID`)
    
	REFERENCES `Giftofakind`.`Category` (`CategoryID`)
    
	ON DELETE NO ACTION
    
	ON UPDATE NO ACTION)

ENGINE = InnoDB;



-- -----------------------------------------------------

-- Table `Giftofakind`.`Address`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `Giftofakind`.`Address` (
  
	`AddressID` VARCHAR(10) NOT NULL,
  
	`PostalCode` VARCHAR(10) NOT NULL,
  
	`Country` VARCHAR(15) NOT NULL,
  
	`State` VARCHAR(25) NOT NULL,
  
	`City` VARCHAR(15) NOT NULL,
  
	PRIMARY KEY (`AddressID`),
  
	UNIQUE INDEX `AddressID_UNIQUE` (`AddressID` ASC))

ENGINE = InnoDB;



-- -----------------------------------------------------

-- Table `Giftofakind`.`User`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `Giftofakind`.`User` (
  
	`EmailID` VARCHAR(30) NOT NULL,
  
	`Type` VARCHAR(5) NOT NULL,
  
	`Fname` VARCHAR(10) NOT NULL,
  
	`Lname` VARCHAR(10) NOT NULL,
  
	`Date` DATE NOT NULL,
  
	`ContactNo` INT NOT NULL,
  
	`Gender` VARCHAR(5) NOT NULL,
  
	`Password` VARCHAR(255) NOT NULL,
  
	`AddressID` VARCHAR(10) NOT NULL,
  
	PRIMARY KEY (`EmailID`),
  
	UNIQUE INDEX `EmailID_UNIQUE` (`EmailID` ASC),
  
	INDEX `AddressID_idx` (`AddressID` ASC),
  
	CONSTRAINT `AddressID`
    
	FOREIGN KEY (`AddressID`)
    
	REFERENCES `Giftofakind`.`Address` (`AddressID`)
    
	ON DELETE NO ACTION
    
	ON UPDATE NO ACTION)

ENGINE = InnoDB;



-- -----------------------------------------------------

-- Table `Giftofakind`.`Order`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `Giftofakind`.`Order` (
  
	`OrderID` VARCHAR(10) NOT NULL,
  
	`OrderAmount` INT NOT NULL,
  
	`EmailID` VARCHAR(30) NOT NULL,
  
	`BillingAddress` VARCHAR(30) NOT NULL,
  
	`ShippingAddress` VARCHAR(30) NOT NULL,
  
	`Quantity` INT NOT NULL,
  
	`Price` INT NOT NULL,
  
	`AddressID` VARCHAR(10) NOT NULL,
  
	`ProductID` VARCHAR(10) NOT NULL,
  
	PRIMARY KEY (`OrderID`),
  
	INDEX `AddressID_idx` (`AddressID` ASC),
  
	INDEX `ProductID_idx` (`ProductID` ASC),
  
	UNIQUE INDEX `OrderID_UNIQUE` (`OrderID` ASC),
  
	CONSTRAINT `EmailID`
    
	FOREIGN KEY (`EmailID`)
    
	REFERENCES `Giftofakind`.`User` (`EmailID`)
    
	ON DELETE NO ACTION
    
	ON UPDATE NO ACTION,
  
	CONSTRAINT `AddID`
    
	FOREIGN KEY (`AddressID`)
    
	REFERENCES `Giftofakind`.`Address` (`AddressID`)
    
	ON DELETE NO ACTION
    
	ON UPDATE NO ACTION,
  
	CONSTRAINT `ProdID`
    
	FOREIGN KEY (`ProductID`)
    
	REFERENCES `Giftofakind`.`Product` (`ProductID`)
    
	ON DELETE NO ACTION
    
	ON UPDATE NO ACTION)

ENGINE = InnoDB;



-- -----------------------------------------------------

-- Table `Giftofakind`.`ShoppingCart`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `Giftofakind`.`ShoppingCart` (
  
	`ID` VARCHAR(10) NOT NULL,
  
	`ProductID` VARCHAR(10) NOT NULL,
  
	`Quantity` INT NOT NULL,
  
	`Price` INT NOT NULL,
  
	PRIMARY KEY (`ID`),
  
	UNIQUE INDEX `ID_UNIQUE` (`ID` ASC),
  
	INDEX `ProductID_idx` (`ProductID` ASC),
  
	CONSTRAINT `ProductID`
    
	FOREIGN KEY (`ProductID`)
    
	REFERENCES `Giftofakind`.`Product` (`ProductID`)
    
	ON DELETE NO ACTION
    
	ON UPDATE NO ACTION)

ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;

SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
