 -- Dans le domaine

use musicshop;

-- Données des tables

INSERT INTO SERVICES_OFFERED (service_offered, Services) VALUES (1, 'Instruments');

INSERT INTO CUSTOMERS (customer, Name, Phone_number) VALUES (1, 'John', 64773);
INSERT INTO CUSTOMERS (customer, Name, Phone_number) VALUES (2, 'Jacques', 64774);
INSERT INTO CUSTOMERS (customer, Name, Phone_number) VALUES (3, 'Carl', 64778);
INSERT INTO CUSTOMERS (customer, Name, Phone_number) VALUES (4, 'Johnny', 64777);
INSERT INTO CUSTOMERS (customer, Name, Phone_number) VALUES (5, 'Joseph', 64772);
INSERT INTO CUSTOMERS (customer, Name, Phone_number) VALUES (6, 'Jean', 64779);

INSERT INTO INSTRUMENTS (instrument, Types, Name) VALUES (1, 'Percusion', 'Piano');
INSERT INTO INSTRUMENTS (instrument, Types, Name) VALUES (2, 'Strings', 'Guitar');
INSERT INTO INSTRUMENTS (instrument, Types, Name) VALUES (3, 'Violan', 'Drums');
INSERT INTO INSTRUMENTS (instrument, Types, Name) VALUES (4, 'Flute', 'Saxophone');
INSERT INTO INSTRUMENTS (instrument, Types, Name) VALUES (5, 'Tambour', 'Keyboard');
INSERT INTO INSTRUMENTS (instrument, Types, Name) VALUES (6, 'Harpe', 'Clarinette');


INSERT INTO COLOURS (colour, Colors) VALUES (1, 'White');
INSERT INTO COLOURS (colour, Colors) VALUES (2, 'Black');
INSERT INTO COLOURS (colour, Colors) VALUES (3, 'Red');
INSERT INTO COLOURS (colour, Colors) VALUES (4, 'Yellow');
INSERT INTO COLOURS (colour, Colors) VALUES (5, 'Purple');
INSERT INTO COLOURS (colour, Colors) VALUES (6, 'Blue');

INSERT INTO  PRICES (price, Prices, instrument, colour) VALUES (1, 7000, 1, 2);
INSERT INTO  PRICES (price, Prices, instrument, colour) VALUES (2, 5000, 2, 1);
INSERT INTO  PRICES (price, Prices, instrument, colour) VALUES (3, 6000, 3, 3);
INSERT INTO  PRICES (price, Prices, instrument, colour) VALUES (4, 5600, 4, 4);
INSERT INTO  PRICES (price, Prices, instrument, colour) VALUES (5, 5800, 5, 5);
INSERT INTO  PRICES (price, Prices, instrument, colour) VALUES (6, 5900, 6, 6);

INSERT INTO PAYMENTS ( transaction_date, price, customer) VALUES ( '2019-04-08', 1, 1);
INSERT INTO PAYMENTS ( transaction_date, price, customer) VALUES ( '2019-05-07', 2, 2);
INSERT INTO PAYMENTS ( transaction_date, price, customer) VALUES ( '2019-04-10', 3, 3);
INSERT INTO PAYMENTS ( transaction_date, price, customer) VALUES ( '2019-04-11', 4, 4);
INSERT INTO PAYMENTS ( transaction_date, price, customer) VALUES ( '2019-04-15', 5, 5);
INSERT INTO PAYMENTS ( transaction_date, price, customer) VALUES ( '2019-04-18', 6, 6);

