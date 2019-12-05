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
 Passport VARCHAR(30) NOT NULL,
 Profession VARCHAR(35) NOT NULL,
 PRIMARY KEY(Type_visa)
  );                                                                                       
    
                                                                                                   
  CREATE TABLE HONORAIRE_PAYMENTS (
  Honoraire_payment INT AUTO_INCREMENT,
  Periode Date,
  Montant INT,
  Commentaire TEXT,
  PRIMARY KEY(Honoraire_payment)
  );  
                                                                                                                                                                                                                      
                                                                                                     
  CREATE TABLE VILLE_RESIDENCE (
  Code VARCHAR(30) NOT NULL,
  Ville_Residence VARCHAR(30) NOT NULL,
  Ville_immigration VARCHAR(30) NOT NULL
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
  Id_client INT AUTO_INCREMENT,
  Nom VARCHAR(30) NOT NULL, 
  Prenom VARCHAR(30) NOT NULL,
  Age INT,
  Email VARCHAR(30) NOT NULl,
  PRIMARY KEY(Id_client)
   );
