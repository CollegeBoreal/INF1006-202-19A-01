-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema widesign
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema widesign
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `widesign` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `widesign` ;

-- -----------------------------------------------------
-- Table `widesign`.`COLORS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `widesign`.`COLORS` (
  `color` INT(11) NOT NULL AUTO_INCREMENT,
  `Colors` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`color`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `widesign`.`CUSTOMERS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `widesign`.`CUSTOMERS` (
  `customer` VARCHAR(4) NOT NULL,
  `nom` VARCHAR(40) NULL DEFAULT NULL,
  `prenom` VARCHAR(40) NULL DEFAULT NULL,
  `adresse` VARCHAR(100) NULL DEFAULT NULL,
  `codepostal` VARCHAR(8) NULL DEFAULT NULL,
  `telephone` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`customer`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `widesign`.`DELIVERIES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `widesign`.`DELIVERIES` (
  `delivery` INT(11) NOT NULL AUTO_INCREMENT,
  `social_networks` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`delivery`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `widesign`.`FRAMES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `widesign`.`FRAMES` (
  `frame` VARCHAR(40) NOT NULL,
  `woodframe` VARCHAR(40) NOT NULL,
  `metalframe` VARCHAR(40) NOT NULL,
  `papier` VARCHAR(40) NULL DEFAULT NULL,
  PRIMARY KEY (`frame`),
  INDEX `papier` (`papier` ) ,
  CONSTRAINT `frames_ibfk_1`
    FOREIGN KEY (`papier`)
    REFERENCES `widesign`.`papiers` (`papier`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `widesign`.`IMAGES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `widesign`.`IMAGES` (
  `image` INT(11) NOT NULL AUTO_INCREMENT,
  `Images` VARCHAR(30) NOT NULL,
  `format` INT(11) NULL DEFAULT NULL,
  `color` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`image`),
  INDEX `color` (`color` ) ,
  CONSTRAINT `images_ibfk_1`
    FOREIGN KEY (`color`)
    REFERENCES `widesign`.`colors` (`color`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `widesign`.`INVOICES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `widesign`.`INVOICES` (
  `invoice` INT(11) NOT NULL AUTO_INCREMENT,
  `customer` VARCHAR(4) NOT NULL,
  `reduction` VARCHAR(20) NULL DEFAULT NULL,
  `retour` DATE NULL DEFAULT NULL,
  `remboursement` INT(11) NULL DEFAULT NULL,
  `price` INT(11) NULL DEFAULT NULL,
  `shipping` INT(11) NULL DEFAULT NULL,
  `delivery` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`invoice`, `customer`),
  INDEX `customer` (`customer` ) ,
  INDEX `price` (`price` ) ,
  INDEX `delivery` (`delivery` ) ,
  INDEX `shipping` (`shipping` ) ,
  CONSTRAINT `invoices_ibfk_1`
    FOREIGN KEY (`customer`)
    REFERENCES `widesign`.`customers` (`customer`),
  CONSTRAINT `invoices_ibfk_2`
    FOREIGN KEY (`price`)
    REFERENCES `widesign`.`prices` (`price`),
  CONSTRAINT `invoices_ibfk_3`
    FOREIGN KEY (`delivery`)
    REFERENCES `widesign`.`deliveries` (`delivery`),
  CONSTRAINT `invoices_ibfk_4`
    FOREIGN KEY (`shipping`)
    REFERENCES `widesign`.`shippings` (`shipping`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `widesign`.`PAPIERS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `widesign`.`PAPIERS` (
  `papier` VARCHAR(40) NOT NULL,
  `nomdupapier` VARCHAR(40) NULL DEFAULT NULL,
  PRIMARY KEY (`papier`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `widesign`.`PRICES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `widesign`.`PRICES` (
  `price` INT(11) NOT NULL AUTO_INCREMENT,
  `image` INT(11) NULL DEFAULT NULL,
  `prices` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`price`),
  INDEX `image` (`image` ) ,
  CONSTRAINT `prices_ibfk_1`
    FOREIGN KEY (`image`)
    REFERENCES `widesign`.`images` (`image`))
ENGINE = InnoDB
AUTO_INCREMENT = 15
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `widesign`.`SHIPPINGS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `widesign`.`SHIPPINGS` (
  `shipping` INT(11) NOT NULL AUTO_INCREMENT,
  `shipp` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`shipping`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
