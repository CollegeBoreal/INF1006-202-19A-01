-- -----------------------------------------------------
-- Schema etudiants
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `etudiants`;

-- -----------------------------------------------------
-- Mon utilisateur
-- -----------------------------------------------------
CREATE USER IF NOT EXISTS 'etudiants'@'localhost' IDENTIFIED BY 'etudiants_1';
GRANT ALL ON etudiants.* TO 'etudiants'@'localhost';

USE `etudiants` ;

-- -----------------------------------------------------
-- Table `etudiants`.`DEVOIRS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `etudiants`.`DEVOIRS` (
  `devoir` INT(11) NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(30) NOT NULL,
  `evaluation` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`devoir`)
);


-- -----------------------------------------------------
-- Table `etudiants`.`PROGRAMMES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `etudiants`.`PROGRAMMES` (
  `programme` INT(11) NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(30) NOT NULL,
  `nombre_annee` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`programme`)
);


-- -----------------------------------------------------
-- Table `etudiants`.`ETUDIANTS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `etudiants`.`ETUDIANTS` (
  `etudiant` INT(11) NOT NULL AUTO_INCREMENT,
  `initiale` VARCHAR(30) NOT NULL,
  `nom` VARCHAR(30) NOT NULL,
  `programme` INT(11) NULL DEFAULT NULL,
  `age` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`etudiant`),
  INDEX `programme` (`programme` ASC) VISIBLE,
  CONSTRAINT `ETUDIANTS_ibfk_1`
    FOREIGN KEY (`programme`)
    REFERENCES `etudiants`.`PROGRAMMES` (`programme`)
);


-- -----------------------------------------------------
-- Table `etudiants`.`NOTES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `etudiants`.`NOTES` (
  `etudiant` INT(11) NOT NULL DEFAULT '0',
  `devoir` INT(11) NOT NULL DEFAULT '0',
  `note` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`etudiant`, `devoir`),
  INDEX `devoir` (`devoir` ASC) VISIBLE,
  CONSTRAINT `NOTES_ibfk_1`
    FOREIGN KEY (`etudiant`)
    REFERENCES `etudiants`.`ETUDIANTS` (`etudiant`),
  CONSTRAINT `NOTES_ibfk_2`
    FOREIGN KEY (`devoir`)
    REFERENCES `etudiants`.`DEVOIRS` (`devoir`)
); 

  -- A vous de jouer

  
