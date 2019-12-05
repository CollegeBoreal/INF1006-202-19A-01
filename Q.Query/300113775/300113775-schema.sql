CREATE DATABASE widesign;




CREATE USER IF NOT EXISTS 'widesign'@'localhost' IDENTIFIED BY 'widesign_1';
GRANT ALL ON widesign.* TO 'widesign'@'localhost';


use widesign;

      
CREATE TABLE IMAGES (
  image INT AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY(image)
  );
  
CREATE TABLE USES (
  utilisation INT AUTO_INCREMENT,
  social_networks VARCHAR(50) NOT NULL,
  PRIMARY KEY(utilisation)
  );
  
CREATE TABLE FRAMES (
      frame VARCHAR (40) NOT NULL ,
      woodframe VARCHAR (40) NOT NULL ,
      metalframe VARCHAR (40) NOT NULL ,
      papier VARCHAR (40),
      PRIMARY KEY(frame),
            FOREIGN KEY(papier)
              REFERENCES PAPIERS(papier),
            FOREIGN KEY(format)
              REFERENCES FORMATS(format)
      );
      
      
 CREATE TABLE PAPIERS (
      papier VARCHAR (40),
      nomdupapier VARCHAR (40),
      PRIMARY KEY (papier)
        );
        
        
        
 CREATE TABLE FORMATS (
        format VARCHAR (50),
        PRIMARY KEY (format)
       );
 






CREATE TABLE DELIVERIES (
   delivery INT AUTO_INCREMENT,
   image INT,
   social_networks VARCHAR(50) NOT NULL,
   PRIMARY KEY(delivery, image),
     FOREIGN KEY(image)
       REFERENCES IMAGES(image)
   );

CREATE TABLE COLORS (
      color VARCHAR(30)
     
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




CREATE TABLE PRICES (
  invoice INT,
  price INT,
  image INT,
  delivery INT,
  PRIMARY KEY(image, delivery,price),
  FOREIGN KEY(image)
     REFERENCES IMAGES(image),
  FOREIGN KEY(delivery)
     REFERENCES DELIVERIES(delivery),

  );
       
       
       
CREATE TABLE INVOICES (
  invoice INT AUTO_INCREMENT,
  customer VARCHAR(4),
  price INT,
  PRIMARY KEY(invoice,price),
     FOREIGN KEY(customer)
        REFERENCES CUSTOMERS(customer),
     FOREIGN KEY(price)
        REFERENCES PRICES(price)
 );
