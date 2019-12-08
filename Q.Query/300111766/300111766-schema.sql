--Mon domaine 
 

CREATE  DATABASE  IF NOT EXISTS vente_portable;
	

--Mon utilsateur 
	

CREATE  USER  IF NOT EXISTS 'thiam'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON vente_portable.* TO 'thiam'@'localhost' ;
	
--Use vente_portable;
	

--Mes tables

	

CREATE TABLE MARKS (
                   mark_Id VARCHAR(30),
                   name VARCHAR(30) NOT NULL,
                   PRIMARY KEY (mark_Id)
                   );
	
	
CREATE TABLE MODELS (
                   model_Id,
	           modelName VARCHAR(30),
                   PRIMARY KEY(model_Id)
		   );
	
	
CREATE TABLE INVOICES (
                   invoice INT NOT NULL AUTO_INCREMENT,
                   Nom VARCHAR(255) NOT NULL,
                   Date INT,
                   PRIMARY KEY(invoice)
                   );
		   
CREATE TABLE PRICES (
        mark VARCHAR(3O),
        model VARCHAR(30),
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
  customer INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  invoice INT(11) NULL DEFAULT NULL,
  age INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (customer),
  INDEX invoice (invoice ASC),
  CONSTRAINT CUSTOMERS_ibfk_1
    FOREIGN KEY (invoice)
    REFERENCES INVOICES (invoice)
);




 
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
  
