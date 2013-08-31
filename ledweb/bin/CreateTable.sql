SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `mydb` ;
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
SHOW WARNINGS;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`User` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `mydb`.`User` (
  `UserID` INT NOT NULL AUTO_INCREMENT ,
  `UserName` VARCHAR(255) NULL ,
  `Phone` VARCHAR(255) NULL ,
  `Password` VARCHAR(255) NULL ,
  `Address` VARCHAR(255) NULL ,
  `IsDelete` INT NULL DEFAULT 0 ,
  `Reserve1` VARCHAR(255) NULL ,
  `Reserve2` VARCHAR(255) NULL ,
  `Reserve3` VARCHAR(255) NULL ,
  PRIMARY KEY (`UserID`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`Product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Product` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `mydb`.`Product` (
  `ProductID` INT NOT NULL AUTO_INCREMENT ,
  `CategoryID` INT NULL ,
  `ProductName` VARCHAR(255) NULL ,
  `ProductDesc` TEXT NULL ,
  `ProductImage` VARCHAR(255) NULL ,
  `IsDelete` INT NULL DEFAULT 0 ,
  `Reserve2` VARCHAR(255) NULL ,
  `Reserve3` VARCHAR(255) NULL ,
  `Reserve1` VARCHAR(255) NULL ,
  PRIMARY KEY (`ProductID`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`Spec`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Spec` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `mydb`.`Spec` (
  `SpecID` INT NOT NULL AUTO_INCREMENT ,
  `SpecName` VARCHAR(255) NULL ,
  `IsDelete` INT NULL DEFAULT 0 ,
  `Reserve2` VARCHAR(255) NULL ,
  `Reserve3` VARCHAR(255) NULL ,
  `Reserve1` VARCHAR(255) NULL ,
  PRIMARY KEY (`SpecID`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`ProductSpec`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ProductSpec` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `mydb`.`ProductSpec` (
  `ProductSpecID` INT NOT NULL AUTO_INCREMENT ,
  `ProductID` INT NULL ,
  `SpecID` INT NULL ,
  `SpecValue` VARCHAR(255) NULL ,
  `IsDelete` INT NULL DEFAULT 0 ,
  `Reserve2` VARCHAR(255) NULL ,
  `Reserve3` VARCHAR(255) NULL ,
  `Reserve1` VARCHAR(255) NULL ,
  PRIMARY KEY (`ProductSpecID`) ,
  INDEX `ProductID` (`ProductID` ASC) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`Order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Order` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `mydb`.`Order` (
  `OrderID` INT NOT NULL AUTO_INCREMENT ,
  `UserID` INT NULL ,
  `ProductID` INT NULL ,
  `Quantity` INT NULL ,
  `IsDelete` INT NULL DEFAULT 0 ,
  `TypeID` INT NULL ,
  `Reserve2` VARCHAR(255) NULL ,
  `Reserve3` VARCHAR(255) NULL ,
  `Reserve1` VARCHAR(255) NULL ,
  PRIMARY KEY (`OrderID`) ,
  INDEX `UserID` (`UserID` ASC) ,
  INDEX `ProductID` (`ProductID` ASC) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`Type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Type` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `mydb`.`Type` (
  `TypeID` INT NOT NULL AUTO_INCREMENT ,
  `TypeName` VARCHAR(255) NULL ,
  `IsDelete` INT NULL DEFAULT 0 ,
  `Reserve2` VARCHAR(255) NULL ,
  `Reserve3` VARCHAR(255) NULL ,
  `Reserve1` VARCHAR(255) NULL ,
  PRIMARY KEY (`TypeID`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`ProductType`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ProductType` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `mydb`.`ProductType` (
  `ProductTypeID` INT NOT NULL AUTO_INCREMENT ,
  `ProductID` INT NULL ,
  `TypeID` INT NULL ,
  `IsDelete` INT NULL DEFAULT 0 ,
  `Reserve2` VARCHAR(255) NULL ,
  `Reserve3` VARCHAR(255) NULL ,
  `Reserve1` VARCHAR(255) NULL ,
  PRIMARY KEY (`ProductTypeID`) ,
  INDEX `ProductID` (`ProductID` ASC) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`Category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Category` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `mydb`.`Category` (
  `CategoryID` INT NOT NULL AUTO_INCREMENT ,
  `CategoryName` VARCHAR(425) NULL ,
  `Reserve1` VARCHAR(255) NULL ,
  `Reserve3` VARCHAR(255) NULL ,
  `Reserve2` VARCHAR(255) NULL ,
  `IsDelete` INT NULL DEFAULT 0 ,
  PRIMARY KEY (`CategoryID`) )
ENGINE = InnoDB;

SHOW WARNINGS;
USE `mydb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
