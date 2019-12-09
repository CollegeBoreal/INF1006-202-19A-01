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
	client INT,
BRAND VARCHAR(30) NOT NULL,
 problem VARCHAR(30) NOT NULL,
description VARCHAR(120),
	PRIMARY KEY(service),
FOREIGN KEY(client)
REFERENCES CLIENTS(client)
);

CREATE TABLE REPAIRS(
repair INT NOT NULL AUTO_INCREMENT,
mac_adress VARCHAR(30),
 brand VARCHAR(30) NOT NULL,
PRIMARY KEY(repair)
);

CREATE TABLE NOTES(
archivre_num INT NOT NULL AUTO_INCREMENT,
demarche VARCHAR(120)NOT NULL,
documentation VARCHAR(120) NOT NULL,
PRIMARY KEY(archivre_num)
);

CREATE TABLE PAYMENTS(
commande_num INT NOT NULL AUTO_INCREMENT,
article VARCHAR(30) NOT NULL,
quantity INT(10),
 note INT,
PRIMARY KEY(commande_num)
);
 
 
    CREATE TABLE VENTES(
      num_vente INT NOT NULL, 
      date_vente DATE,
      article INT,
      service INT,
      client INT,
PRIMARY KEY(client, service),
       FOREIGN KEY (client)
     REFERENCES CLIENTS (client),
     FOREIGN KEY (service)
    REFERENCES SERVICES(service)
);
