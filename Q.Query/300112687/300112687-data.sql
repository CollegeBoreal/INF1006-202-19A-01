
--  Dans le Domaine

 use Assurance;

--  Données de la table CLIENTS

INSERT INTO CLIENTS( name,num ) VALUES ('joseph', 0001);
INSERT INTO CLIENTS ( name,num ) VALUES ('orden', 0002);
INSERT INTO CLIENTS ( name,num ) VALUES ('Abas',  0003);


-- Données de la table ABONNEMEMtS
INSERT INTO ABONNEMENTS ( name) VALUES ('Abas');
INSERT INTO ABONNEMENTS ( name ) VALUES ('orden');
INSERT INTO ABONNEMENTS ( name ) VALUES ('joseph');

-- Données de la table PAIEMENT
INSERT INTO PAIEMENT ( name,date,num,client ) VALUES ('iphone');
INSERT INTO PAIEMENT ( name,date,num,cliest ) VALUES ('samsung');
INSERT INTO PAIMENT  ( name,date,num,client ) VALUES ('nokia');

-- Données  de la table SERVICES
INSERT INTO SERVICES ( name,type ) VALUES ('iphone');
INSERT INTO SERCICES ( name,type ) VALUES ('samsung');
INSERT INTO SERVICES ( name,type ) VALUES ('nokia');

-- Données dela table PRIX
INSERT INTO PRIX  ( name,client ) VALUES ('iphone');
INSERT INTO PRIX  ( name,client) VALUES ('samsung');
INSERT INTO PRIX  ( name,client ) VALUES ('nokia');

-- Données de la table VENTES
INSERT INTO VENTES ( name,Abonnement ) VALUES ('iphone');
INSERT INTO VENTES ( name,Abonnement ) VALUES ('samsung');
INSERT INTO VENTES ( name,Abonnement ) VALUES ('nokia');
