## Jeux Videos DataBase

![image](jeux.png)


## REQUETES

1- Imprimer tout les jeux de consoles Playsation
2- Imprimer le nombre total des consoles 
3-

R1- 
```sql
SELECT * FROM JEUX JOIN CONSOLES
ON (JEUX.console = CONSOLES.console)
WHERE CONSOLES.Consoles ='PS4';
```
R2-
```sql
SELECT  COUNT(console) FROM CONSOLES;
```
