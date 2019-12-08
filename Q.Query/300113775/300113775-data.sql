-- Dans le domaine



use widesign;



-- Données de la base widesign


INSERT INTO IMAGES (images) VALUES ( 'portrait');
INSERT INTO IMAGES (images) VALUES ( 'paysage');
INSERT INTO IMAGES (images) VALUES ( 'flyer');



-- INSERT DANS LA TABLE COLORS 
INSERT INTO COLORS(Colors) VALUES ('blue');
INSERT INTO COLORS(Colors) VALUES ('original');
INSERT INTO COLORS(Colors) VALUES ('blacknwhite');
INSERT INTO COLORS(Colors) VALUES ('sepian');
INSERT INTO COLORS(Colors) VALUES ('mono');
INSERT INTO COLORS(Colors) VALUES ('dramatic');
INSERT INTO COLORS(Colors) VALUES ('argentic');


-- INSERT DANS LA TABLE SHIPPINGS 
INSERT INTO SHIPPINGS(shipp, shipping) VALUES ('2019-03-27',1);
INSERT INTO SHIPPINGS(shipp, shipping) VALUES ('2019-06-28',2);
INSERT INTO SHIPPINGS(shipp, shipping) VALUES ('2019-08-15',3);
INSERT INTO SHIPPINGS(shipp, shipping) VALUES ('2019-09-22',4);
INSERT INTO SHIPPINGS(shipp, shipping) VALUES ('2019-03-25',5);


-- INSERT DANS LA TABLE CUSTOMERS 
INSERT INTO CUSTOMERS(customer, nom,prenom, adresse, codepostal, telephone) VALUES (1, 'Tochgaly', 'Etienne', '1 yonge', 'M5E 1A7', '416 -289-5130');
INSERT INTO CUSTOMERS(customer, nom,prenom, adresse, codepostal, telephone) VALUES (2, 'Fabrice', 'Jacques', '2 yonge st', 'M5E 1B7', '416 -289-5230');
INSERT INTO CUSTOMERS(customer, nom,prenom, adresse, codepostal, telephone) VALUES (3, 'widby', 'Armand', '3 yonge street', 'M5E 1C7', '416 -289-5330');
INSERT INTO CUSTOMERS(customer, nom,prenom, adresse, codepostal, telephone) VALUES (4, 'Mark', 'Jean', '1 yonge street', 'M5E 1D7', '416 -289-5430');
INSERT INTO CUSTOMERS(customer, nom,prenom, adresse, codepostal, telephone) VALUES (5, 'Armand', 'Widby', '8 yonge', 'M5E 1E7', '416 -289-5530');
INSERT INTO CUSTOMERS(customer, nom,prenom, adresse, codepostal, telephone) VALUES (6, 'Sadissou', 'Abbas', '2 yonge', 'M5E 1F7', '416 -289-5630');
INSERT INTO CUSTOMERS(customer, nom,prenom, adresse, codepostal, telephone) VALUES (7, 'Joseph', 'Jhon', '5 yonge', 'M5E 1D7', '416 -289-5730');
INSERT INTO CUSTOMERS(customer, nom,prenom, adresse, codepostal, telephone) VALUES (8, 'Pierre', 'Magalie', '7 yonge', 'M5E 1G7', '416 -289-5830');



-- INSERT DANS LA TABLE PRICES 
INSERT INTO PRICES(prices) VALUES (80);
INSERT INTO PRICES(prices) VALUES (70);
INSERT INTO PRICES(prices) VALUES (60);
INSERT INTO PRICES(prices) VALUES (50);
INSERT INTO PRICES(prices) VALUES (40);
INSERT INTO PRICES(prices) VALUES (30);
INSERT INTO PRICES(prices) VALUES (20);
INSERT INTO PRICES(prices) VALUES (85);
INSERT INTO PRICES(prices) VALUES (75);
INSERT INTO PRICES(prices) VALUES (65);
INSERT INTO PRICES(prices) VALUES (55);
INSERT INTO PRICES(prices) VALUES (45);
INSERT INTO PRICES(prices) VALUES (35);
INSERT INTO PRICES(prices) VALUES (22);

-- INSERT DANS LA TABLE INVOICES 
INSERT INTO INVOICES(reduction, retour,  remboursement) VALUES ('10%', '12-02-2019', 10);
INSERT INTO INVOICES(reduction, retour,  remboursement) VALUES ('12%', '12-01-2019', 20);
INSERT INTO INVOICES(reduction, retour,  remboursement) VALUES ('15%', '12-03-2019', 30);
INSERT INTO INVOICES(reduction, retour,  remboursement) VALUES ('18%', '12-04-2019', 40);
INSERT INTO INVOICES(reduction, retour,  remboursement) VALUES ('20%', '12-01-2019', 50);
INSERT INTO INVOICES(reduction, retour,  remboursement) VALUES ('30%', '12-05-2019', 70);
INSERT INTO INVOICES(reduction, retour,  remboursement) VALUES ('40%', '12-06-2019', 60);
INSERT INTO INVOICES(reduction, retour,  remboursement) VALUES ('50%', '12-07-2019', 80);








