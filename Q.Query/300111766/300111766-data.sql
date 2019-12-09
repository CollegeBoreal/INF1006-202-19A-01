
  -- Dans le domaine

use vente_portable;

  -- Données de la table MARKS

INSERT INTO MARKS ( name ) VALUES ('iphone');
INSERT INTO MARKS ( name ) VALUES ('samsung');
INSERT INTO MARKS ( name ) VALUES ('nokia');
INSERT INTO MARKS ( name ) VALUES ('huawei');

-- Données de la table PRODUITS

INSERT INTO MODELS (name ) VALUES ('iphone10');
INSERT INTO MODELS (name ) VALUES ('iphone11');
INSERT INTO MODELS (name ) VALUES ('samsung S10');
INSERT INTO MODELS (name ) VALUES ('nokia 7.2');
INSERT INTO MODELS (name ) VALUES ('huawei p30');

-- Données de la table INVOICES
INSERT INTO INVOICES ( Nom, Date) VALUES ('iphone10', 2020-09-13);
INSERT INTO INVOICES ( Nom, Date ) VALUES ('samsung', 2020-09-13);
INSERT INTO INVOICES ( Nom, Date) VALUES ('huawei', 2020-09-13);
INSERT INTO INVOICES ( Nom, Date) VALUES ('nokia', 2020-09-13);
INSERT INTO INVOICES ( Nom, Date ) VALUES ('samsung S10', 2020-09-13);

-- Données de la table CUSTOMERS
INSERT INTO CUSTOMERS ( name, age ) VALUES ( 'cheikh', 26);
INSERT INTO CUSTOMERS ( name, age ) VALUES ( 'olaitan', 28);
INSERT INTO CUSTOMERS ( name, age ) VALUES ( 'abdel', 33);
INSERT INTO CUSTOMERS ( name, age ) VALUES ( 'halima', 23);

-- Données de la table PRICES
INSERT INTO PRICES (mark, model, invoice, price ) VALUES (1, 4, 3, 1000);
INSERT INTO PRICES (mark, model, invoice, price ) VALUES (3, 5, 5, 700);
INSERT INTO PRICES (mark, model, invoice, price ) VALUES (2, 3, 4, 500);




