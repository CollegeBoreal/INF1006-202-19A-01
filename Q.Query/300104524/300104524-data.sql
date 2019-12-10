use technical_support;

INSERT INTO CLIENTS (nom, prenom) VALUES ('Jean', 'William');
INSERT INTO CLIENTS (nom, prenom) VALUES ('Medgine', 'Pierre');
INSERT INTO CLIENTS (nom, prenom) VALUES ('Jacques', 'Gerome');

INSERT INTO SERVICES (BRAND, problem, description) VALUES ('HP', 'hard drive', 'Not Bootable');
INSERT INTO SERVICES (BRAND, problem, description) VALUES ('DELL', 'cpu', 'Heating');

INSERT INTO REPAIRS (service, mac_adress, brand) VALUES (1, '10:25:69:69', 'HP');
INSERT INTO REPAIRS (service, mac_adress, brand) VALUES (2, '56:98:75:54', 'DELL');

INSERT INTO NOTES (demarche, documentation) VALUES ('Test 1 a 1', 'HP SUPPORT');
INSERT INTO NOTES (demarche, documentation) VALUES ('Installer une pate thermique', 'INTEL PROCESSOR');

INSERT INTO VENTES (date_vente, article, service, client) VALUES ('2019-12-06', 'Reparation Immediat LAPTOP', 1, 1);
INSERT INTO VENTES (date_vente, article, service, client) VALUES ('2019-12-09', 'Reparation sur Rendez-Vous DESKTOP', 2, 2);

INSERT INTO PAYMENTS (article, quantity, vente) VALUES ('LAPTOP', 1, 1);
INSERT INTO PAYMENTS (article, quantity, vente) VALUES ('DESKTOP', 1, 2);
