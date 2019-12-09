
## WIDESIGN (MODELE )

![image](modele3.jpg)



:one:-Imprimer le nombre total des clients 

SELECT count(customer) FROM CUSTOMERS;


:two:- Imprimer le nom et le numero de telephone des clients ainsi que les dates ils ont retournés leur produit 

SELECT CUSTOMERS.nom, CUSTOMERS.telephone, INVOICES.retour
FROM CUSTOMERS
JOIN INVOICES 
ON (CUSTOMERS.customer = INVOICES.customer);

:three:-Imprimer le nom et le codepostal des clients qui ont eu des reductions 
SELECT CUSTOMERS.nom, CUSTOMERS.codepostal, INVOICES.reduction
FROM CUSTOMERS
JOIN INVOICES 
ON (CUSTOMERS.customer = INVOICES.customer);
