--Mon domaine 
 

CREATE  DATABASE  IF NOT EXISTS vente_portable;
	

--Mon utilsateur 
	

CREATE  USER  IF NOT EXISTS 'thiam'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON vente_portable.* TO 'thiam'@'localhost' ;
	
--Use vente_portable;
	

--Mes tables

	

CREATE TABLE MARKS (
                   mark INT NOT NULL AUTO_INCREMENT,
                   name VARCHAR(30) NOT NULL,
                   PRIMARY KEY (mark)
                   );
	
	
CREATE TABLE MODELS (
                   model INT NOT NULL AUTO_INCREMENT,
	           modelName VARCHAR(30),
                   PRIMARY KEY(model)
		   );
	
	
CREATE TABLE INVOICES (
                   invoice INT NOT NULL AUTO_INCREMENT,
                   Nom VARCHAR(30) NOT NULL,
                   Date INT,
                   PRIMARY KEY(invoice)
                   );
		   
CREATE TABLE PRICES (
        mark INT,
        model INT,
        invoice INT,
        price INT,
 
        PRIMARY KEY (mark, model, invoice),
        FOREIGN KEY(mark)
        REFERENCES MARKS(mark),
        FOREIGN KEY(model)
        REFERENCES MODELS(model),
        FOREIGN KEY(invoice)
        REFERENCES INVOICES(invoice)
    
       );
   
CREATE TABLE CUSTOMERS (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    UNIQUE (ID)
);




 
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
  
