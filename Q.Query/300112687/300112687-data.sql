
--  Dans le Domaine

 use Assurance;

--  Données de la table CLIENTS

INSERT INTO CLIENTS( name,num ) VALUES ('joseph', 0001);
INSERT INTO CLIENTS ( name,num ) VALUES ('orden', 0002);
INSERT INTO CLIENTS ( name,num ) VALUES ('Abas',  0003);


-- Données de la table ABONNEMEMT
INSERT INTO ABONNEMENT ( nom,abonnement,client) VALUES ('Abas','abas',1);
INSERT INTO ABONNEMENT ( nom,abonnement,client) VALUES ('ORDEN','orden',2);
INSERT INTO ABONNEMENT ( nom,abonnement,client) VALUES ('JOSEPH','joseph',3);



-- Données  de la table SERVICES
INSERT INTO SERVICES ( incendie,voyage,voiture ) VALUES ('maison','bagage','accident');
INSERT INTO SERVICES ( incendie,voyage,voiture ) VALUES ('bureau','valise','vol');

-- Données dela table PRIX
INSERT INTO PRIX  ( client,price ) VALUES (1,400);
INSERT INTO PRIX  ( client,price) VALUES (2,300);
INSERT INTO PRIX  ( client,price) VALUES (3,500);

-- Données de la table VENTES
INSERT INTO VENTES ( Abonnement ) VALUES ('iphone');
INSERT INTO VENTES ( Abonnement ) VALUES ('samsung');
INSERT INTO VENTES ( Abonnement ) VALUES ('nokia');

-- Données de la table PAIEMENT
INSERT INTO PAIEMENT ( nom,date,client,vente ) VALUES ('lion','2019-02-11',1,1);
INSERT INTO PAIEMENT ( nom,date,client,vente) VALUES ('jonathan','2019-01-22',2,2);
INSERT INTO PAIEMENT  ( nom,date,client,vente) VALUES ('freddy','2019-04-23',3,3);

-- Données de la table adresses
INSERT INTO ADRESSES ( rue,ville,pays,code_postal,client ) VALUES ('boucherville','qubec','canada','mapoto',1);
INSERT INTO ADRESSES ( rue,ville,pays,code_postal,client ) VALUES ('pagebrook','toronto','USA','ontario',2);

