vente_portable
![](images/bd2.png)

LES QUERY

-- IMPRIMER LA MOYENNE DES PRIX DE PRTABLES DANS LA BASE DE DONNEE vente_portabe.

SELECT AVG(price) FROM PRICES;
    
![images](https://github.com/CollegeBoreal/INF1006-202-19A-01/blob/master/Q.Query/300111766/images/LA%20MOYENNE%20DES%20PRIX%20(2).png)
    
 -- IMPRIMER LE PRIX DE PORTABLE LE MOINS CHER.  
 
![image](https://github.com/CollegeBoreal/INF1006-202-19A- 01/blob/master/Q.Query/300111766/images/LE%20PRIX%20DE%20PORTABLE%20LE%20MOINS%20CHER.png?raw=true)
    
-- IMPRIMER LE PRIX DE PORTABLE LE PLUS CHER.
   ![image](https://github.com/CollegeBoreal/INF1006-202-19A-01/blob/master/Q.Query/300111766/images/LE%20PRIX%20DE%20PORTABLE%20LE%20PLUS%20CHER.png?raw=true)
   
-- IMPRIMER LE NOM DE MARK ET LE PRIX INFERIEUR A 1000$
   
select name FROM MARKS
INNER JOIN PRICES
ON MARKS.Name =PRICES.price WHERE price>1000;

-- IMPRIMER LE NOM DE MARK ET LE PRIX INFERIEUR A 1000$

    
    
    ![]()
    ![]()
    ![]()




