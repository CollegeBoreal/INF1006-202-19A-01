  


-- Dans le domaine



use widesign;



-- Données de la base widesign


INSERT INTO IMAGES (images, format) VALUES ( 'portrait', 1);
INSERT INTO IMAGES (images, format) VALUES ( 'paysage', 2);
INSERT INTO IMAGES (images, format) VALUES ( 'flyer', 3);




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
INSERT INTO CUSTOMERS(customer, nom,prenom) VALUES ('1', 'Tochgaly','Etienne');
INSERT INTO CUSTOMERS(customer, nom,prenom) VALUES ('2', 'Fabrice','Jacques');
INSERT INTO CUSTOMERS(customer, nom,prenom) VALUES ('3', 'widby','Armand');
INSERT INTO CUSTOMERS(customer, nom,prenom) VALUES ('4', 'Mark','Jean');
INSERT INTO CUSTOMERS(customer, nom,prenom) VALUES ('5', 'Armand','Widby');
INSERT INTO CUSTOMERS(customer, nom,prenom) VALUES ('6', 'Sadissou','Abbas');
INSERT INTO CUSTOMERS(customer, nom,prenom) VALUES ('7', 'Joseph','Jhon');
INSERT INTO CUSTOMERS(customer, nom,prenom) VALUES ('8', 'Pierre','Magalie');



-- INSERT DANS LA TABLE PRICES 
INSERT INTO INVOICES(customer, price, shipping, delivery) VALUES ('1', 80, 2, 3);
INSERT INTO INVOICES(customer, price, shipping, delivery) VALUES ('2', 70, 3, 4);
INSERT INTO INVOICES(customer, price, shipping, delivery) VALUES ('3', 60, 4, 5);
INSERT INTO INVOICES(customer, price, shipping, delivery) VALUES ('4', 50, 5, 6);
INSERT INTO INVOICES(customer, price, shipping, delivery) VALUES ('5', 40, 6, 7);
INSERT INTO INVOICES(customer, price, shipping, delivery) VALUES ('6', 30, 7, 8);
INSERT INTO INVOICES(customer, price, shipping, delivery) VALUES ('7', 20, 8, 9);
INSERT INTO INVOICES(customer, price, shipping, delivery) VALUES ('8', 85, 9, 8);
INSERT INTO INVOICES(customer, price, shipping, delivery) VALUES ('9', 75, 8, 7);
INSERT INTO INVOICES(customer, price, shipping, delivery) VALUES ('10', 65, 7, 6);
INSERT INTO INVOICES(customer, price, shipping, delivery) VALUES ('11', 55, 6, 5);
INSERT INTO INVOICES(customer, price, shipping, delivery) VALUES ('12', 45, 5, 4);
INSERT INTO INVOICES(customer, price, shipping, delivery) VALUES ('13', 35, 4, 3);
INSERT INTO INVOICES(customer, price, shipping, delivery) VALUES ('14', 22, 3, 2);



