-- My domain
CREATE DATABASE IF NOT EXISTS hairasset;

-- My user

CREATE USER IF NOT EXISTS 'hairasset'@'localhost' IDENTIFIED BY 'Djumah9';
GRANT ALL ON hairasset.* TO 'hairasset'@'localhost';

-- selectionner la base de donnees
use hairasset;

-- My tables


CREATE TABLE CLIENTS (
  client INT AUTO_INCREMENT,
  initiale VARCHAR(30) NOT NULL,
  full_name VARCHAR(30) NOT NULL,
  PRIMARY KEY(client)
  );
  
CREATE TABLE COULEURS (
  couleur INT AUTO_INCREMENT,
  Couleurs VARCHAR(30) NOT NULL,
  PRIMARY KEY(couleur)
  );

CREATE TABLE PRODUITS (
  produit INT AUTO_INCREMENT,
  modele VARCHAR(30) NOT NULL,
  couleur INT,
  quantite INT,
  PRIMARY KEY(produit, couleur),
    FOREIGN KEY(couleur) 
     REFERENCES COULEURS(couleur)
);


CREATE TABLE PAYEMENTS (
  payement INT,
  client INT,
  produit INT,
  datedetransaction DATE,
  montant INT,
  PRIMARY KEY(payement),
  FOREIGN KEY(client) 
     REFERENCES CLIENTS(client),
  FOREIGN KEY(produit) 
     REFERENCES PRODUITS(produit)
  );
  
  -- Thanks
  
  

