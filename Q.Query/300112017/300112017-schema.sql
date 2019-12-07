-- Mon domaine


CREATE DATABASE IF NOT EXISTS magasin;
		
	

-- Mon utilisateur


CREATE USER IF NOT EXISTS 'magasin'@'localhost' IDENTIFIED BY 'etudiants_1';
GRANT ALL ON magasin.* TO 'magasin'@'localhost';
		

-- selectionner la base de donnees


use magasin;
		
	

-- Mes Tables

CREATE TABLE MARCHANDISES (
  marchandise INT NOT NULL AUTO_INCREMENT,
  Marchandises VARCHAR(20),
  description_marchandise TEXT,
  PRIMARY KEY(marchandise)
);


CREATE TABLE PaysDeFabrications (
  paysdefabrication INT AUTO_INCREMENT,
  Pays VARCHAR(30),
  PRIMARY KEY (paysdefabrication)
);

			
CREATE TABLE COULEURS (
  couleur INT AUTO_INCREMENT, 
  Couleurs VARCHAR(30),
  PRIMARY KEY(couleur)
);
		

CREATE TABLE MARQUES (			       
  marque INT AUTO_INCREMENT, 
  Marques VARCHAR(30),
  PRIMARY KEY(marque)			
 ); 

CREATE TABLE MODELS (
  model INT,
  marque INT,
  couleur INT,
  paysdefabrication INT,
  Models VARCHAR (30),
  PRIMARY KEY(model, marque),
    FOREIGN KEY(marque)
       REFERENCES MARQUES(marque),
    FOREIGN KEY(paysdefabrication)
       REFERENCES PaysDeFabrications(paysdefabrication),
    FOREIGN KEY(couleur)
       REFERENCES COULEURS(couleur)
);		


CREATE TABLE PRICES (
 price INT AUTO_INCREMENT,
 model INT,
 Prices DOUBLE,
 PRIMARY KEY(price, model),
    FOREIGN KEY(model)
       REFERENCES MODELS(model)
);


CREATE TABLE CLIENTS (
  client INT AUTO_INCREMENT,
  nom VARCHAR(30),
  prenom VARCHAR(20),
  PRIMARY KEY(client)
);

	                  
CREATE TABLE VENTES (
   vente INT NOT NULL AUTO_INCREMENT, 
   DateDeVente DATE,
   marchandise INT,
   client INT,
   PRIMARY KEY(vente),
     FOREIGN KEY(marchandise)
       REFERENCES MARCHANDISES(marchandise),
     FOREIGN KEY(client) 
       REFERENCES CLIENTS(client)
);


CREATE TABLE PAYMENTS (
  payment INT NOT NULL AUTO_INCREMENT, 
  vente INT,
  client INT,
  Montant DOUBLE,
  PRIMARY KEY(payment, client),
    FOREIGN KEY(vente)
      REFERENCES VENTES(vente),
    FOREIGN KEY(client)
      REFERENCES CLIENTS(client)
);
 
