# Carte_graphique


![image](graphique.png)

### Rapport

:heavy_check_mark: Imprimer les clients qui habites dans la ville de vancouver et ottawa.

:heavy_check_mark: Imprimer les tables client, marchandise, prix et payment.

### :one: Requête

```
select Nom_client, ville from CLIENTS 
where Ville= 'vancouver' or ville= 'ottawa';
```

![image](ville.jpeg)

### :two: Requête

```
SELECT Nom_client, nom_marchandise, prix, payment FROM MARCHANDISES
inner join PAYMENT ON MARCHANDISES.marchandise=PAYMENT.marchandise
inner join CLIENTS on PAYMENT.idclient=CLIENTS.idclient;
```

![image](join.jpeg)
