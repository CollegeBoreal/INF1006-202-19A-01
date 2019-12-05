-- Dans le domaine

use immigration_consulting;

-- Données des tables

INSERT INTO TYPE_VISAS (Type_visa, Passport, Profession) VALUES ('1', 'Diplomate', 'Ambassadeur');
INSERT INTO TYPE_VISAS (Type_visa, Passport, profession) VALUES ('2', 'ordinaire', 'Commercant');
INSERT INTO TYPE_VISAS (Type_visa, Passport, Profession) VALUES ('3', 'Diplomate', 'Etudiant');

INSERT INTO HONORAIRE_PAYMENTS ( Honoraire_Payment, Periode, Montant, Commentaire) VALUES ('100', '2019-10-19', '1000', 'Especes');
INSERT INTO HONORAIRE_PAYMENTS (Honoraire_Payment, Periode, Montant, Commentaire) VALUES ('101', '2019-11-20', '500', 'Carte_Bancaire');
INSERT INTO HONORAIRE_PAYMENTS (Honoraire_Payment, Periode, Montant, Commentaire) VALUES ('105', '2019-12-9', '1500', 'Cheque');

INSERT INTO VILLE_RESIDENCE (Code, Ville_Residence, Ville_immigration) VALUES ('AAAA', 'Ouagadougou', 'New_York'); 
INSERT INTO VILLE_RESIDENCE () VALUES ('AAAB', 'Portugal', 'Europe'); 

INSERT INTO TYPE_SERVICES (Type_service, Duree) VALUES ('Etudiant_international', 'Temporaire');
INSERT INTO TYPE_SERVICES (Type_service, Duree) VALUES ('Travailleur_qualifie', 'permanent');0

INSERT INTO CLIENTS (Id_client,Nom, Prenom, Age, Email) VALUES ('201', 'Ronaldo', 'Christiano', '32', 'ronaldochristano@yahoo.fr');
INSERT INTO CLIENTS (Id_client,Nom, Prenom, Age, Email) VALUES ('251', 'Abass', 'Sadissou', '22', 'abasssadisou@monboreal.ca');
INSERT INTO CLIENTS (Id_client,Nom, Prenom, Age, Email) VALUES ('210', 'Abedel', 'kader', '32', 'abdel kader@gmail.com');
