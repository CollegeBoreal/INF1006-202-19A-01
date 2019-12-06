-- Dans le domaine

use Car_Center;

-- Données des tables

INSERT INTO SERVICES_OFFERED (Sale) VALUES ('Sport_Car');
INSERT INTO SERVICES_OFFERED (Sale) VALUES ('SUV');
INSERT INTO SERVICES_OFFERED (Sale) VALUES ('Truck');

INSERT INTO ORIGINS (origin, Origins) VALUES ('italy', 'ITALY');
INSERT INTO ORIGINS (origin, Origins) VALUES ('japan', 'JAPAN');
INSERT INTO ORIGINS (origin, Origins) VALUES ('usa', 'USA');

INSERT INTO ENGIN_TYPES (Engins) VALUES ('Electric');
INSERT INTO ENGIN_TYPES (Engins) VALUES ('Hybrid');
INSERT INTO ENGIN_TYPES (Engins) VALUES ('Petrol');

INSERT INTO MAKES (make, origin, Makes) VALUES ('acura', 'japan', 'ACURA');
INSERT INTO MAKES (make, origin, Makes) VALUES ('jeep', 'usa', 'JEEP');
INSERT INTO MAKES (make, origin, Makes) VALUES ('lamborghini', 'italy', 'LAMBORGHINI');
INSERT INTO MAKES (make, origin, Makes) VALUES ('ford', 'usa', 'FORD');

INSERT INTO YEARS (Years) VALUES ('2019-02-20');
INSERT INTO YEARS (Years) VALUES ('2019-01-03');
INSERT INTO YEARS (Years) VALUES ('2019-11-09');

INSERT INTO COLOURS (colour, Colours) VALUES ('blk', 'BLACK');
INSERT INTO COLOURS (colour, Colours) VALUES ('blu', 'BLUEU');
INSERT INTO COLOURS (colour, Colours) VALUES ('gry', 'GRAY');
INSERT INTO COLOURS (colour, Colours) VALUES ('grn', 'GREEN');
INSERT INTO COLOURS (colour, Colours) VALUES ('wht', 'WHITE');

INSERT INTO PRICES (Prices) VALUES (43000);
INSERT INTO PRICES (Prices) VALUES (39000);
INSERT INTO PRICES (Prices) VALUES (1430000);

INSERT INTO MODELS (make, year, colour, price, Models) VALUES ('acura', 1, 'blk', 2, 'NSX');
INSERT INTO MODELS (make, year, colour, price, Models) VALUES ('jeep', 2, 'wht', 1, 'WRANGLER');
INSERT INTO MODELS (make, year, colour, price, Models) VALUES ('lamborghini', 3, 'grn', 3, 'AVENTADOR');
INSERT INTO MODELS (make, year, colour, price, Models) VALUES ('lamborghini', 2, 'blk', 2, 'PALM BEACH');
INSERT INTO MODELS (make, year, colour, price, Models) VALUES ('ford', 1, 'gry', 1, 'MUSTANG GT');

INSERT INTO CUSTOMERS (customer, LastName, FirstName) VALUES ('EJ', 'Etienne', 'Joky');
INSERT INTO CUSTOMERS (customer, LastName, FirstName) VALUES ('MN', 'Noel', 'Melissa');
INSERT INTO CUSTOMERS (customer, LastName, FirstName) VALUES ('RC', 'Ricca', 'Collins');

INSERT INTO PAYMENTS (customer, price) VALUES ('EJ', 1);
INSERT INTO PAYMENTS (customer, price) VALUES ('MN', 2);
INSERT INTO PAYMENTS (customer, price) VALUES ('RC', 3);

INSERT INTO MAINTENANCES (Maintenances) VALUES ('Brake');
INSERT INTO MAINTENANCES (Maintenances) VALUES ('Repair');
INSERT INTO MAINTENANCES (Maintenances) VALUES ('Tires');
INSERT INTO MAINTENANCES (Maintenances) VALUES ('Transmission');

-- Author: <Etienne>
