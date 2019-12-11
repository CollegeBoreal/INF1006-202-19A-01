-- MON de Domaine


CREATE DATABASE IF NOT EXISTS Assurance;

-- Mon  Utilisateur


 CREATE USER IF NOT EXISTS 'Assurance'@'localhost' IDENTIFIED BY 'Assurance_1';
 
 GRANT ALL ON Assurance.* TO 'Assurance'@'localhost';
 
 -- Selectionne la base de donnees
 
 
 use Assurance 
 
 -- Mes Tables

  
-- -----------------------------------------------------
-- Table Assurance . CLIENTS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS  Assurance . CLIENTS  (
   client  INT(11) NOT NULL AUTO_INCREMENT,
   name  VARCHAR(30) NOT NULL,
   num  INT(11) NULL DEFAULT NULL,
  PRIMARY KEY ( client ))
;


-- -----------------------------------------------------
-- Table  Assurance . ABONNEMENT 
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS  Assurance . ABONNEMENT  (
   nom  VARCHAR(30) NOT NULL,
   abonnement  VARCHAR(30) NOT NULL,
   client  INT(11) NULL DEFAULT NULL,
  PRIMARY KEY ( abonnement ),
  INDEX  client  ( client ) ,
  CONSTRAINT  ABONNEMENT_ibfk_1 
    FOREIGN KEY ( client )
    REFERENCES Assurance . CLIENTS  ( client ))
;


-- -----------------------------------------------------
-- Table  Assurance . ADRESSES
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS  Assurance . ADRESSES  (
   adresse  INT(11) NOT NULL AUTO_INCREMENT,
   rue  VARCHAR(30) NOT NULL,
   ville  VARCHAR(30) NOT NULL,
   pays  VARCHAR(30) NOT NULL,
   client  INT(11) NOT NULL,
   code_postal  VARCHAR(30) NOT NULL,
  PRIMARY KEY ( adresse ,  client ),
  INDEX  client  ( client ) ,
  CONSTRAINT  ADRESSES_ibfk_1 
    FOREIGN KEY ( client )
    REFERENCES  Assurance . CLIENTS ( client ))



-- -----------------------------------------------------
-- Table  Assurance . VENTES 
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS  Assurance . VENTES  (
   vente  INT(11) NOT NULL AUTO_INCREMENT,
   Abonnement  VARCHAR(30) NOT NULL,
  PRIMARY KEY ( vente ))


-- -----------------------------------------------------
-- Table Assurance . PAIEMENT 
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS  Assurance . PAIEMENT  (
   paiement  INT(11) NOT NULL AUTO_INCREMENT,
   nom VARCHAR(40) NOT NULL,
   date  DATE NULL DEFAULT NULL,
   vente  INT(11) NULL DEFAULT NULL,
   client  INT(11) NOT NULL,
  PRIMARY KEY ( paiement ,  client ),
  INDEX  client  ( client ) ,
  INDEX  vente  ( vente  ) ,
  CONSTRAINT  PAIEMENT_ibfk_1
    FOREIGN KEY ( client )
    REFERENCES  Assurance . CLIENTS  ( client ),
  CONSTRAINT  PAIEMENT_ibfk_2 
    FOREIGN KEY ( vente )
    REFERENCES  Assurance . VENTES  ( vente ))


-- -----------------------------------------------------
-- Table  Assurance . PRIX 
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS  Assurance . PRIX  (
   prix  INT(11) NOT NULL AUTO_INCREMENT,
   price  INT(11) NULL DEFAULT NULL,
   client  INT(11) NOT NULL,
  PRIMARY KEY ( prix , client ),
  INDEX  client  ( client ),
  CONSTRAINT  PRIX_ibfk_1 
    FOREIGN KEY ( client )
    REFERENCES  Assurance . CLIENTS  ( client ))



-- -----------------------------------------------------
-- Table  Assurance . SERVICES 
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS  Assurance . SERVICES  (
  service  INT(11) NOT NULL AUTO_INCREMENT,
  Incendie  VARCHAR(20) NOT NULL,
  voyage  VARCHAR(20) NOT NULL,
  voiture  VARCHAR(30) NOT NULL,
  PRIMARY KEY ( service ),
  UNIQUE INDEX  service_UNIQUE  ( service  ) )
;
