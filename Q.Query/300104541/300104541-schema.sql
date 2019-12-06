-- Mon domaine

CREATE DATABASE IF NOT EXISTS  Jeuxvideos; 

-- Mon User

CREATE USER IF NOT EXISTS  'romeo'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON Jeuxvideos.* TO 'romeo'@'localhost';

-- selectionner la base de donnees 


use Jeuxvideos;


-- Mes tables


CREATE TABLE CONSOLES (
  
Consoles VARCHAR (250) NOT NULL, 
console INT, 
PRIMARY KEY(console)   
);



CREATE TABLE VENTE_VIRTUELLES (
Ventes VARCHAR (250) NOT NULL,
vente_virtuelle INT,
PRIMARY KEY(vente_virtuelle) 
);



CREATE TABLE VENTE_PHYSIQUES (
Ventes VARCHAR (250) NOT NULL,
vente_physique INT,
PRIMARY KEY(vente_physique) 
);

CREATE TABLE PRICES (
price INT AUTO_INCREMENT,
console INT,
 Prices INT,
  PRIMARY KEY(price),
    FOREIGN KEY(console)
      REFERENCES CONSOLES(console)
  );

CREATE TABLE CUSTOMERS (
 customer INT AUTO_INCREMENT,
  FullName VARCHAR(20),
  PRIMARY KEY(customer)
);

CREATE TABLE SHIPPINGS (
price INT,
customer INT,
 DateDeLivraison DATE,
  PRIMARY KEY(price, customer),
    FOREIGN KEY(price)
      REFERENCES PRICES(price),
    FOREIGN KEY(customer)
      REFERENCES CUSTOMERS(customer)
  
);

CREATE TABLE DIFFUSIONS (
Diffusions VARCHAR (250) NOT NULL,
diffusion INT,
PRIMARY KEY(diffusion) 
);

CREATE TABLE JEUX (
  
Jeux_Videos VARCHAR (250) NOT NULL,
Categorie VARCHAR (250) NOT NULL,
jeux INT AUTO_INCREMENT,
 console INT,
 diffusion INT,
 PRIMARY KEY(jeux),
  FOREIGN KEY(console)
     REFERENCES CONSOLES(console),
  FOREIGN KEY(diffusion)
     REFERENCES DIFFUSIONS(diffusion)
  
);

CREATE TABLE SUPPORTS (
support INT AUTO_INCREMENT,
vente_virtuelle INT,
Supports VARCHAR(250),
vente_physique INT,
PRIMARY KEY(support),
  FOREIGN KEY(vente_physique)
     REFERENCES VENTE_PHYSIQUES(vente_physique),
  FOREIGN KEY(vente_virtuelle)
     REFERENCES VENTE_VIRTUELLES(vente_virtuelle)
);
