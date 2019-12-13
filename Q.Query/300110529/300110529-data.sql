-- Dans le domaine

use Carte_graphique;

-- Données de la table VENTES

INSERT INTO VENTES ( idvente, Num_vente, date_vente ) VALUES (1, '10', '01-01-2010');
INSERT INTO VENTES ( idvente, Num_vente, date_vente ) VALUES (2, '20', '09-02-2010');
INSERT INTO VENTES ( idvente, Num_vente, date_vente ) VALUES (3, '30', '03-02-2011');
INSERT INTO VENTES ( idvente, Num_vente, date_vente ) VALUES (4, '40', '03-03-2012');

-- Données de la table CLIENTS

INSERT INTO clients ( idclient, Nom_client, ville, telephone ) VALUES ( 15, 'Pauline', 'Toronto');
INSERT INTO clients ( idclient, Nom_client, ville, telephone ) VALUES ( 25, 'Paul', 'ottawa');
INSERT INTO clients ( idclient, Nom_client, ville, telephone ) VALUES ( 30, 'Dave', 'vancouver');
INSERT INTO clients ( idclient, Nom_client, ville, telephone ) VALUES ( 35, 'Alain', 'montreal');

-- Données de la table MARCHANDISES

INSERT INTO MARCHANDISES ( marchandise, date, nom_marchandise, prix, description_marchandise ) VALUES ( 40, '02-02-2010', 'GTX960', '$275', '2GO');
INSERT INTO MARCHANDISES ( marchandise, date, nom_marchandise, prix, description_marchandise ) VALUES ( 20, '04-03-2011', 'GTX1060' '$450', '2GO');
INSERT INTO MARCHANDISES ( marchandise, date, nom_marchandise, prix, description_marchandise ) VALUES ( 30, '05-02-2012', 'GTX1070' '$805', '4GO');
INSERT INTO MARCHANDISES ( marchandise, date, nom_marchandise, prix, description_marchandise ) VALUES ( 50, '03-04-2013', 'GTX1080' '$1100', '6GO');

-- Données de la table PAYMENTS

INSERT INTO PAYMENTS ( idclient, marchamdise, idvente, payment ) VALUES ( 15, 40, 1, 275);
INSERT INTO PAYMENTS ( idclient, marchamdise, idvente, payment ) VALUES ( 25, 20, 2, 450);
INSERT INTO PAYMENTS ( idclient, marchamdise, idvente, payment ) VALUES ( 30, 30, 3, 805);
INSERT INTO PAYMENTS ( idclient, marchamdise, idvente, payment ) VALUES ( 35, 50, 4, 1100);
