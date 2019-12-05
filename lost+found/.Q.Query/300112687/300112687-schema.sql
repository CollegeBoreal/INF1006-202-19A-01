-- MON de Domaine


CREATE DATABASE Assurance;

-- Mon  Utilisateur


 CREATE USER 'Assurance'@'localhost' IDENTIFIED BY 'Assurance_1';
 
 GRANT ALL ON Assurance.* TO 'Assurrance'@'localhost';
 
 -- Selectionne la base de donnees
 
 
 use Assurance 
 
 -- Mes Tables

   CREATE TABLE CLIENTS(
  client INT AUTO_INCREMENT
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
  date INT,
  PRIMARY KEY (paiement,client),
   FOREIGN KEY (client)
     REFERENCES CLIENTS(client)

 );
 
 CREATE TABLE SERVICES(
  Incendie VARCHAR(20) NOT NULL,
  voyage VARCHAR(20) NOT NULL,
  voiture VARCHAR(30) NOT NULL,
  PRIMARY KEY (service)

 );
 
 CREATE TABLE PRIX (
 prix  INT AUTO_INCREMENT,
 nom VARCHAR(30) NOT NULL,
 PRIMARY KEY (prix,client)
  FOREIGN KEY (client)
     REFERNCES CLIENTS(client)

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
code_postal VARCHAR(30) NOT NULL,
PRIMARY KEY (adresse)

 
);
