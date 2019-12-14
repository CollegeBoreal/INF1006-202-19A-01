# Quizz (2019-11-19)



## Normalisation  [🎥](https://www.linkedin.com/learning/programming-foundations-databases-2/normalization-2?u=56968449)

:pushpin: 1NF [🎥](https://www.linkedin.com/learning/programming-foundations-databases-2/first-normal-form?u=56968449)

:pushpin: 2NF [🎥](https://www.linkedin.com/learning/programming-foundations-databases-2/second-normal-form?u=56968449)

:pushpin: 3NF [🎥](https://www.linkedin.com/learning/programming-foundations-databases-2/third-normal-form-2?u=56968449)


[:bulb: What are DDL, DML and DQL?](https://en.wikibooks.org/wiki/MySQL/Language/Definitions:_what_are_DDL,_DML_and_DQL%3F)

## :o: Commentaires

```SQL
-- Je suis un commentaire.
-- Je commence par deux tirets suivi d'UN ESPACE
-- Je cause souvent des erreurs d'inattentions
```

## :a: DDL



:bangbang: Attention: MySQL respecte la règle des `Majuscules` et `Minuscules` pour le nom des tables !




:one: CREATE {DATABASE/TABLE/USER} (target);

##### :m: DATABASE

```SQL
mysql> CREATE DATABASE <name>;
```


##### :m: TABLE [🎥](https://www.linkedin.com/learning/decouvrir-mysql/comprendre-les-commandes-ddl-sur-une-table?u=56968449)

```SQL
> CREATE TABLE <name> ( 
    <nom_champ1> <type1> <option1>, 
    <nom_champ2> <type1> <option2>, 
    ...
  );
```

:pushpin: Type :

| Type                 |  SQL                  | Format                   |
|----------------------|-----------------------|--------------------------|
| Nombre               |INT, DOUBLE, FLOAT     | 1 - 10, 1.0 - 10.0       |  
| Date                 | DATE                  | '1990-01-01'             |
| booleen              | BOOLEAN               | True, False              |
| Chaine de caracteres | VARCHAR(<size>), TEXT | '1', '2.6', '2009-12-02' |
  
:pushpin: Option: 

| Option             | Description                                                  | 
|--------------------|--------------------------------------------------------------|
| AUTO_INCREMENT     | Omettre (N'apparait pas) dans le INSERT statement            |
| NOT NULL           | Le champ ne peut etre nul sinon Erreur                       |
| PRIMARY KEY        | :bulb: Peut etre placé ailleurs                              |
| DEFAULT `<valeur>` | :question:                                                   |

##### :m: USER 

:pushpin: Adresse IP Locale

```SQL
mysql> CREATE USER 'nom'@'localhost' IDENTIFIED BY 'passwd'; -- Utilisateur accedant a la machine locale
```

:pushpin: Adresse IP Distante (avec `wildcard` **%** )

```SQL
mysql> CREATE USER 'nom'@'%' IDENTIFIED BY 'passwd'; -- Utilisateur accedant a la machine distante
```

:two: DROP {DATABASE/TABLE} <name>;

##### :m: DATABASE

```SQL
mysql> DROP DATABASE <name>;
```

##### :m: TABLE 

```SQL
mysql> DROP TABLE <name>;
```
##### :m: USER 

```SQL
mysql> DROP USER <name>;
```

:three: Keys :key:
 
 ##### :m: [Primaire](http://www.mysqltutorial.org/mysql-primary-key/) 
     
```SQL
    CREATE TABLE CLIENTS ( ...
       client INT AUTO_INCREMENT,
    
    
    PRIMARY KEY(client)    
    );
``` 

##### :m: Etrangere
 
 
```SQL
    CREATE TABLE VILLES ( ...
       ville INT,
       pays INT,
    
    
    FOREIGN KEY(pays) REFERENCES PAYS(pays),
    );
``` 
:bulb: Observez le trait `discontinu` entre les :two: tables et le champ pays en rouge dans la table `VILLES`

 <img src='images/FK.png' width="170" height="328"></img> |  <img src='images/quiz.png' width="600" height="330"></img>
 
##### :m: composite (Primaire) 

```SQL
    CREATE TABLE VENTES ( ...
       produit INT,
       client INT,
       ...    
    
      PRIMARY KEY( produit, client),
      FOREIGN KEY(produit) REFERENCES PRODUITS(produit),
      FOREIGN KEY(client) REFERENCES CLIENTS(client)
    );
``` 
:bulb: Observez le trait `continu` entre les :three: tables

<img src='images/CK.png' width="800" height="328"></img>

:four: Constraints

#### :m: Relationship Constraints

:pushpin: [Foreign Key](https://dev.mysql.com/doc/refman/8.0/en/create-table-foreign-keys.html#foreign-key-examples)

```sql
mysql> SHOW CREATE TABLE VILLES
*************************** 1. row ***************************
       Table: VILLES
Create Table: CREATE TABLE `VILLES` (
  `ville` int DEFAULT NULL,
  `pays` int DEFAULT NULL,
  INDEX `pay_ind` (`pays`),
  CONSTRAINT `ville_ibfk_1` FOREIGN KEY (`pays`) 
  REFERENCES `PAYS` (`pays`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
```

#### :m: Data Quality Constraints

:pushpin: [Check](https://dev.mysql.com/doc/refman/8.0/en/create-table-check-constraints.html)

```sql
mysql> CREATE TABLE t1 (
  c1 INT CHECK (c1 > 10),
  CONSTRAINT c1_nonzero CHECK (c1 <> 0)
);
```

:pushpin: [unique](http://www.mysqltutorial.org/mysql-unique-constraint/)

```sql
mysql> CREATE TABLE `ETUDIANTS` (
  `etudiant` INT NOT NULL AUTO_INCREMENT,
  `prenom` VARCHAR(45) NOT NULL,
  `nom` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`etudiant`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC)
);
```

## :b: DCL


:four: Permissions

##### :m: [GRANT](http://www.mysqltutorial.org/mysql-grant.aspx)

```
mysql> GRANT <Privilege> ON <base de donnee>.<tables> (ou `*` wildcard) TO <USER>;  
```

##### :m: [REVOKE](http://www.mysqltutorial.org/mysql-revoke.aspx)

```
mysql> REVOKE <Privilege> ON <base de donnee>.<tables> (ou `*` wildcard) FROM <USER>;  
```

:pushpin: Privileges [:blue_book:](http://ask.xmodulo.com/create-configure-mysql-user-command-line.html) 

| Privileges | Description                   | 
|------------|-------------------------------|
| ALL        | Tous les privileges           |
| SELECT     | Lecture seulement             |
| INSERT     | Ajout uniquement              |


## :ab: DML

voir l'explication  [`INSERT AUTO_INCREMENT`](https://dev.mysql.com/doc/mysql-tutorial-excerpt/5.7/en/example-auto-increment.html)


## :x: DQL 

##### :m: Join

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

:pushpin: Produit Cartesien

![image](images/cartesian_product.png)

##### :m: Stats

```sql
mysql> SELECT COUNT(*) FROM ETUDIANTS;
```

##### :m: Explain

```
Explain sert à montrer le chemin pris par la recherche de données.

Le but étant de trouver la meilleure route pour accélérer le retour des données

Activer un index indique une meilleur performance
```

![image](images/index.png)

:pushpin: Sans utiliser un index

```sql
mysql> EXPLAIN SELECT * from ETUDIANTS;
```

![image](images/EXPLAIN_ALL.png)

:pushpin: Utilise deux indexes (i.e. possible keys)

```sql
mysql> EXPLAIN SELECT * from ETUDIANTS WHERE programme > 1 OR etudiant = 1;
```

![image](images/EXPLAIN_KEY.png)


## :o2: MySQL Admin Commands

##### :m: SHOW <artifacts>
    
```mysql
mysql> SHOW DATABASES;
```

```mysql
mysql> SHOW TABLES;
```

```mysql
mysql> SHOW GRANTS FOR rfc@localhost;
```

##### :m: describe

```mysql
mysql> DESCRIBE <nom de table>;
```


##### :m:  use

```mysql
mysql> USE <database>;
```

##### :m:  mysql.user

```mysql
mysql> SELECT host, user, password FROM mysql.user;
+------+-----------+-------------------------------------------+
| host | user      | password                                  |
+------+-----------+-------------------------------------------+
| %    | root      | *2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19 |
| %    | etudiants | *DAFBEF26A36FED36DEDC56E4B03974353E90F522 |
+------+-----------+-------------------------------------------+
2 rows in set (0.00 sec)
```
