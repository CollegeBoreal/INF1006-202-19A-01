--Mon domaine 
 

CREATE  DATABASE  IF NOT EXISTS vente_portable;
	

--Mon utilsateur 
	

CREATE  USER  IF NOT EXISTS 'thiam'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON vente_portable.* TO 'thiam'@'localhost' ;
	
--Use vente_portable;
	

--Mes tables

		   
CREATE TABLE customers (
	             customerID INT NOT NULL AUTO_INCREMENT, 
                     customerName VARCHAR(30) NOT NULL,
		     city VARCHAR(30),
                     phoneNumber INT, 
                     PRIMARY KEY(customerID)
                     );
		     
		     
CREATE TABLE invoices (
                   invoiceId INT NOT NULL AUTO_INCREMENT,
                   Nom VARCHAR(30) NOT NULL,
                   Date INT,
                   PRIMARY KEY (invoiceId)
                   );
   
CREATE TABLE categories(
    categoryId INT AUTO_INCREMENT PRIMARY KEY,
    categoryName VARCHAR(100) NOT NULL
) ENGINE=INNODB;
 
CREATE TABLE products(
    productId INT AUTO_INCREMENT PRIMARY KEY,
    productName varchar(100) not null,
    categoryId INT,
    CONSTRAINT fk_category
    FOREIGN KEY (categoryId) 
        REFERENCES categories(categoryId)
) ENGINE=INNODB;

CREATE TABLE prices(
invoiceId INT,
productId INT,
categoryId INT,
priceID INT, 
PRIMARY KEY (invoiceId, productId, categoryId),
FOREIGN KEY(invoiceId) 
REFERENCES invoices(invoiceId),
FOREIGN KEY(productId) 
REFERENCES products(productId),
FOREIGN KEY(categoryId) 
REFERENCES categories(categoryId)

);
 
 
		  

 



 






 

 



 






 

 



 






 
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
  
