-- Dans le domaine

use Carte_graphique;

-- Données de la table VENTES

INSERT INTO VENTES ( idvente, Num_vente, date ) VALUES (7, '10', '2010-01-15');
INSERT INTO VENTES ( idvente, Num_vente, date ) VALUES (8, '10', '2011-05-04');
INSERT INTO VENTES ( idvente, Num_vente, date ) VALUES (9, '10', '2014-03-07');


-- Données de la table CLIENTS

INSERT INTO CLIENTS ( idclient, Nom_client, ville ) VALUES ( 40, 'Pauline', 'Toronto');
INSERT INTO CLIENTS ( idclient, Nom_client, ville ) VALUES ( 45, 'Paul', 'ottawa');
INSERT INTO CLIENTS ( idclient, Nom_client, ville ) VALUES ( 50, 'Dave', 'vancouver');
INSERT INTO CLIENTS ( idclient, Nom_client, ville ) VALUES ( 55, 'Alain', 'montreal');

-- Données de la table MARCHANDISES

INSERT INTO MARCHANDISES ( marchandise, nom_marchandise, prix, description_marchandise ) VALUES ( 60, 'GTX960', '275', '2GO');
INSERT INTO MARCHANDISES ( marchandise, nom_marchandise, prix, description_marchandise ) VALUES ( 66, 'GTX1060', '50', '2GO');
INSERT INTO MARCHANDISES ( marchandise, nom_marchandise, prix, description_marchandise ) VALUES ( 77, 'GTX1070', '805', '4GO');
INSERT INTO MARCHANDISES ( marchandise, nom_marchandise, prix, description_marchandise ) VALUES ( 79, 'GTX1080', '1100', '6GO');

-- Données de la table PAYMENTS

INSERT INTO PAYMENT ( idclient, marchandise, idvente, payment ) VALUES ( 40, 60, 7, 233);
INSERT INTO PAYMENT ( idclient, marchandise, idvente, payment ) VALUES ( 45, 66, 8, 444);
INSERT INTO PAYMENT ( idclient, marchandise, idvente, payment ) VALUES ( 50, 77, 3, 556);
INSERT INTO PAYMENT ( idclient, marchandise, idvente, payment ) VALUES ( 55, 79, 9, 110);
