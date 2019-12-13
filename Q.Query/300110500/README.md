
# :pushpin: ma capture immigration consulting


![image](image.png)

## :pushpin: Mes requetes sql

### :one: 	Imprimer tous les enregistrements de la table TYPE_VISAS\

select * from TYPE_VISAS;

### :two: Trier tous les enregistrements  de la table CLIENTS  par age

select * from CLIENTS order by Age;

### :three:Imprimer tous les paiements d'honoraire dont le montant est superieur a 500 $

select * from HONORAIRE_PAYMENTS where Montant >500;

### :four: Imprimer le montant total  des honoraires encaisses

SELECT SUM(Montant)
FROM HONORAIRE_PAYMENTS;
