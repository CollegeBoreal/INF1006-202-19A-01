-- Dans le domaine



use Boubou;



-- Données de la table age



INSERT INTO AGE ( name ) VALUES ('20ans');
INSERT INTO AGE ( name ) VALUES ('30ans');
INSERT INTO AGE ( name ) VALUES ('40ans');



-- Données de la table pays



INSERT INTO PAYS ( name ) VALUES ( 'senegal');
INSERT INTO PAYS ( name ) VALUES ( 'benin');
INSERT INTO PAYS ( name ) VALUES ( 'mali');


-- Données de la table delai


INSERT INTO DELAI ( name ) VALUES ( '24h');
INSERT INTO DELAI ( name ) VALUES ( '48h');
INSERT INTO DELAI ( name ) VALUES ( '72h');


-- Données de la table couleur



INSERT INTO COULEUR ( name ) VALUES ( 'noir');
INSERT INTO COULEUR ( name ) VALUES ( 'bleu');
INSERT INTO COULEUR ( name ) VALUES ( 'rouge');




-- Données de la table genre



INSERT INTO GENRE ( name ) VALUES ( 'dashiki');
INSERT INTO GENRE ( name ) VALUES ( 'alabe');
INSERT INTO GENRE ( name ) VALUES ( 'agbada');





-- Données de la table paiement


INSERT INTO PAIEMENT ( name ) VALUES ( 'debit card');
INSERT INTO PAIEMENT ( name ) VALUES ( 'mastercard');
INSERT INTO PAIEMENT ( name ) VALUES ( 'pay pal');


-- Données de la table duree


INSERT INTO DUREE ( name ) VALUES ( '24 heures');
INSERT INTO DUREE ( name ) VALUES ( '3 jours ');
INSERT INTO DUREE ( name) VALUES ( '1 semaine');



-- Données de la table quantite


INSERT INTO QUANTITE ( name ) VALUES ( '1 a 3');
INSERT INTO QUANTITE ( name ) VALUES ( '1 douzaine ');
INSERT INTO QUANTITE ( name ) VALUES ( '2 douzaine ');

-- Données de la table PRIX


INSERT INTO PRIX ( name ) VALUES ( '100$');
INSERT INTO PRIX ( name ) VALUES ( '250$');
INSERT INTO PRIX ( name ) VALUES ( '500$');

-- Données de la table logistique

INSERT INTO lOGISTIQUE ( name ) VALUES ( 'aerienne');
INSERT INTO lOGISTIQUE ( name ) VALUES ( 'ferroviere');
INSERT INTO lOGISTIQUE ( name ) VALUES ( 'maritine');




-- Données de la table MODELE

INSERT INTO MODELE (genre ,couleur ,quantite ,modele) VALUES (1 ,1 ,1 ,10);
INSERT INTO MODELE (genre ,couleur ,quantite ,modele) VALUES (2 ,2 ,2 ,20);
INSERT INTO MODELE (genre ,couleur ,quantite ,modele) VALUES (3 ,3 ,3 ,30);
  



-- Données de la table COMMANDE

INSERT INTO COMMANDE (genre ,age ,prix ,commande) VALUES (1 ,1 ,1 ,100);
INSERT INTO COMMANDE (genre ,age ,prix ,commande) VALUES (2 ,2 ,2 ,200);
INSERT INTO COMMANDE (genre ,age ,prix ,commande) VALUES (3 ,3 ,3 ,300);







