-- Creation de la base de donnees

CREATE DATABASE IF NOT EXISTS Car_Center;

-- Creation de l'utilisateur

CREATE USER IF NOT EXISTS 'joker'@'localhost' IDENTIFIED BY 'etudiants_1';
GRANT ALL ON Car_Center.* TO 'joker'@'localhost';

-- Se diriger vers la base de donnees 
 
use Car_Center;

-- Creation des tables

CREATE TABLE SERVICES_OFFERED (
  service_offered INT AUTO_INCREMENT,
  Sale TEXT NOT NULL,
  PRIMARY KEY(service_offered)
  );
  

CREATE TABLE ORIGINS (
   origin VARCHAR(30) NOT NULL,
   Origins TEXT NOT NULL,
   PRIMARY KEY(origin)
   );
  
CREATE TABLE  ENGIN_TYPES (
  engin_type INT AUTO_INCREMENT,
  Engins VARCHAR(255) NOT NULL,
  PRIMARY KEY(engin_type)
  );
  
  
CREATE TABLE MAKES (
  make VARCHAR(30) NOT NULL,
  origin VARCHAR(30),
  Makes VARCHAR(30) NOT NULL,
  PRIMARY KEY(make, origin),
    FOREIGN KEY(origin)
      REFERENCES ORIGINS(origin)
  );

   
CREATE TABLE YEARS (
  year INT AUTO_INCREMENT,
  Years DATE,
  PRIMARY KEY(year)
  );
  
CREATE TABLE COLOURS (
   colour VARCHAR(30) NOT NULL,
   Colours VARCHAR(255) NOT NULL,
   PRIMARY KEY(colour)
   );

CREATE TABLE PRICES (
  price INT AUTO_INCREMENT,
  Prices INT NOT NULL,
  PRIMARY KEY(price)
  );
  
CREATE TABLE MODELS (
  model INT AUTO_INCREMENT,
  make VARCHAR(30),
  year INT,
  colour VARCHAR(30),
  price INT,
  Models VARCHAR(50) NOT NULL,
  PRIMARY KEY(model, price),
     FOREIGN KEY(year)
        REFERENCES YEARS(year),
     FOREIGN KEY(price)
        REFERENCES PRICES(price),
     FOREIGN KEY(make)
        REFERENCES MAKES(make),
     FOREIGN KEY(colour)
        REFERENCES COLOURS(colour)
   );  

CREATE TABLE CUSTOMERS(
  customer VARCHAR(4) NOT NULL,
  LastName VARCHAR(20),
  FirstName VARCHAR(20),
  PRIMARY KEY(customer)
);

CREATE TABLE PAYMENTS (
  payment INT AUTO_INCREMENT,
  customer VARCHAR(4),
  price INT,
  Amount DECIMAL NOT NULL DEFAULT 50000.00,
  DateOfTransaction DATE DEFAULT '2019-11-27',
  PRIMARY KEY(payment),
     FOREIGN KEY(customer)
        REFERENCES CUSTOMERS(customer),
     FOREIGN KEY(price)
        REFERENCES PRICES(price)
 );

CREATE TABLE MAINTENANCES (
  maintenance INT AUTO_INCREMENT,
  service_offered INT,
  Maintenances VARCHAR(255) NOT NULL,
  PRIMARY KEY(maintenance),
    FOREIGN KEY(service_offered)
       REFERENCES SERVICES_OFFERED(service_offered)
  );
  
-- Author: <Etienne>
