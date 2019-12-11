-- -----------------------------------------------------
-- Schema Hijabfashion
-- -----------------------------------------------------
```sql
CREATE SCHEMA IF NOT EXISTS `Hijabfashion;
``
-- -----------------------------------------------------
-- Mon utilisateur
-- -----------------------------------------------------
```sql
CREATE USER IF NOT EXISTS 'halima'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON Hijabfashion.* TO 'halima'@'localhost';
``		
USE `Hijabfashion` ;


-- Mes tables

-- -----------------------------------------------------
-- Table Hijabfashion.ACCESSOIRES
-- -----------------------------------------------------
```sql
CREATE TABLE IF NOT EXISTS Hijabfashion.ACCESSOIRES(
  accessoire INT(11) NOT NULL AUTO_INCREMENT,
  nom VARCHAR(30) NOT NULL,
  type VARCHAR(30) NOT NULL,
  PRIMARY KEY (accessoire)
);
```

-- -----------------------------------------------------
-- Table Hijabfashion.ADRESSES
-- -----------------------------------------------------
```sql
CREATE TABLE IF NOT EXISTS Hijabfashion.ADRESSES (
  adresse INT(11) NOT NULL AUTO_INCREMENT,
  rue VARCHAR(30) NOT NULL,
  ville VARCHAR(30) NOT NULL,
  pays VARCHAR(30) NOT NULL,
  code_postal VARCHAR(30) NOT NULL,
  PRIMARY KEY (adresse)
);
```

-- -----------------------------------------------------
-- Table Hijabfashion.VENTES
-- -----------------------------------------------------
```sql
CREATE TABLE IF NOT EXISTS Hijabfashion.VENTES (
  vente INT(11) NOT NULL AUTO_INCREMENT,
  commande DATE NULL DEFAULT NULL,
  PRIMARY KEY (vente)
);
```

-- -----------------------------------------------------
-- Table Hijabfashion.PRIX
-- -----------------------------------------------------
```sql
CREATE TABLE IF NOT EXISTS Hijabfashion.PRIX (
  prix INT(11) NOT NULL AUTO_INCREMENT,
  nom VARCHAR(30) NOT NULL,
  tarif VARCHAR(30) NOT NULL,
  PRIMARY KEY (prix)
);
```

-- -----------------------------------------------------
-- Table Hijabfashion.CLIENTS
-- -----------------------------------------------------
```sql
CREATE TABLE IF NOT EXISTS Hijabfashion.CLIENTS (
  adresse INT(11) NOT NULL,
  vente INT(11) NOT NULL,
  prix INT(11) NOT NULL,
  client INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (adresse, vente, prix),
  INDEX vente (vente ASC),
  INDEX prix (prix ASC),
  CONSTRAINT CLIENTS_ibfk_1
    FOREIGN KEY (adresse)
    REFERENCES Hijabfashion.ADRESSES (adresse),
  CONSTRAINT CLIENTS_ibfk_2
    FOREIGN KEY (vente)
    REFERENCES Hijabfashion.VENTES (vente),
  CONSTRAINT CLIENTS_ibfk_3
    FOREIGN KEY (prix)
    REFERENCES Hijabfashion.PRIX (prix)
);
```
-- -----------------------------------------------------
-- Table Hijabfashion.COULEURS
-- -----------------------------------------------------
```sql
CREATE TABLE IF NOT EXISTS Hijabfashion.COULEURS (
  couleur INT(11) NOT NULL AUTO_INCREMENT,
  nom VARCHAR(30) NOT NULL,
  PRIMARY KEY (couleur))
```

-- -----------------------------------------------------
-- Table Hijabfashion.PAYS_DE_FABRICATION
-- -----------------------------------------------------
```sql
CREATE TABLE IF NOT EXISTS Hijabfashion.PAYS_DE_FABRICATION (
  pays_de_fabrication INT(11) NOT NULL AUTO_INCREMENT,
  nom VARCHAR(30) NOT NULL,
  devise VARCHAR(30) NOT NULL,
  livraison DATE NULL DEFAULT NULL,
  PRIMARY KEY (pays_de_fabrication)
);
```	       
-- -----------------------------------------------------
-- Table Hijabfashion.TAILLES
-- -----------------------------------------------------
```sql
CREATE TABLE IF NOT EXISTS Hijabfashion.TAILLES (
  taille INT(11) NOT NULL AUTO_INCREMENT,
  largeur VARCHAR(30) NOT NULL,
  longeur VARCHAR(30) NOT NULL,
  unite_de_mesure VARCHAR(30) NOT NULL,
  PRIMARY KEY (taille)
);
```
-- -----------------------------------------------------
-- Table Hijabfashion.TISSUS
-- -----------------------------------------------------
```sql
CREATE TABLE IF NOT EXISTS Hijabfashion.TISSUS (
  taille INT(11) NOT NULL,
  couleur INT(11) NOT NULL,
  accessoire INT(11) NOT NULL,
  pays_de_fabrication INT(11) NOT NULL,
  tissue INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (taille, couleur, accessoire, pays_de_fabrication),
  INDEX couleur (couleur ASC),
  INDEX accessoire (accessoire ASC),
  INDEX pays_de_fabrication (pays_de_fabrication ASC),
  CONSTRAINT TISSUS_ibfk_1
    FOREIGN KEY (taille)
    REFERENCES Hijabfashion.TAILLES (taille),
  CONSTRAINT TISSUS_ibfk_2
    FOREIGN KEY (couleur)
    REFERENCES Hijabfashion.COULEURS(couleur),
  CONSTRAINT TISSUS_ibfk_3
    FOREIGN KEY (accessoire)
    REFERENCES Hijabfashion.ACCESSOIRES (accessoire),
  CONSTRAINT TISSUS_ibfk_4
    FOREIGN KEY (pays_de_fabrication)
    REFERENCES Hijabfashion.PAYS_DE_FABRICATION (pays_de_fabrication)
);
```	       
