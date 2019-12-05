-- Mon domain

CREATE DATABASE IF NOT EXISTS immigration_consulting;

-- Mon utilisateur

CREATE USER IF NOT EXISTS 'guigma'@'localhost' IDENTIFIED BY 'etudiants_1';
GRANT ALL ON immigration_consulting.* TO 'guigma'@'localhost';

-- selectionner la base de donnees

use immigration_consulting;

-- Mes Tables
                                                                                                     
 CREATE TABLE TYPE_VISAS (
 Type_visa INT AUTO_INCREMENT,
 Libeles VARCHAR(30) NOT NULL,
 Date_expiration Date,
 Age INT,
 PRIMARY KEY(Type_visa)
  );                                                                                       
    
    
                                                                                                     
  CREATE TABLE HONORAIRE_PAYMENTS (
  Honoraire_payment INT AUTO_INCREMENT,
  Libeles  VARCHAR(30) NOT NULL,
  Montant INT,
  PRIMARY KEY(Honoraire_payment)
  );  
                                                                                                                                                                                                                      
                                                                                                     
  CREATE TABLE CLIENTS (
  Id_clients INT AUTO_INCREMENT,
  Nom VARCHAR(30) NOT NULL,
  Prenom VARCHAR(30) NOT NULL,
  email VARCHAR(30) NOT NULL,
  Sexe CHAR(1),
  PRIMARY KEY (Id_clients)
   );
  
                                                                                                     
  CREATE TABLE TYPE_SERVICES (
  Type_visa INT,
  Honoraire_payment INT,
  Type_service VARCHAR(30) NOT NULL,
  PRIMARY KEY(Type_visa, Honoraire_payment),
  FOREIGN KEY(Type_visa) 
     REFERENCES TYPE_VISAS(Type_visa),
  FOREIGN KEY( Honoraire_payment) 
     REFERENCES HONORAIRE_PAYMENTS (Honoraire_payment)
  );
                                                                                       
 
