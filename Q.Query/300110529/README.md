# carte-graphique


![image](graphique.png)

### :one: Les Requêtes

:heavy_check_mark: Imprimer les clients qui habites dans la ville de vancouver et ottawa.

```
select Nom_client, ville from CLIENTS 
where Ville= 'vancouver' or ville= 'ottawa';
```

![image](ville.jpeg)

### :two: Les Requêtes Avec Jointures

```
SELECT Nom_client, nom_marchandise, prix, payment FROM MARCHANDISES
inner join PAYMENT ON MARCHANDISES.marchandise=PAYMENT.marchandise
inner join CLIENTS on PAYMENT.idclient=CLIENTS.idclient;
```

:heavy_check_mark: 

![image](join.jpeg)
