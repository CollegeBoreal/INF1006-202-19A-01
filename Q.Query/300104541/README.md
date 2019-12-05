## Jeux Videos DataBase

![image](jeux.png)


## REQUETES

1- Imprimer tout les jeux de consoles Playsation
2-
3-

R1- 
```sql
SELECT * FROM JEUX JOIN CONSOLES
ON (JEUX.console = CONSOLES.console)
WHERE CONSOLES.Consoles ='PS4';
```
