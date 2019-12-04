--Mon domaine 
 

CREATE  DATABASE  IF NOT EXISTS vente_portable;
	

--Mon utilsateur 
	

CREATE  USER  IF NOT EXISTS 'thiam'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON vente_portable.* TO 'thiam'@'localhost' ;
	
--Use vente_portable;
	

--Mes tables

	

CREATE TABLE MARKS (
                   mark INT NOT NULL AUTO_INCREMENT,
                   marks VARCHAR(30) NOT NULL,
	           serie VARCHAR(25) NOT NULL,
                   PRIMARY KEY (mark)
                   );
	
	
CREATE TABLE MODELS (
                   model INT NOT NULL AUTO_INCREMENT,
                   models VARCHAR(30) NOT NULL,
	           colours VARCHAR(25),
                   PRIMARY KEY (model)
                   );
		   
CREATE TABLE CUSTOMERS (
	             customer INT NOT NULL AUTO_INCREMENT, 
                     customerName VARCHAR(30) NOT NULL,
		     city VARCHAR(30),
                     address VARCHAR(30) NOT NULL, 
                     PRIMARY KEY(customer)
                     );
CREATE TABLE INVOICES (
                   invoice INT NOT NULL AUTO_INCREMENT,
                   Nom VARCHAR(30) NOT NULL,
                   Date INT,
                   PRIMARY KEY (invoice)
                   );
   
   
CREATE TABLE PRIX (mark INT,
              model INT,
              prix INT,
              PRIMARY KEY(mark, model),
              FOREIGN KEY(mark)
              REFERENCES MARKS(mark),
              FOREIGN KEY(model)
              REFERENCES MODELS(model)
              );
	      CREATE TABLE ORDERS( mark INT,
                                customer INT,
                                invoice INT,
                                orders INT,
    
                 PRIMARY KEY(customer, mark),
                 FOREIGN KEY(customer)
                 REFERENCES CUSTOMERS(customer),
                 FOREIGN KEY(mark)
                 REFERENCES MARKS (mark)
                 );

 



 






 

 



 






 

 



 






 
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
  
