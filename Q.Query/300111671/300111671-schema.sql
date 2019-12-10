-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Boubou
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Boubou
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Boubou` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `Boubou` ;

-- -----------------------------------------------------
-- Table `Boubou`.`AGE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Boubou`.`AGE` (
  `age` INT(11) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`age`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Boubou`.`GENRE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Boubou`.`GENRE` (
  `genre` INT(11) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`genre`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Boubou`.`PRIX`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Boubou`.`PRIX` (
  `prix` INT(11) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`prix`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Boubou`.`COMMANDE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Boubou`.`COMMANDE` (
  `genre` INT(11) NOT NULL,
  `age` INT(11) NOT NULL,
  `prix` INT(11) NOT NULL,
  `commande` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`genre`, `age`, `prix`),
  INDEX `age` (`age` ASC) VISIBLE,
  INDEX `prix` (`prix` ASC) VISIBLE,
  CONSTRAINT `COMMANDE_ibfk_1`
    FOREIGN KEY (`genre`)
    REFERENCES `Boubou`.`GENRE` (`genre`),
  CONSTRAINT `COMMANDE_ibfk_2`
    FOREIGN KEY (`age`)
    REFERENCES `Boubou`.`AGE` (`age`),
  CONSTRAINT `COMMANDE_ibfk_3`
    FOREIGN KEY (`prix`)
    REFERENCES `Boubou`.`PRIX` (`prix`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Boubou`.`COULEUR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Boubou`.`COULEUR` (
  `couleur` INT(11) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`couleur`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Boubou`.`DELAI`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Boubou`.`DELAI` (
  `delai` INT(11) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`delai`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Boubou`.`DUREE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Boubou`.`DUREE` (
  `DUREE` INT(11) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`DUREE`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Boubou`.`LOGISTIQUE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Boubou`.`LOGISTIQUE` (
  `logistique` INT(11) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`logistique`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Boubou`.`QUANTITE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Boubou`.`QUANTITE` (
  `quantite` INT(11) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`quantite`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Boubou`.`MODELE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Boubou`.`MODELE` (
  `genre` INT(11) NOT NULL,
  `couleur` INT(11) NOT NULL,
  `quantite` INT(11) NOT NULL,
  `modele` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`genre`, `couleur`, `quantite`),
  INDEX `couleur` (`couleur` ASC) VISIBLE,
  INDEX `quantite` (`quantite` ASC) VISIBLE,
  CONSTRAINT `MODELE_ibfk_1`
    FOREIGN KEY (`genre`)
    REFERENCES `Boubou`.`GENRE` (`genre`),
  CONSTRAINT `MODELE_ibfk_2`
    FOREIGN KEY (`couleur`)
    REFERENCES `Boubou`.`COULEUR` (`couleur`),
  CONSTRAINT `MODELE_ibfk_3`
    FOREIGN KEY (`quantite`)
    REFERENCES `Boubou`.`QUANTITE` (`quantite`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Boubou`.`PAIEMENT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Boubou`.`PAIEMENT` (
  `paiement` INT(11) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`paiement`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Boubou`.`PAYS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Boubou`.`PAYS` (
  `pays` INT(11) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`pays`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
