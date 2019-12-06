CREATE DATABASE IF NOT EXISTS widesign;




CREATE USER IF NOT EXISTS 'widesign'@'localhost' IDENTIFIED BY 'widesign_1';
GRANT ALL ON widesign.* TO 'widesign'@'localhost';


use widesign;

      
CREATE TABLE IMAGES (
  image INT AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY(image)
  );
  
CREATE TABLE USES (
  use INT AUTO_INCREMENT,
  social_networks VARCHAR(50) NOT NULL,
  PRIMARY KEY(use)
  );
  
CREATE TABLE FORMATS (
  format VARCHAR (50),
  PRIMARY KEY (format)
       );

CREATE TABLE PAPIERS (
 papier VARCHAR (40),
 nomdupapier VARCHAR (40),
  PRIMARY KEY (papier)
 );      
 

CREATE TABLE COLORS (
  color INT AUTO_INCREMENT,
  Colors VARCHAR(50),
    PRIMARY KEY(color)
     
);

CREATE TABLE SHIPPINGS (
shipping INT AUTO_INCREMENT,
shipp DATE,
PRIMARY KEY(shipping)

);
       
CREATE TABLE CUSTOMERS(
  customer VARCHAR(4) NOT NULL,
  nom VARCHAR(40),
  prenom VARCHAR(40),
  PRIMARY KEY(customer)
);

CREATE TABLE DELIVERIES (
   delivery INT AUTO_INCREMENT,
   image INT,
   social_networks VARCHAR(50) NOT NULL,
   PRIMARY KEY(delivery, image),
     FOREIGN KEY(image)
       REFERENCES IMAGES(image)
   );
   
CREATE TABLE PRICES (
  price INT,
  image INT,
  PRIMARY KEY(image, price),
  FOREIGN KEY(image)
     REFERENCES IMAGES(image)

  );
       
 CREATE TABLE FRAMES (
      frame VARCHAR (40) NOT NULL ,
      woodframe VARCHAR (40) NOT NULL ,
      metalframe VARCHAR (40) NOT NULL ,
      format VARCHAR (50),
      papier VARCHAR (40),
      PRIMARY KEY(frame),
            FOREIGN KEY(papier)
              REFERENCES PAPIERS(papier),
            FOREIGN KEY(format)
              REFERENCES FORMATS(format)
      );      
       
CREATE TABLE INVOICES (
  invoice INT AUTO_INCREMENT,
  customer VARCHAR(4),
  price INT,
  delivery INT,
  PRIMARY KEY(invoice,price),
     FOREIGN KEY(customer)
        REFERENCES CUSTOMERS(customer),
     FOREIGN KEY(price)
        REFERENCES PRICES(price),
     FOREIGN KEY(delivery)
        REFERENCES DELIVERIES(delivery)
 );
