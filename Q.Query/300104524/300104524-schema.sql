-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema technical_support
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema technical_support
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `technical_support` DEFAULT CHARACTER SET latin1 ;
USE `technical_support` ;

-- -----------------------------------------------------
-- Table `technical_support`.`CLIENTS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `technical_support`.`CLIENTS` (
  `client` INT(11) NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(30) NULL DEFAULT NULL,
  `prenom` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`client`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `technical_support`.`NOTES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `technical_support`.`NOTES` (
  `archivre_num` INT(11) NOT NULL AUTO_INCREMENT,
  `demarche` VARCHAR(120) NOT NULL,
  `documentation` VARCHAR(120) NOT NULL,
  PRIMARY KEY (`archivre_num`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `technical_support`.`SERVICES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `technical_support`.`SERVICES` (
  `service` INT(11) NOT NULL AUTO_INCREMENT,
  `BRAND` VARCHAR(30) NOT NULL,
  `problem` VARCHAR(30) NOT NULL,
  `description` VARCHAR(120) NULL DEFAULT NULL,
  PRIMARY KEY (`service`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `technical_support`.`VENTES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `technical_support`.`VENTES` (
  `vente` INT(11) NOT NULL AUTO_INCREMENT,
  `date_vente` DATE NULL DEFAULT NULL,
  `article` VARCHAR(120) NULL DEFAULT NULL,
  `service` INT(11) NULL DEFAULT NULL,
  `client` INT(11) NOT NULL,
  PRIMARY KEY (`vente`, `client`),
  INDEX `client` (`client` ) ,
  INDEX `service` (`service` ) ,
  CONSTRAINT `VENTES_ibfk_1`
    FOREIGN KEY (`client`)
    REFERENCES `technical_support`.`CLIENTS` (`client`),
  CONSTRAINT `VENTES_ibfk_2`
    FOREIGN KEY (`service`)
    REFERENCES `technical_support`.`SERVICES` (`service`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `technical_support`.`PAYMENTS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `technical_support`.`PAYMENTS` (
  `payment` INT(11) NOT NULL AUTO_INCREMENT,
  `article` VARCHAR(30) NOT NULL,
  `quantity` INT(10) NULL DEFAULT NULL,
  `vente` INT(11) NOT NULL,
  PRIMARY KEY (`payment`, `vente`),
  INDEX `vente` (`vente` ) ,
  CONSTRAINT `PAYMENTS_ibfk_1`
    FOREIGN KEY (`vente`)
    REFERENCES `technical_support`.`VENTES` (`vente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `technical_support`.`REPAIRS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `technical_support`.`REPAIRS` (
  `repair` INT(11) NOT NULL AUTO_INCREMENT,
  `service` INT(11) NULL DEFAULT NULL,
  `mac_adress` VARCHAR(30) NULL DEFAULT NULL,
  `brand` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`repair`),
  INDEX `service` (`service` ) ,
  CONSTRAINT `REPAIRS_ibfk_1`
    FOREIGN KEY (`service`)
    REFERENCES `technical_support`.`SERVICES` (`service`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


 
 
 
