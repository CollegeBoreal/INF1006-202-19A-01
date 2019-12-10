 -- Dans le domaine

use musicshop;

-- Données des tables

INSERT INTO SERVICES_OFFERED (service_offered, Services) VALUES (1, 'Instruments');

INSERT INTO CUSTOMERS (customer, Name, Phone_number) VALUES (1, 'John', 64773);
INSERT INTO CUSTOMERS (customer, Name, Phone_number) VALUES (2, 'Jacques', 64774);
INSERT INTO CUSTOMERS (customer, Name, Phone_number) VALUES (3, 'Carl', 64778);
INSERT INTO CUSTOMERS (customer, Name, Phone_number) VALUES (4, 'Johnny', 64777);
INSERT INTO CUSTOMERS (customer, Name, Phone_number) VALUES (5, 'Joseph', 64772);

INSERT INTO INSTRUMENTS (instrument, Types, Name) VALUES (1, 'Percusion', 'Piano');
INSERT INTO INSTRUMENTS (instrument, Types, Name) VALUES (2, 'Strings', 'Guitar');

INSERT INTO COLOURS (colour, Colors) VALUES (1, 'White');
INSERT INTO COLOURS (colour, Colors) VALUES (2, 'Black');

INSERT INTO  PRICES (price, Prices, instrument, colour) VALUES (1, 7000, 1, 2);
INSERT INTO  PRICES (price, Prices, instrument, colour) VALUES (2, 5000, 2, 1);

INSERT INTO PAYMENTS (payment, transaction_date, price, customer) VALUES (1, '2019-04-08', 1, 1);
