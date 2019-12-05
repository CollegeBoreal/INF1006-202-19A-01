CREATE DATABASE musicshop;


CREATE USER 'musicshop'@'localhost' IDENTIFIED BY 'musicshop_1';
GRANT ALL ON musicshop.* TO 'musicshop'@'localhost';

use musicshop;


CREATE TABLE Customers  (
  initiale VARCHAR(30) NOT NULL
  );

CREATE TABLE Price (
  nom VARCHAR(30) NOT NULL,
  note INT
  );
  
  CREATE TABLE Instruments (
  nom VARCHAR(30) NOT NULL,
  note INT
  );
  
 CREATE TABLE Color (
  nom VARCHAR(30) NOT NULL,
  note INT
  );-- 
