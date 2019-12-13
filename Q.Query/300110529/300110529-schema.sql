
-- Mon domaine

CREATE DATABASE Carte_graphique;

-- Mon utilisateur

CREATE USER 'Carte_graphique'@'localhost' IDENTIFIED BY 'Carte_graphique';
GRANT ALL ON Carte_graphique.* TO 'Carte_graphique'@'localhost';


-- selectionner la base de donnees

use Carte_graphique;


-- Mes Tables




 CREATE TABLE VENTES (idvente INT NOT NULL AUTO_INCREMENT,  
		      Num_vente VARCHAR(30) NOT NULL,  date_vente Date,  
		      PRIMARY KEY(idvente)      );


 CREATE TABLE CLIENTS (Idclient INT NOT NULL AUTO_INCREMENT,
		       Nom_client VARCHAR(30) NOT NULL, Ville VARCHAR(30) NOT NULL, 
		       tlphone  INT,
                       PRIMARY KEY(IDclient)                    
		      );
		      
		      

CREATE TABLE MARCHANDISES ( marchandise INT NOT NULL AUTO_INCREMENT, 
			   date Date,  
			   nom_marchandise VARCHAR(30) NOT NULL,
			   prix INT,
                           description_marchandise VARCHAR(30), 
			   PRIMARY KEY(marchandise)   
			  );
  
  
  
CREATE TABLE PAYMENT (Idclient INT,
			      marchandise INT,
			      Idvente INT,
			      payment INT, 
			      PRIMARY KEY (Idclient, marchandise, idvente), 
			      FOREIGN KEY(idclient) 
			      REFERENCES CLIENTS(Idclient),
			      FOREIGN KEY(marchandise) 
			      REFERENCES MARCHANDISES(marchandise),
			      FOREIGN KEY(idvente) 
			      REFERENCES VENTES(idvente)  
			     );

