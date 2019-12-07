-- Dans le domaine

use magasin;

-- Données de la table clients


INSERT INTO MARCHANDISES (marchandise, Marchandises, description_marchandise) VALUES (1, 'Accessoires de moto', 'Casques, Gants, Lunettes');
INSERT INTO MARCHANDISES (marchandise, Marchandises, description_marchandise) VALUES (2, 'Types de Motos', 'Les Cross, Les Trials, Les Roadsters');


INSERT INTO PaysDeFabrications(paysdefabrication, Pays) VALUES (1, 'France');
INSERT INTO PaysDeFabrications(paysdefabrication, Pays) VALUES (2, 'Italie');
INSERT INTO PaysDeFabrications(paysdefabrication, Pays) VALUES (3, 'Japon');


INSERT INTO COULEURS (couleur, Couleurs) VALUES (1, 'Bleu');
INSERT INTO COULEURS (couleur, Couleurs) VALUES (2, 'Gris');
INSERT INTO COULEURS (couleur, Couleurs) VALUES (3, 'Noir');
INSERT INTO COULEURS (couleur, Couleurs) VALUES (4, 'Orange');
INSERT INTO COULEURS (couleur, Couleurs) VALUES (5, 'Turquoise');


INSERT INTO MARQUES (marque, Marques) VALUES (1, 'BMW');
INSERT INTO MARQUES (marque, Marques) VALUES (2, 'HONDA');
INSERT INTO MARQUES (marque, Marques) VALUES (3, 'KAWASAKI');
INSERT INTO MARQUES (marque, Marques) VALUES (4, 'YAMAHA');


INSERT INTO MODELS (model, Models, marque, couleur, paysdefabrication) VALUES (1, 'F800 GS', 1, 2, 3);
INSERT INTO MODELS (model, Models, marque, couleur, paysdefabrication) VALUES (2, 'CRF250R EXPERT', 2, 3, 3);
INSERT INTO MODELS (model, Models, marque, couleur, paysdefabrication) VALUES (3, 'Z650 ABS', 3, 1, 3);
INSERT INTO MODELS (model, Models, marque, couleur, paysdefabrication) VALUES (4, 'YZF-R1M', 4, 4, 3);


INSERT INTO PRICES (price, model, Prices) VALUES (1, 1, 17800.00);
INSERT INTO PRICES (price, model, Prices) VALUES (2, 2, 15400.00);
INSERT INTO PRICES (price, model, Prices) VALUES (3, 3, 19800.00);


INSERT INTO CLIENTS (client, nom, prenom) VALUES (1, 'Paul', 'Rocher');
INSERT INTO CLIENTS (client, nom, prenom) VALUES (2, 'EncoreVous', 'Ducobu');


INSERT INTO VENTES (vente, DateDeVente, marchandise) VALUES (1, '2019-03-14', 1);
INSERT INTO VENTES (vente, DateDeVente, marchandise) VALUES (2, '2019-12-28', 2);


INSERT INTO PAYMENTS (payment, vente, client, Montant) VALUES (1, 1, 1, 20300.99);
INSERT INTO PAYMENTS (payment, vente, client, Montant) VALUES (2, 2, 2, 16789.70);
