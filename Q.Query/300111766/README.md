vente_portable
![](images/bd2.png)

LES QUERY

-- IMPRIMER LA MOYENNE DES PRIX DE PRTABLES DANS LA BASE DE DONNEE vente_portabe.


    SELECT AVG(price) FROM PRICES;
    
![images](https://github.com/CollegeBoreal/INF1006-202-19A-01/blob/master/Q.Query/300111766/images/LE%20PRIX%20DE%20PORTABLE%20LE%20MOINS%20CHER.png?raw=true)
    
 -- IMPRIMER LE PRIX DE PORTABLE LE MOINS CHER.  
 
  ![image](https://github.com/CollegeBoreal/INF1006-202-19A-01/blob/master/Q.Query/300111766/images/LE%20PRIX%20DE%20PORTABLE%20LE%20MOINS%20CHER.png?raw=true)
    
    -- IMPRIMER LE PRIX DE PORTABLE LE PLUS CHER.
    
  ![image](https://github.com/CollegeBoreal/INF1006-202-19A-01/blob/master/Q.Query/300111766/images/LE%20PRIX%20DE%20PORTABLE%20LE%20PLUS%20CHER.png?raw=true)
    
  -- IMPRIMER LE NON DES CLIENT DONT LEURS AGES DEPASSENT 25ANS
  
  
    SELECT name FROM CUSTOMERS WHERE age>25;
    
  ![image](https://github.com/CollegeBoreal/INF1006-202-19A-01/blob/master/Q.Query/300111766/images/TOUS%20LES%20CLIENS%20DONT%20LEURS%20AGE%20DEPASSENT%2025ANS.png?raw=true)
  
  -- IMPRIMER LE NOM DE MODEL ET LE PRIX DU PORTABLE;
  
  
  
  EXPLAIN SELECT name
  FROM MODELS
  INNER JOIN PRICES
  ON MODELS.name = PRICES.price;
  
 ![image](https://github.com/CollegeBoreal/INF1006-202-19A-01/blob/master/Q.Query/300111766/images/inner%20join%202.png?raw=true)
 
  -- IMPRIMER TOUS LES NOMS DES CLIENTS ET TRIES PAR LEUR AGES 
  
  SELECT name, age
  FROM CUSTOMERS
  ORDER BY  age ASC;

 ![image](https://github.com/CollegeBoreal/INF1006-202-19A-01/blob/master/Q.Query/300111766/images/ORDER%20BY.png?raw=true)




