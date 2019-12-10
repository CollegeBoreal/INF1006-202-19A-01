-- domaine

use hairasset;

-- Données de la table clients

INSERT INTO CLIENTS ( initiale, full_name) VALUES ( 'TE', 'Etienne');
INSERT INTO CLIENTS ( initiale, full_name) VALUES ( 'DH', 'Djuma');

-- Données de la table couleurs

INSERT INTO COULEURS ( Couleurs ) VALUES ( 'Noire');
INSERT INTO COULEURS ( Couleurs ) VALUES ( 'Jaune');
INSERT INTO COULEURS ( Couleurs ) VALUES ( 'Blanche');

-- Données de la table produits

INSERT INTO PRODUITS ( produit, modele, couleur, quantite ) VALUES ( 1, 'Perruque', 1, 2);
INSERT INTO PRODUITS ( produit, modele, couleur, quantite ) VALUES ( 2, 'Wig', 1, 3);

-- Données de la table payment

INSERT INTO PAYEMENTS ( payement, client, produit, datedetransaction, montant ) VALUES ( 1, 2, 2, '2019-12-09', 50);
