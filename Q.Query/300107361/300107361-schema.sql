-- Creation de la base de donnees

CREATE DATABASE IF NOT EXISTS Car_Center;

-- Creation de l'utilisateur

CREATE USER IF NOT EXISTS 'joker'@'localhost' IDENTIFIED BY 'etudiants_1';
GRANT ALL ON Car_Center.* TO 'joker'@'localhost';

-- Se diriger vers la base de donnees 
 
use Car_Center;

-- Creation des tables
  
  
-- -----------------------------------------------------
-- Table Car_Center.COLOURS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Car_Center.COLOURS (
  colour VARCHAR(30) NOT NULL,
  Colours VARCHAR(255) NOT NULL,
  PRIMARY KEY (colour)
);

-- -----------------------------------------------------
-- Table Car_Center.CUSTOMERS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Car_Center.CUSTOMERS (
  customer VARCHAR(4) NOT NULL,
  LastName VARCHAR(20) NULL DEFAULT NULL,
  FirstName VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (customer)
);


-- -----------------------------------------------------
-- Table Car_Center.ENGIN_TYPES
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Car_Center.ENGIN_TYPES (
  engin_type INT(11) NOT NULL AUTO_INCREMENT,
  Engins VARCHAR(255) NOT NULL,
  PRIMARY KEY (engin_type)
);


-- -----------------------------------------------------
-- Table Car_Center.SERVICES_OFFERED
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Car_Center.SERVICES_OFFERED (
  service_offered INT(11) NOT NULL AUTO_INCREMENT,
  Sale TEXT NOT NULL,
  PRIMARY KEY (service_offered)
);


-- -----------------------------------------------------
-- Table Car_Center.MAINTENANCES
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_Center`.`MAINTENANCES` (
  `maintenance` INT(11) NOT NULL AUTO_INCREMENT,
  `service_offered` INT(11) NULL DEFAULT NULL,
  `Maintenances` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`maintenance`),
  INDEX `service_offered` (`service_offered` ASC) VISIBLE,
  CONSTRAINT `MAINTENANCES_ibfk_1`
    FOREIGN KEY (`service_offered`)
    REFERENCES `Car_Center`.`SERVICES_OFFERED` (`service_offered`)
);


-- -----------------------------------------------------
-- Table `Car_Center`.`ORIGINS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_Center`.`ORIGINS` (
  `origin` VARCHAR(30) NOT NULL,
  `Origins` TEXT NOT NULL,
  PRIMARY KEY (`origin`),
  UNIQUE INDEX `origin_UNIQUE` (`origin` ASC) VISIBLE);


-- -----------------------------------------------------
-- Table `Car_Center`.`MAKES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_Center`.`MAKES` (
  `make` VARCHAR(30) NOT NULL,
  `origin` VARCHAR(30) NOT NULL,
  `Makes` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`make`, `origin`),
  INDEX `origin` (`origin` ASC) VISIBLE,
  CONSTRAINT `MAKES_ibfk_1`
    FOREIGN KEY (`origin`)
    REFERENCES `Car_Center`.`ORIGINS` (`origin`)
);

-- -----------------------------------------------------
-- Table `Car_Center`.`YEARS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_Center`.`YEARS` (
  `year` INT(11) NOT NULL AUTO_INCREMENT,
  `Years` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`year`)
);


-- -----------------------------------------------------
-- Table `Car_Center`.`PRICES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_Center`.`PRICES` (
  `price` INT(11) NOT NULL AUTO_INCREMENT,
  `Prices` INT(11) NOT NULL,
  PRIMARY KEY (`price`)
);


-- -----------------------------------------------------
-- Table `Car_Center`.`MODELS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_Center`.`MODELS` (
  `model` INT(11) NOT NULL AUTO_INCREMENT,
  `make` VARCHAR(30) NULL DEFAULT NULL,
  `year` INT(11) NULL DEFAULT NULL,
  `colour` VARCHAR(30) NULL DEFAULT NULL,
  `price` INT(11) NOT NULL,
  `Models` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`model`, `price`),
  INDEX `year` (`year` ASC) VISIBLE,
  INDEX `price` (`price` ASC) VISIBLE,
  INDEX `make` (`make` ASC) VISIBLE,
  INDEX `colour` (`colour` ASC) VISIBLE,
  CONSTRAINT `MODELS_ibfk_1`
    FOREIGN KEY (`year`)
    REFERENCES `Car_Center`.`YEARS` (`year`),
  CONSTRAINT `MODELS_ibfk_2`
    FOREIGN KEY (`price`)
    REFERENCES `Car_Center`.`PRICES` (`price`),
  CONSTRAINT `MODELS_ibfk_3`
    FOREIGN KEY (`make`)
    REFERENCES `Car_Center`.`MAKES` (`make`),
  CONSTRAINT `MODELS_ibfk_4`
    FOREIGN KEY (`colour`)
    REFERENCES `Car_Center`.`COLOURS` (`colour`)
);


-- -----------------------------------------------------
-- Table `Car_Center`.`PAYMENTS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_Center`.`PAYMENTS` (
  `payment` INT(11) NOT NULL AUTO_INCREMENT,
  `customer` VARCHAR(4) NULL DEFAULT NULL,
  `price` INT(11) NULL DEFAULT NULL,
  `Amount` DECIMAL(10,0) NOT NULL DEFAULT '50000',
  `DateOfTransaction` DATE NULL DEFAULT '2019-11-27',
  PRIMARY KEY (`payment`),
  INDEX `customer` (`customer` ASC) VISIBLE,
  INDEX `price` (`price` ASC) VISIBLE,
  CONSTRAINT `PAYMENTS_ibfk_1`
    FOREIGN KEY (`customer`)
    REFERENCES `Car_Center`.`CUSTOMERS` (`customer`),
  CONSTRAINT `PAYMENTS_ibfk_2`
    FOREIGN KEY (`price`)
    REFERENCES `Car_Center`.`PRICES` (`price`)
);

-- Author: <Etienne>
