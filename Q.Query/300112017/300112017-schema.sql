-- Mon domaine
		                                CREATE DATABASE magasin;
		
	

		-- Mon utilisateur
		
	

		
	

		CREATE USER 'magasin'@'localhost' IDENTIFIED BY 'etudiants_1';
		GRANT ALL ON magasin.* TO 'magasin'@'localhost';
		
	

		-- selectionner la base de donnees
		use magasin;
		
	

		
	

		-- Mes Tables
			 CREATE TABLE clients(
		num_client INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
			     nom VARCHAR(30),
			    prenom VARCHAR(20)
			    );
			CREATE TABLE marchandises(
			       num_marchandise INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
			       nom_marchandise VARCHAR(20),
			       prix_marchandise INT(20) NOT NULL,
			       description_marchandise TEXT
			      );
			CREATE TABLE payments(
			          nom VARCHAR(30) NOT NULL, 
			          note INT
			);
			CREATE TABLE couleurs(
			          nom VARCHAR(30) NOT NULL, 
			          note INT
			);
			CREATE TABLE marques(
			          nom VARCHAR(30) NOT NULL, 
			          note INT
			 ); 
		
	                  CREATE TABLE ventes(
	      num_vente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	      date_vente DATE,
	      marchandise_num INT,
	      client_num INT,
	       FOREIGN KEY (marchandise_num) REFERENCES marchandises (num_marchandise),
	     FOREIGN KEY (client_num) REFERENCES clients (num_client)
	     );
