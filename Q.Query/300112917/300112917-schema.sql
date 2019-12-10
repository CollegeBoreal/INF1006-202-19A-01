-- My domain
CREATE DATABASE IF NOT EXISTS hairasset;

-- My user

CREATE USER IF NOT EXISTS 'hairasset'@'localhost' IDENTIFIED BY 'Djumah9';
GRANT ALL ON hairasset.* TO 'hairasset'@'localhost';

-- selectionner la base de donnees
use hairasset;

-- My tables


-- -----------------------------------------------------
-- Table `hairasset`.`CLIENTS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS hairasset.CLIENTS (
  client INT(11) NOT NULL AUTO_INCREMENT,
  initiale VARCHAR(30) NOT NULL,
  full_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (`client`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table hairasset.COULEURS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS hairasset.COULEURS (
  couleur INT(11) NOT NULL AUTO_INCREMENT,
  Couleurs VARCHAR(30) NOT NULL,
  PRIMARY KEY (couleur));


-- -----------------------------------------------------
-- Table `hairasset`.`PRODUITS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS hairasset.PRODUITS (
  produit INT(11) NOT NULL AUTO_INCREMENT,
  modele VARCHAR(30) NOT NULL,
  couleur INT(11) NOT NULL,
  quantite INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (produit, couleur),
  INDEX couleur (couleur),
  CONSTRAINT PRODUITS_ibfk_1
    FOREIGN KEY (couleur)
    REFERENCES hairasset.COULEURS (couleur));


-- -----------------------------------------------------
-- Table `hairasset`.`PAYEMENTS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS hairasset.PAYEMENTS (
  payement INT(11) NOT NULL,
  client INT(11) NULL DEFAULT NULL,
  produit INT(11) NULL DEFAULT NULL,
  datedetransaction DATE NULL DEFAULT NULL,
  montant INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (payement),
  INDEX client (client),
  INDEX produit (produit),
  UNIQUE INDEX payement_UNIQUE (payement),
  CONSTRAINT PAYEMENTS_ibfk_1
    FOREIGN KEY (client)
    REFERENCES hairasset.CLIENTS (client),
  CONSTRAINT PAYEMENTS_ibfk_2
    FOREIGN KEY (produit)
    REFERENCES hairasset.PRODUITS (produit));


