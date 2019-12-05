-- Dans le domaine

use carte-graphique;

-- Données de la table étudiants

INSERT INTO ventes ( client, num_client, nom, prenom ) VALUES ( '1', '2', 'Mccall', 'Pauline');
INSERT INTO ventes ( client, num_client, nom, prenom ) VALUES ( '2', '3', 'Redmi', 'Rose');
INSERT INTO ventes ( client, num_client, nom, prenom ) VALUES ( '3', '4', 'Ricky', 'Rick');
INSERT INTO ventes ( client, num_client, nom, prenom ) VALUES ( '4', '5', 'Kadima', 'Tommy');

-- Données de la table devoirs

INSERT INTO clients ( client, num_client, nom, prenom ) VALUES ( '1', '2', 'Pauline');
INSERT INTO clients ( client, num_client, nom, prenom ) VALUES ( '2', '3', 'Rose');
INSERT INTO clients ( client, num_client, nom, prenom ) VALUES ( '3', '4', 'Rick');

-- Données de la table notes

INSERT INTO marchandises ( num_marchandise,nom_marchandise,prix_marchandise,description_marchandise ) VALUES ( '1', 'GTX960', '$275', '2GO');
INSERT INTO marchandises ( num_marchandise,nom_marchandise,prix_marchandise,description_marchandise ) VALUES ( '2', 'GTX560', '$450', '2GO');
INSERT INTO marchandises ( num_marchandise,nom_marchandise,prix_marchandise,description_marchandise ) VALUES ( '3', 'GTX1060', '$805', '4GO');
INSERT INTO marchandises ( num_marchandise,nom_marchandise,prix_marchandise,description_marchandise ) VALUES ( '4', 'GTX1070i', '$1100', '6GO');

-- Données de la table notes

INSERT INTO PAYMENTS ( nom, note ) VALUES ( 'Mccall', Ok);
INSERT INTO PAYMENTS ( nom, note ) VALUES ( 'Ricky', Ok);

-- Données de la table notes

INSERT INTO Models ( nom, note ) VALUES ( 'GTX960', 'Sold');
INSERT INTO Models ( nom, note ) VALUES ( 'GTX560', 'Sold');

-- Données de la table notes

INSERT INTO Capacites ( nom, note ) VALUES ( 'GTX960', '2GO');
INSERT INTO Capacites ( nom, note ) VALUES ( 'GTX560', '2GO');
