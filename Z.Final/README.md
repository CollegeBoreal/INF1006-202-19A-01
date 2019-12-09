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
> CREATE DATABASE <name>;
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
> CREATE USER 'nom'@'localhost' IDENTIFIED BY 'passwd'; -- Utilisateur accedant a la machine locale
```

:pushpin: Adresse IP Distante (avec `wildcard` **%** )

```SQL
> CREATE USER 'nom'@'%' IDENTIFIED BY 'passwd'; -- Utilisateur accedant a la machine distante
```

:two: DROP {DATABASE/TABLE} <name>;

##### :m: DATABASE

```SQL
> DROP DATABASE <name>;
```

##### :m: TABLE 

```SQL
> DROP TABLE <name>;
```
##### :m: USER 

```SQL
> DROP USER <name>;
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


## :b: DCL


:four: Permissions

##### :m: [GRANT](http://www.mysqltutorial.org/mysql-grant.aspx)

```
> GRANT <Privilege> ON <base de donnee>.<tables> (ou `*` wildcard) TO <USER>;  
```

##### :m: [REVOKE](http://www.mysqltutorial.org/mysql-revoke.aspx)

```
> REVOKE <Privilege> ON <base de donnee>.<tables> (ou `*` wildcard) FROM <USER>;  
```

:pushpin: Privileges [:blue_book:](http://ask.xmodulo.com/create-configure-mysql-user-command-line.html) 

| Privileges | Description                   | 
|------------|-------------------------------|
| ALL        | Tous les privileges           |
| SELECT     | Lecture seulement             |
| INSERT     | Ajout uniquement              |


## :ab: DML

voir l'explication  [`INSERT AUTO_INCREMENT`](https://dev.mysql.com/doc/mysql-tutorial-excerpt/5.7/en/example-auto-increment.html)



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
