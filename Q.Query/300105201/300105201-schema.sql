CREATE DATABASE IF NOT EXISTS musicshop;


CREATE USER IF NOT EXISTS 'musicshop'@'localhost' IDENTIFIED BY 'musicshop_1';
GRANT ALL ON musicshop.* TO 'musicshop'@'localhost';

use musicshop;


CREATE TABLE SERVICES_OFFERED  (
  service_offered INT NOT NULL,
  Services VARCHAR(30) NOT NULL,
  PRIMARY KEY(service_offered)
  );
  
CREATE TABLE CUSTOMERS  (
  customer INT AUTO_INCREMENT,
  Name VARCHAR(30) NOT NULL,
  Phone_number INT NOT NULL,
  PRIMARY KEY(customer)
  );
  
  
  CREATE TABLE COLOURS (
  colour INT NOT NULL,
  Colors VARCHAR(30) NOT NULL,
   PRIMARY KEY(colour)
  ); 
  
  
   CREATE TABLE INSTRUMENTS (
  instrument INT AUTO_INCREMENT,
  Types TEXT NOT NULL,
  Name VARCHAR(30) NOT NULL,
    PRIMARY KEY(instrument)
  );
  

CREATE TABLE PRICES (
  price  INT AUTO_INCREMENT,
  instrument INT,
  colour INT,
  PRIMARY KEY(price, instrument),
    FOREIGN KEY(instrument)
      REFERENCES INSTRUMENTS(instrument),
    FOREIGN KEY(colour)
      REFERENCES COLOURS(colour)
  );
  
  CREATE TABLE PAYMENTS (
    payment INT AUTO_INCREMENT,
    transaction_date DATE,
    price INT, 
    customer INT,
    PRIMARY KEY(payment),
      FOREIGN KEY(price)
        REFERENCES PRICES(price),
      FOREIGN KEY(customer)
        REFERENCES CUSTOMERS(customer)
);
