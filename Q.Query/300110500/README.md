
# :pushpin: ma capture immigration consulting


![image](image.png)

## :pushpin: Mes requetes sql

### :one: 	Imprimer tous les enregistrements de la table TYPE_VISAS\

select * from TYPE_VISAS;

### :two: Trier tous les enregistrements  de la table CLIENTS  par age

select * from CLIENTS order by Age;

### :three:Imprimer tous les paiements d'honoraire dont le montant est superieur a 500 $

select * from HONORAIRE_PAYMENTS where Montant >500;

### :four: Imprimer le montant total  des honoraires encaisses

SELECT SUM(Montant)
FROM HONORAIRE_PAYMENTS;

### :five: 

select * from HONORAIRE_PAYMENTS
join TYPE_VISAS using (Honoraire_payment)
join TYPE_SERVICES using (Type_service)
where TYPE_SERVICES.Type_visa = '3';

#### :six: EXPLAIN

EXPLAIN select * from HONORAIRE_PAYMENTS
join TYPE_VISAS using (Honoraire_payment)
join TYPE_SERVICES using (Type_service)
where TYPE_SERVICES.Type_visa = '3';

### :les contaraintes:
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema immigration_consulting
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema immigration_consulting
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `immigration_consulting` DEFAULT CHARACTER SET latin1 ;
USE `immigration_consulting` ;

-- -----------------------------------------------------
-- Table `immigration_consulting`.`CLIENTS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `immigration_consulting`.`CLIENTS` (
  `Id_client` INT(11) NOT NULL AUTO_INCREMENT,
  `Nom` VARCHAR(30) NOT NULL,
  `Prenom` VARCHAR(30) NOT NULL,
  `Age` INT(11) NULL DEFAULT NULL,
  `Email` VARCHAR(30) NOT NULL,
  `CLIENTScol` VARCHAR(45) NULL,
  PRIMARY KEY (`Id_client`),
  UNIQUE INDEX `Id_client_UNIQUE` (`Id_client` ASC) VISIBLE,
  UNIQUE INDEX `Prenom_UNIQUE` (`Prenom` ASC) VISIBLE,
  UNIQUE INDEX `Age_UNIQUE` (`Age` ASC) VISIBLE,
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC) VISIBLE,
  UNIQUE INDEX `CLIENTScol_UNIQUE` (`CLIENTScol` ASC) VISIBLE,
  UNIQUE INDEX `Nom_UNIQUE` (`Nom` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 252
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `immigration_consulting`.`HONORAIRE_PAYMENTS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `immigration_consulting`.`HONORAIRE_PAYMENTS` (
  `Honoraire_payment` INT(11) NOT NULL AUTO_INCREMENT,
  `Periode` DATE NULL DEFAULT NULL,
  `Montant` INT(11) NULL DEFAULT NULL,
  `Commentaire` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`Honoraire_payment`))
ENGINE = InnoDB
AUTO_INCREMENT = 106
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `immigration_consulting`.`TYPE_VISAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `immigration_consulting`.`TYPE_VISAS` (
  `Type_visa` INT(11) NOT NULL AUTO_INCREMENT,
  `Passport` VARCHAR(30) NOT NULL,
  `Profession` VARCHAR(35) NOT NULL,
  PRIMARY KEY (`Type_visa`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `immigration_consulting`.`TYPE_SERVICES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `immigration_consulting`.`TYPE_SERVICES` (
  `Type_visa` INT(11) NOT NULL,
  `Honoraire_payment` INT(11) NOT NULL,
  `Type_service` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`Type_visa`, `Honoraire_payment`),
  INDEX `Honoraire_payment` (`Honoraire_payment,
  CONSTRAINT `TYPE_SERVICES_ibfk_1`
    FOREIGN KEY (`Type_visa`)
    REFERENCES `immigration_consulting`.`TYPE_VISAS` (`Type_visa`),
  CONSTRAINT `TYPE_SERVICES_ibfk_2`
    FOREIGN KEY (`Honoraire_payment`)
    REFERENCES `immigration_consulting`.`HONORAIRE_PAYMENTS` (`Honoraire_payment`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `immigration_consulting`.`VILLE_RESIDENCE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `immigration_consulting`.`VILLE_RESIDENCE` (
  `Code` VARCHAR(30) NOT NULL,
  `Ville_Residence` VARCHAR(30) NOT NULL,
  `Ville_immigration` VARCHAR(30) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


