CREATE DATABASE Car_Center;


CREATE USER 'joker'@'localhost' IDENTIFIED BY 'etudiants_1';
GRANT ALL ON Car_Center.* TO 'joker'@'localhost';

 
 
use Car_center;



CREATE TABLE SERVICES_OFFERED (
  name VARCHAR(30) NOT NULL
  );
  
CREATE TABLE MARK (
  name VARCHAR(30) NOT NULL
  );
  
CREATE TABLE MODEL (
   name VARCHAR(30) NOT NULL
   );
   
CREATE TABLE ORIGIN (
    name VARCHAR(30) NOT NULL
    );
    
CREATE TABLE COLOUR (
   name VARCHAR(30) NOT NULL
   );
   
CREATE TABLE YEARS (
  name INT NOT NULL
  );

CREATE TABLE ENGIN_TYPE (
  name VARCHAR(30) NOT NULL
  );

CREATE TABLE PRICE (
  name INT NOT NULL
  );

CREATE TABLE MAINTENANCE (
  name VARCHAR(30) NOT NULL
  );
  
  
