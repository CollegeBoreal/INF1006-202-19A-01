# :Base des donnees

### :one: Reverse Engineering

![image](pattes.PNG)

### :two: Les Requêtes

Imprimer toutes les tables produits.

Imprimer toutes les tables clients.

imprimer toutes les tables payements.

Imprimer tout produit dont la couleur id = 1

### :three: Les Requêtes Sans Jointures

SELECT * FROM PRODUITS;

SELECT * FROM CLIENTS;

SELECT * FROM PAYEMENTS;

![image](noire.PNG)

SELECT * FROM PRODUITS WHERE Couleur = 1;

![image](noire1.PNG)

![image](noire2.PNG)

### :four: Les Requêtes Avec Jointures

SELECT * FROM PRODUITS JOIN COULEURS ON (COULEURS.couleur = PRODUITS.couleur);

SELECT * FROM PRODUITS JOIN COULEURS USING (couleur);

