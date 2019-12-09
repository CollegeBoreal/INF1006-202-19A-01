-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema magasin
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema magasin
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `magasin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `magasin` ;

-- -----------------------------------------------------
-- Table `magasin`.`CLIENTS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `magasin`.`CLIENTS` (
  `client` INT(11) NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(30) NULL DEFAULT NULL,
  `prenom` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`client`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `magasin`.`COULEURS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `magasin`.`COULEURS` (
  `couleur` INT(11) NOT NULL AUTO_INCREMENT,
  `Couleurs` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`couleur`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `magasin`.`MARCHANDISES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `magasin`.`MARCHANDISES` (
  `marchandise` INT(11) NOT NULL AUTO_INCREMENT,
  `Marchandises` VARCHAR(20) NULL DEFAULT NULL,
  `description_marchandise` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`marchandise`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `magasin`.`MARQUES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `magasin`.`MARQUES` (
  `marque` INT(11) NOT NULL AUTO_INCREMENT,
  `Marques` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`marque`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `magasin`.`PaysDeFabrications`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `magasin`.`PaysDeFabrications` (
  `paysdefabrication` INT(11) NOT NULL AUTO_INCREMENT,
  `Pays` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`paysdefabrication`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `magasin`.`MODELS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `magasin`.`MODELS` (
  `model` INT(11) NOT NULL,
  `marque` INT(11) NOT NULL,
  `couleur` INT(11) NULL DEFAULT NULL,
  `paysdefabrication` INT(11) NULL DEFAULT NULL,
  `Models` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`model`, `marque`),
  INDEX `marque` (`marque` ASC) VISIBLE,
  INDEX `paysdefabrication` (`paysdefabrication` ASC) VISIBLE,
  INDEX `couleur` (`couleur` ASC) VISIBLE,
  CONSTRAINT `MODELS_ibfk_1`
    FOREIGN KEY (`marque`)
    REFERENCES `magasin`.`MARQUES` (`marque`),
  CONSTRAINT `MODELS_ibfk_2`
    FOREIGN KEY (`paysdefabrication`)
    REFERENCES `magasin`.`PaysDeFabrications` (`paysdefabrication`),
  CONSTRAINT `MODELS_ibfk_3`
    FOREIGN KEY (`couleur`)
    REFERENCES `magasin`.`COULEURS` (`couleur`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `magasin`.`VENTES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `magasin`.`VENTES` (
  `vente` INT(11) NOT NULL AUTO_INCREMENT,
  `DateDeVente` DATE NULL DEFAULT NULL,
  `marchandise` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`vente`),
  INDEX `marchandise` (`marchandise` ASC) VISIBLE,
  CONSTRAINT `VENTES_ibfk_1`
    FOREIGN KEY (`marchandise`)
    REFERENCES `magasin`.`MARCHANDISES` (`marchandise`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `magasin`.`PAYMENTS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `magasin`.`PAYMENTS` (
  `payment` INT(11) NOT NULL AUTO_INCREMENT,
  `vente` INT(11) NULL DEFAULT NULL,
  `client` INT(11) NOT NULL,
  `Montant` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`payment`, `client`),
  INDEX `vente` (`vente` ASC) VISIBLE,
  INDEX `client` (`client` ASC) VISIBLE,
  CONSTRAINT `PAYMENTS_ibfk_1`
    FOREIGN KEY (`vente`)
    REFERENCES `magasin`.`VENTES` (`vente`),
  CONSTRAINT `PAYMENTS_ibfk_2`
    FOREIGN KEY (`client`)
    REFERENCES `magasin`.`CLIENTS` (`client`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `magasin`.`PRICES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `magasin`.`PRICES` (
  `price` INT(11) NOT NULL AUTO_INCREMENT,
  `model` INT(11) NOT NULL,
  `Prices` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`price`, `model`),
  INDEX `model` (`model` ASC) VISIBLE,
  CONSTRAINT `PRICES_ibfk_1`
    FOREIGN KEY (`model`)
    REFERENCES `magasin`.`MODELS` (`model`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
