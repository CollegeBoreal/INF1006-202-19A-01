# :ab: Query

## :bookmark: [Participation](Participation.md)

## :one: Votre Modele

:pushpin: En utilisant votre propre modèle, créer des rapports utiles à vos utilisateurs 

### Examples:

1. Imprimer le nom et le montant de la facture totale des personnes habitant la ville de Lubumbashi
2. Imprimer le nom et le montant de factures des personnes habitant le Congo et l'algerie (ANSI-92)
3. Imprimer le nom et le montant de la facture totale des personnes habitant le Congo et l'Algerie (ANSI-92)
4. Quel(le) acteur(rice) est apparu(e) dans le plus de films?
5. Quel est la longueur moyenne des films par catégorie? Trié par longueur moyenne
6. Quel sont les catégories qui ont les plus longs films (i.e. dépassant la longueur moyenne) ? Trié par longueur moyenne

## :two: Jointures

:pushpin: Vos requetes doivent comporter des jointures

http://code.openark.org/blog/mysql/mysql-joins-on-vs-using-vs-theta-style

```
MySQL joins: ON vs. USING vs. Theta-style
July 11, 2012
What is the difference between the following three syntaxes?

  SELECT * FROM film JOIN film_actor ON (film.film_id = film_actor.film_id)
  SELECT * FROM film JOIN film_actor USING (film_id)
  SELECT * FROM film, film_actor WHERE film.film_id = film_actor.film_id

The difference is mostly syntactic sugar, but with a couple interesting notes.

To put names, the first two are called "ANSI-style" while the third is called "Theta-style".
```


```sql
SELECT * FROM city;

SELECT * FROM country;

SELECT * FROM country WHERE country.country = 'Congo, The Democratic Republic of the';

SELECT city.city FROM city
INNER JOIN country ON (country.country_id = city.country_id)
WHERE country.country = 'Morocco';

SELECT city.city FROM city
INNER JOIN country USING (country_id)
WHERE country.country = 'Italy';
```


```sql
-- SELECT * FROM ETUDIANTS;

-- SELECT NOTES.note FROM NOTES
-- INNER JOIN ETUDIANTS ON (ETUDIANTS.etudiant = NOTES.etudiant)
-- WHERE ETUDIANTS.nom = 'Thiam';

-- SELECT NOTES.note FROM NOTES
-- INNER JOIN ETUDIANTS USING (etudiant)
-- WHERE ETUDIANTS.nom = 'Thiam';

SELECT * FROM ETUDIANTS, NOTES; -- Theta
```
