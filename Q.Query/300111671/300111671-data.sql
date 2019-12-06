-- Dans le domaine



use Boubou;



-- Données de la table pays



INSERT INTO PAYS ( name ) VALUES ( 'senegal');
INSERT INTO PAYS ( name ) VALUES ( 'benin');
INSERT INTO PAYS ( name ) VALUES ( 'mali');


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


--

INSERT INTO COMMANDE ( 'logistique' , 'prix' , 'genre' ) values (1 ,1 ,1 )
INSERT INTO COMMANDE ( 'logistique' , 'prix' , 'genre' ) values (2 ,2 ,2 )
INSERT INTO COMMANDE ( 'logistique' , 'prix' , 'genre' ) values (2 ,2 ,2 )

















