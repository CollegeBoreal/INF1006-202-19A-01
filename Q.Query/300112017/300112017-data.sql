-- Dans le domaine

use magasin;

-- Données de la table clients

INSERT INTO clients ( num_client, nom, prenom ) VALUES ( 1, 'Jean', 'BLANCHART');
INSERT INTO clients ( num_client, nom, prenom ) VALUES ( 2, 'Orden', 'Brice');
INSERT INTO clients ( num_client, nom, prenom ) VALUES ( 3, 'Franck', 'BLANCHART');
INSERT INTO clients ( num_client, nom, prenom ) VALUES ( 4, 'ABDEL', 'BLANCHART');
INSERT INTO clients ( num_client, nom, prenom ) VALUES ( 5, 'Shams', 'BLANCHART');
INSERT INTO clients ( num_client, nom, prenom ) VALUES ( 6, 'jeanne', 'BLANCHART');
INSERT INTO clients ( num_client, nom, prenom ) VALUES ( 7, 'francine', 'BLANCHART');
INSERT INTO clients ( num_client, nom, prenom ) VALUES ( 8, 'jacques','BLANCHART');
INSERT INTO clients ( num_client, nom, prenom ) VALUES ( 9, 'Evelyne', 'BLANCHART');

-- Données de la table marchandises

INSERT INTO marchandises ( num_marchandise,nom_marchandise,prix_marchandise,description_marchandise  ) VALUES ( 18, 'Routiers', $1000,'Garantie de 3 ans, kilometrage illimite sur toutes les unites');
INSERT INTO marchandises ( num_marchandise,nom_marchandise,prix_marchandise,description_marchandise  )  VALUES ( 48, 'roadsters', $8000,'Garantie de 3 ans, kilometrage illimite sur toutes les unites'9);
INSERT INTO marchandises ( num_marchandise,nom_marchandise,prix_marchandise,description_marchandise  ) VALUES ( 13, 'Sportives', $9000,'Garantie de 3 ans, kilometrage illimite sur toutes les unites');

-- Données de la table payments

INSERT INTO PAYMENTS ( nom ) VALUES ( 'Jean' );

-- Données de la table couleurs

INSERT INTO Couleurs ( nom ) VALUES ( 'Bleu' );
INSERT INTO Couleurs ( nom ) VALUES ( 'noir' );
INSERT INTO Couleurs ( nom ) VALUES ( 'gris' ); 
 
 -- Données de la table marques
 
 INSERT INTO Marques ( nom ) VALUES ( 'BMW' );
 INSERT INTO Marques ( nom ) VALUES ( 'HONDA' );
 INSERT INTO Marques ( nom ) VALUES ( 'YMAHA' );
 
 Données de la table ventes

INSERT INTO ventes ( num_vente, date_vente, marchandise_num,client_num ) VALUES ( 1, 2012, 13, 1234567);
INSERT INTO ventes ( num_vente, date_vente, marchandise_num,client_num ) VALUES ( 2, 2014, 58, 4567567);
INSERT INTO ventes ( num_vente, date_vente, marchandise_num,client_num ) VALUES ( 23, 2016, 23, 345678);
INSERT INTO ventes ( num_vente, date_vente, marchandise_num,client_num ) VALUES ( 12, 2018, 12, 345678);
