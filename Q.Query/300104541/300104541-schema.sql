-- Mon domaine

CREATE DATABASE IF NOT EXISTS  Jeuxvideos; 

-- Mon User

CREATE USER IF NOT EXISTS  'romeo'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON Jeuxvideos.* TO 'romeo'@'localhost';

-- selectionner la base de donnees 


use Jeuxvideos;


-- Mes tables




-- -----------------------------------------------------
-- Table Jeuxvideos.CONSOLES
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Jeuxvideos.CONSOLES (
  Consoles VARCHAR(250) NOT NULL,
  console INT(11) NOT NULL,
  PRIMARY KEY (console))
;


-- -----------------------------------------------------
-- Table Jeuxvideos.CUSTOMERS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Jeuxvideos.CUSTOMERS (
  customer INT(11) NOT NULL AUTO_INCREMENT,
  FullName VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (customer))
;


-- -----------------------------------------------------
-- Table Jeuxvideos.DIFFUSIONS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Jeuxvideos.DIFFUSIONS (
  Diffusions VARCHAR(250) NOT NULL,
  diffusion INT(11) NOT NULL,
  PRIMARY KEY (diffusion))
;


-- -----------------------------------------------------
-- Table Jeuxvideos.JEUX
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Jeuxvideos.JEUX (
  Jeux_Videos VARCHAR(250) NOT NULL,
  Categorie VARCHAR(250) NOT NULL,
  jeux INT(11) NOT NULL AUTO_INCREMENT,
  console INT(11) NULL DEFAULT NULL,
  diffusion INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (jeux),
  INDEX console (console),
  INDEX diffusion (diffusion),
  CONSTRAINT JEUX_ibfk_1
    FOREIGN KEY (console)
    REFERENCES Jeuxvideos.CONSOLES (console),
  CONSTRAINT JEUX_ibfk_2
    FOREIGN KEY (diffusion)
    REFERENCES Jeuxvideos.DIFFUSIONS (diffusion))
;


-- -----------------------------------------------------
-- Table Jeuxvideos.PRICES
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Jeuxvideos.PRICES (
  price INT(11) NOT NULL AUTO_INCREMENT,
  console INT(11) NULL DEFAULT NULL,
  Prices INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (price),
  INDEX console (console),
  CONSTRAINT PRICES_ibfk_1
    FOREIGN KEY (console)
    REFERENCES Jeuxvideos.CONSOLES (console))
;


-- -----------------------------------------------------
-- Table Jeuxvideos.SHIPPINGS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Jeuxvideos.SHIPPINGS (
  price INT(11) NOT NULL,
  customer INT(11) NOT NULL,
  DateDeLivraison DATE NULL DEFAULT NULL,
  PRIMARY KEY (price, customer),
  INDEX customer (customer),
  CONSTRAINT SHIPPINGS_ibfk_1
    FOREIGN KEY (price)
    REFERENCES Jeuxvideos.PRICES (price),
  CONSTRAINT SHIPPINGS_ibfk_2
    FOREIGN KEY (customer)
    REFERENCES Jeuxvideos.CUSTOMERS (customer))
;


-- -----------------------------------------------------
-- Table `Jeuxvideos.VENTE_PHYSIQUES
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Jeuxvideos.VENTE_PHYSIQUES (
  Ventes VARCHAR(250) NOT NULL,
  vente_physique INT(11) NOT NULL,
  PRIMARY KEY (vente_physique),
  UNIQUE INDEX VENTE_PHYSIQUEScol_UNIQUE (VENTE_PHYSIQUEScol)
;

