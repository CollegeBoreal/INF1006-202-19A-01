--



CREATE DATABASE Boubou;



-- Mon utilisateur



CREATE USER 'Abbas'@'localhost' IDENTIFIED BY 'password_1';

GRANT ALL ON Boubou.* TO 'Abbas'@'localhost';



-- selectionner la base de donnees

use Boubou;



-- Mes Tables



CREATE TABLE PAYS (
pays INT AUTO_INCREMENT,
NAME VARCHAR(30) NOT NULL,
PRIMARY KEY (pays)
  );

CREATE TABLE GENRE (
genre INT AUTO_INCREMENT,
NAME VARCHAR(30) NOT NULL,
PRIMARY KEY (genre)


  );
CREATE TABLE MODELE(
genre INT,
couleur INT,
quantite INT,
modele INT,
PRIMARY KEY (genre ,couleur ,quantite),
FOREIGN KEY(genre) 
REFERENCES GENRE(genre),
FOREIGN KEY(couleur) 
REFERENCES COULEUR(couleur),
FOREIGN KEY(quantite) 
REFERENCES QUANTITE(quantite)

);




CREATE TABLE COULEUR (
couleur INT AUTO_INCREMENT,
NAME VARCHAR(30) NOT NULL,
PRIMARY KEY (Couleur)

  );

CREATE TABLE DELAI (
delai INT AUTO_INCREMENT,
NAME VARCHAR(30) NOT NULL,
PRIMARY KEY (delai)

  );

CREATE TABLE QUANTITE (
quantite INT AUTO_INCREMENT,
NAME VARCHAR(30) NOT NULL,
PRIMARY KEY (quantite)


  );

CREATE TABLE DUREE (
DUREE INT AUTO_INCREMENT,
NAME VARCHAR(30) NOT NULL,
PRIMARY KEY (duree)

  );

CREATE TABLE AGE (
age INT AUTO_INCREMENT,
NAME VARCHAR(30) NOT NULL,
PRIMARY KEY (age)

  );

CREATE TABLE LOGISTIQUE (
logistique INT AUTO_INCREMENT,
NAME VARCHAR(30) NOT NULL,
PRIMARY KEY (logistique)

  );

CREATE TABLE PRIX (
prix INT AUTO_INCREMENT,
NAME VARCHAR(30) NOT NULL,
PRIMARY KEY (prix)

  );
  
  CREATE TABLE PAIEMENT (
paiement INT AUTO_INCREMENT,
NAME VARCHAR(30) NOT NULL,
PRIMARY KEY (paiement)
    
    );
  
  
  
  
  
  

CREATE TABLE COMMANDE (
age INT,
logistique INT,
prix INT,
genre INT,
commande INT,
PRIMARY KEY (age, logistique, prix, genre),
FOREIGN KEY(age)
REFERENCES AGE(age),
FOREIGN KEY(logistique)
REFERENCES LOGISTIQUE(logistique),
FOREIGN KEY(prix)
REFERENCES PRIX(prix),
FOREIGN KEY(genre)
REFERENCES GENRE(genre)


  );


