-- Mon domaine

CREATE DATABASE IF NOT EXISTS  Jeuxvideos; 

-- Mon User

CREATE USER IF NOT EXISTS  'romeo'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON Jeuxvideos.* TO 'romeo'@'localhost';

-- selectionner la base de donnees 


use Jeuxvideos;


-- Mes tables


CREATE TABLE CONSOLES (
  
Consoles VARCHAR (4) NOT NULL, 
console INT, 
PRIMARY KEY(console)   
);



CREATE TABLE VENTE_VIRTUELLES (
Ventes VARCHAR (2) NOT NULL,
vente_virtuelle INT,
PRIMARY KEY(vente_virtuelle) 
);



CREATE TABLE VENTE_PHYSIQUES (
Ventes VARCHAR (3) NOT NULL,
vente_physique INT,
PRIMARY KEY(vente_physique) 
);



CREATE TABLE DIFFUSIONS (
Diffusion VARCHAR (2) NOT NULL,
diffusion INT,
PRIMARY KEY(diffusion) 
);

CREATE TABLE JEUX (
  
Jeux VARCHAR (4) NOT NULL,
categorie VARCHAR (4) NOT NULL,
jeux INT,
 console INT,
 diffusion INT,
 PRIMARY KEY(jeux),
  FOREIGN KEY(console)
     REFERENCES CONSOLES(console),
  FOREIGN KEY(diffusion)
     REFERENCE DIFFUSIONS(diffusion)
  
);

CREATE TABLE SUPPORTS (
support INT,
vente_virtuelle INT,
vente_physique INT,
PRIMARY KEY(support),
  FOREIGN KEY(vente_physique)
     REFERENCES VENTE_PHYSIQUES(vente_physique),
  FOREIGN KEY(vente_virtuelle)
     REFERENCES VENTE_VIRTUELLES(vente_virtuelle)
);
