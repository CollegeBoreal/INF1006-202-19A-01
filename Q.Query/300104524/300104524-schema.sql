CREATE DATABASE IF NOT EXISTS technical_support;

CREATE USER IF NOT EXISTS 'technical_support'@'localhost' IDENTIFIED BY 'technical_support_1';
GRANT ALL ON technical_support.* TO 'technical_support'@'localhost';

use technical_support;

CREATE TABLE CLIENTS(
 client INT NOT NULL AUTO_INCREMENT,
 nom VARCHAR(30),
 prenom VARCHAR(20),
 PRIMARY KEY(client)
);

CREATE TABLE SERVICES(
service INT AUTO_INCREMENT,
BRAND VARCHAR(30) NOT NULL,
problem VARCHAR(30) NOT NULL,
description VARCHAR(120),
PRIMARY KEY(service)
);

CREATE TABLE REPAIRS(
repair INT NOT NULL AUTO_INCREMENT,
service INT,
mac_adress VARCHAR(30),
brand VARCHAR(30) NOT NULL,
PRIMARY KEY(repair),
 FOREIGN KEY(service)
   REFERENCES SERVICES(service)
);

CREATE TABLE NOTES(
archivre_num INT NOT NULL AUTO_INCREMENT,
demarche VARCHAR(120)NOT NULL,
documentation VARCHAR(120) NOT NULL,
PRIMARY KEY(archivre_num)
);

CREATE TABLE VENTES(
  vente INT NOT NULL AUTO_INCREMENT, 
  date_vente DATE,
  article VARCHAR(120),
  service INT,
  client INT,
  PRIMARY KEY(vente, client),
   FOREIGN KEY (client)
     REFERENCES CLIENTS (client),
    FOREIGN KEY (service)
     REFERENCES SERVICES(service)
);


CREATE TABLE PAYMENTS(
payment INT AUTO_INCREMENT,
article VARCHAR(30) NOT NULL,
quantity INT(10),
vente INT,
PRIMARY KEY(payment, vente),
 FOREIGN KEY(vente)
     REFERENCES VENTES(vente)
);
 
 
 
