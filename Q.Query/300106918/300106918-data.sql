
-- Dans le domaine

use network_IT;

-- Données de la table SOLUTIONS

INSERT INTO SOLUTIONS ( solution, Nom_solution, date  ) VALUES (14, 'maintenance', '2020-04-01');
INSERT INTO SOLUTIONS ( solution, Nom_solution, date ) VALUES (22, 'configuration', '2020-01-01');
INSERT INTO SOLUTIONS ( solution, Nom_solution, date  ) VALUES (34, 'vlan', '2019-01-10');
INSERT INTO SOLUTIONS ( solution, Nom_solution, date  ) VALUES (56, 'routeur', '2020-12-12');

-- Données de la table PRODUITS

INSERT INTO PRODUCTS ( IDproduit, Nom_produit, date, total_en_stock ) VALUES (10, 'router', '2020-11-09', 233);
INSERT INTO PRODUCTS ( IDproduit, Nom_produit, Date, total_en_stock ) VALUES (20, 'switches','2014-10-04', 130);
INSERT INTO PRODUCTS ( IDproduit, Nom_produit, Date, total_en_stock) VALUES (30, 'camera', '2014-10-01', 144);
INSERT INTO PRODUCTS ( IDproduit, Nom_produit, Date, total_en_stock) VALUES (40, 'camera', '2014-10-01', 150);
INSERT INTO PRODUCTS ( IDproduit, Nom_produit, Date, total_en_stock) VALUES (50, 'camera', '2014-10-01', 166);
INSERT INTO PRODUCTS ( IDproduit, Nom_produit, Date, total_en_stock) VALUES (60, 'camera', '2014-10-01', 6);

-- Données de la table CLIENTS

INSERT INTO CLIENTS ( IDclient, Nom_client, ville) VALUES (40, 'olitan', 'toronto');
INSERT INTO CLIENTS ( IDclient, Nom_client, ville) VALUES (50, 'aek', 'northyork');
INSERT INTO CLIENTS (IDclient, Nom_client, ville) VALUES (60, 'jemma', 'mississauga');
INSERT INTO CLIENTS ( IDclient, Nom_client, ville) VALUES (70, 'check', 'toronto');
INSERT INTO CLIENTS ( IDclient, Nom_client, ville) VALUES (80, 'abbas', 'toronto');
INSERT INTO CLIENTS ( IDclient, Nom_client, ville) VALUES (90, 'amir', 'sudbury');

-- Données de la table COMMANDES

INSERT INTO COMMANDES (IDfacture, IDproduit, IDclient, Quantit, Date_livraison) VALUES (2800, 10, 40, 200, '2020-09-13');
INSERT INTO COMMANDES (IDfacture, IDproduit, IDclient, Quantit, Date_livraison) VALUES (2900, 20, 50, 100, '2020-09-13');
INSERT INTO COMMANDES (IDfacture, IDproduit, IDclient, Quantit, Date_livraison) VALUES (3000, 30, 60, 100, '2020-09-13');
INSERT INTO COMMANDES (IDfacture, IDproduit, IDclient, Quantit, Date_livraison) VALUES (3500, 40, 70, 200, '2019-01-01');
INSERT INTO COMMANDES (IDfacture, IDproduit, IDclient, Quantit, Date_livraison) VALUES (4000, 50, 80, 100, '2020-12-09');
INSERT INTO COMMANDES (IDfacture, IDproduit, IDclient, Quantit, Date_livraison) VALUES (4500, 60, 90, 10, '2019-12-09');


-- Données de la table insttalation

INSERT INTO INSTALLATIONS (installation, Nom_installation  ) VALUES (4, 'firewall');
INSERT INTO INSTALLATIONS (installation, Nom_installation ) VALUES (5, 'anti-virus');
INSERT INTO INSTALLATIONS (installation, Nom_installation ) VALUES (6, 'mise a jours');
                                                  
  -- Données de la table prix
INSERT INTO PRIX (solution, installation, IDclient, prix ) VALUES (22, 4, 40, 1000);
INSERT INTO PRIX (solution, installation, IDclient, prix ) VALUES (34, 5, 50, 3000);
INSERT INTO PRIX (solution, installation, IDclient, prix ) VALUES (56, 6, 60, 3335);
