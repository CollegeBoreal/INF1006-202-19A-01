
-- Dans le domaine

use network_IT;

-- Données de la table SOLUTIONS

INSERT INTO SOLUTIONS ( solution, nom  ) VALUES (14, 'maintenance');
INSERT INTO SOLUTIONS ( solution, nom  ) VALUES (22, 'configuration');
INSERT INTO SOLUTIONS ( solution, nom  ) VALUES (34, 'vlan');
INSERT INTO SOLUTIONS ( solution, nom  ) VALUES (56, 'routeur');

-- Données de la table PRODUITS

INSERT INTO PRODUCTS ( IDproduit, nom, date, total_en_stock ) VALUES (10, 'router', '2020-11-09', 233);
INSERT INTO PRODUCTS ( IDproduit, nom, Date, total_en_stock ) VALUES (20, 'switches','2014-10-04', 130);
INSERT INTO PRODUCTS ( IDproduit, nom, Date, total_en_stock) VALUES (30, 'camera', '2014-10-01', 144);

-- Données de la table COMMANDES

INSERT INTO COMMANDES (IDproduit,IDclient, Quantit, Date_livraison) VALUES (10, 40, 100, '2020-09-13');
INSERT INTO COMMANDES (IDproduit,IDclient, Quantit, Date_livraison) VALUES (20, 50, 100, '2020-09-13');
INSERT INTO COMMANDES (IDproduit,IDclient, Quantit, Date_livraison) VALUES (30, 60, 100, '2020-09-13');


-- Données de la table CLIENTS

INSERT INTO CLIENTS ( IDclient, nom, ville) VALUES (40, 'olitan', 'toronto');
INSERT INTO CLIENTS ( IDclient, nom, ville) VALUES (50, 'aek', 'northyork');
INSERT INTO CLIENTS (IDclient, nom, ville) VALUES (60, 'jemma', 'mississauga');
INSERT INTO CLIENTS ( IDclient, nom, ville) VALUES (40, 'check', 'toronto');
INSERT INTO CLIENTS ( IDclient, nom, ville) VALUES (40, 'abbas', 'toronto');


-- Données de la table insttalation

INSERT INTO INSTALLATIONS (installation, nom ) VALUES (4, 'firewall');
INSERT INTO INSTALLATIONS (installation, nom ) VALUES (5, 'anti-virus');
INSERT INTO INSTALLATIONS (installation, nom ) VALUES (6, 'mise a jours');
                                                  
  -- Données de la table prix
INSERT INTO PRIX (solution, installation, prix ) VALUES (22, 4, 1000);
