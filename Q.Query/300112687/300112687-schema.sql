-- MON de Domaine


CREATE DATABASE IF NOT EXISTS Assurance;

-- Mon  Utilisateur


 CREATE USER IF NOT EXISTS 'Assurance'@'localhost' IDENTIFIED BY 'Assurance_1';
 
 GRANT ALL ON Assurance.* TO 'Assurance'@'localhost';
 
 -- Selectionne la base de donnees
 
 
 use Assurance 
 
 -- Mes Tables

  
  CREATE TABLE CLIENTS(
   client INT AUTO_INCREMENT,
   name VARCHAR(30) NOT NULL,
    num INT, 
    PRIMARY KEY (client)
    
 );
 
 
 CREATE TABLE ABONNEMENT (
 nom  VARCHAR(30) NOT NULL,
 abonnement VARCHAR(30) NOT NULL,
 PRIMARY KEY (abonnement)
 );
 
 
 CREATE TABLE PAIEMENT(
  paiement INT AUTO_INCREMENT,
  nom  VARCHAR(40) NOT NULL, 
  date DATE,
  client INT,
  PRIMARY KEY (paiement,client),
   FOREIGN KEY (client)
     REFERENCES CLIENTS(client)
 );
 
 CREATE TABLE SERVICES(
  service INT AUTO_INCREMENT,
  Incendie VARCHAR(20) NOT NULL,
  voyage VARCHAR(20) NOT NULL,
  voiture VARCHAR(30) NOT NULL,
  PRIMARY KEY (service)
 );
 
 CREATE TABLE PRIX (
 prix  INT AUTO_INCREMENT,
 price INT,
 client INT,
 PRIMARY KEY (prix,client),
  FOREIGN KEY (client)
     REFERENCES CLIENTS(client)
 );
CREATE TABLE VENTES(
vente INT AUTO_INCREMENT,
Abonnement VARCHAR(30) NOT NULL,
PRIMARY KEY (vente)
);
CREATE TABLE ADRESSES(
 adresse INT AUTO_INCREMENT,
rue VARCHAR(30) NOT NULL,
ville VARCHAR(30) NOT NULL,
pays VARCHAR(30) NOT NULL,
 client INT,
code_postal VARCHAR(30) NOT NULL,
PRIMARY KEY (adresse,client),
 FOREIGN KEY (client)
     REFERENCES CLIENTS(client)
 
);
