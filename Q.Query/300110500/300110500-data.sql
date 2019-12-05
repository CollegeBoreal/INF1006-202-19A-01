-- Dans le domaine

use immigration_consulting;

-- Données des tables

INSERT INTO TYPE_VISAS (Type_visa, Passport, Profession) VALUES ('1', 'Diplomate', 'Ambassadeur');
INSERT INTO TYPE_VISAS (Type_visa, Passport, profession) VALUES ('2', 'ordinaire', 'Commercant');
INSERT INTO TYPE_VISAS (Type_visa, Passport, Profession) VALUES ('3', 'Diplomate', 'Etudiant');

INSERT INTO HONORAIRE_PAYMENTS ( Name, Periode, Especes) VALUES ('Reglement_partiel', '18-10-2019', '1000$');
INSERT INTO HONORAIRE_PAYMENTS ( Name, Periode, Especes) VALUES ('Reglement_pour_solde', '31-10-2019', '1000$');

INSERT INTO VILLE_RESIDENCE (Name, Pays, Continent) VALUES ('Hamidou_zongo', 'Congo', 'Afrique'); 
INSERT INTO VILLE_RESIDENCE (Name,Pays, Continent ) VALUES ('Cristiano_Ronaldo', 'Portugal', 'Europe'); 

INSERT INTO TYPE_SERVICES (Type_service, Duree) VALUES ('Etudiant_international', 'Temporaire');
INSERT INTO TYPE_SERVICES (Type_service, Duree) VALUES ('Travailleur_qualifie', 'permanent');

