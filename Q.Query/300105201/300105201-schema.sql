-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema musicshop
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema musicshop
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `musicshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `musicshop` ;

-- -----------------------------------------------------
-- Table `musicshop`.`COLOURS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musicshop`.`COLOURS` (
  `colour` INT(11) NOT NULL,
  `Colors` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`colour`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `musicshop`.`CUSTOMERS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musicshop`.`CUSTOMERS` (
  `customer` INT(11) NOT NULL AUTO_INCREMENT,
  `customers` VARCHAR(40) NULL DEFAULT NULL,
  `Name` VARCHAR(30) NOT NULL,
  `Phone_number` INT(11) NOT NULL,
  PRIMARY KEY (`customer`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `musicshop`.`INSTRUMENTS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musicshop`.`INSTRUMENTS` (
  `instrument` INT(11) NOT NULL AUTO_INCREMENT,
  `Types` TEXT NOT NULL,
  `Name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`instrument`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `musicshop`.`PRICES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musicshop`.`PRICES` (
  `price` INT(11) NOT NULL AUTO_INCREMENT,
  `instrument` INT(11) NOT NULL,
  `colour` INT(11) NULL DEFAULT NULL,
  `Prices` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`price`, `instrument`),
  INDEX `instrument` (`instrument`),
  INDEX `colour` (`colour`),
  CONSTRAINT `PRICES_ibfk_1`
    FOREIGN KEY (`instrument`)
    REFERENCES `musicshop`.`INSTRUMENTS` (`instrument`),
  CONSTRAINT `PRICES_ibfk_2`
    FOREIGN KEY (`colour`)
    REFERENCES `musicshop`.`COLOURS` (`colour`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `musicshop`.`PAYMENTS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musicshop`.`PAYMENTS` (
  `payment` INT(11) NOT NULL AUTO_INCREMENT,
  `transaction_date` DATE NULL DEFAULT NULL,
  `price` INT(11) NULL DEFAULT NULL,
  `customer` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`payment`),
  INDEX `price` (`price`),
  INDEX `customer` (`customer'),
  CONSTRAINT `PAYMENTS_ibfk_1`
    FOREIGN KEY (`price`)
    REFERENCES `musicshop`.`PRICES` (`price`),
  CONSTRAINT `PAYMENTS_ibfk_2`
    FOREIGN KEY (`customer`)
    REFERENCES `musicshop`.`CUSTOMERS` (`customer`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;
-- -----------------------------------------------------
-- Table `musicshop`.`SERVICES_OFFERED`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `musicshop`.`SERVICES_OFFERED` (
  `service_offered` INT(11) NOT NULL,
  `Services` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`service_offered`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
