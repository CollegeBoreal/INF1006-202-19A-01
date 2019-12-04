 -- Dans le domaine

use musicshop;

-- Données des tables

INSERT INTO SERVICES_OFFERED (service_offered, Services) VALUES (1, 'Instruments');

INSERT INTO CUSTOMERS (customer, Name, Phone_number) VALUES (1, 'John', 6477765643);

INSERT INTO INSTRUMENTS (instrument, Types, Name) VALUES (1, 'Percusion', 'Piano');
INSERT INTO INSTRUMENTS (instrument, Types, Name) VALUES (2, 'Strings', 'Guitar');

INSERT INTO COLORS (color, Colors) VALUES (1, 'White');
INSERT INTO COLORS (color, Colors) VALUES (2, 'Black');

INSERT INTO  PRICES (price, instrument, color) VALUES (7000, 1, 2);
INSERT INTO  PRICES (price, instrument, color) VALUES (5000, 2, 1);

