-- Mon domain

CREATE DATABASE IF NOT EXISTS immigration_consulting;

-- Mon utilisateur

CREATE USER IF NOT EXISTS 'guigma'@'localhost' IDENTIFIED BY 'etudiants_1';
GRANT ALL ON immigration_consulting.* TO 'guigma'@'localhost';

-- selectionner la base de donnees

use immigration_consulting;

-- Mes Tables
                                                                                                     
 CREATE TABLE TYPE_VISAS (
 Id_visa INT AUTO_INCREMENT,
 Type_visa VARCHAR(30) NOT NUL
 Profession VARCHAR(30) NOT NULL,
 PRIMARY KEY(Id_visa)
  );                                                                                       
    
                                                                                                   
  CREATE TABLE HONORAIRE_PAYMENTS (
  Honoraire_payment INT AUTO_INCREMENT,
  Periode Date,
  Montant INT,
  Commentaire 
  PRIMARY KEY(Honoraire_payment)
  );  
                                                                                                                                                                                                                      
                                                                                                     
  CREATE TABLE VILLE_RESIDEMCE (
  Code VARCHAR(30) NOT NULL,
  Ville_Residesnce VARCHAR(30) NOT NULL,
  Ville immigrationt VARCHAR(30) NOT NULL
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
                                                                                       
  CREATE TABLE CLIENTS (
  Id_client VARCHAR(30) NOT NULL,
  Nom VARCHAR(30) NOT NULL, 
  Prenom VARCHAR(30) NOT NULL,
  Age INT,
  Email VARCHAR(30) NOT NUL,
   );
