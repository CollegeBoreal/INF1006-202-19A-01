
  -- Dans le domaine

use vente_portable;

  -- Données de la table MARKS

INSERT INTO MARKS ( name ) VALUES ('iphone');
INSERT INTO MARKS ( name ) VALUES ('samsung');
INSERT INTO MARKS ( name ) VALUES ('nokia');
INSERT INTO MARKS ( name ) VALUES ('huawei');

-- Données de la table PRODUITS

INSERT INTO MODELS ( modelName ) VALUES ('iphone10');
INSERT INTO MODELS ( modelName ) VALUES ('iphone11');
INSERT INTO MODELS ( modelName ) VALUES ('samsung S10');
INSERT INTO MODELS ( modelName ) VALUES ('nokia 7.2');
INSERT INTO MODELS ( modelName ) VALUES ('huawei p30');

-- Données de la table CLIENTS
INSERT INTO INVOICES ( Nom, Date) VALUES ('olitan','2020-09-13');
INSERT INTO INVOICES ( Nom, Date ) VALUES ('aek', '2020-09-13');
INSERT INTO INVOICES ( Nom, Date) VALUES ('jemma', '2020-09-13');
INSERT INTO INVOICES ( Nom, Date) VALUES ('check', '2020-09-13');
INSERT INTO INVOICES ( Nom, Date ) VALUES ('abbas', '2020-09-13');

-- Données de la table CLIENTS

INSERT INTO CUSTOMERS ( ) VALUES (40, 'olitan', 'toronto');
INSERT INTO CUSTOMERS ( IDclient, Nom_client, ville) VALUES (50, 'aek', 'northyork');
INSERT INTO CUSTOMERS (IDclient, Nom_client, ville) VALUES (60, 'jemma', 'mississauga');
INSERT INTO CUSTOMERS ( IDclient, Nom_client, ville) VALUES (70, 'check', 'toronto');
INSERT INTO CUSTOMERS ( IDclient, Nom_client, ville) VALUES (80, 'abbas', 'toronto');
