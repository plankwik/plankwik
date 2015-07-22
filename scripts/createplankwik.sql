DROP TABLE IF EXISTS customer;

CREATE TABLE customer (

  id BIGINT(20) NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(75) NOT NULL,
  middle_name VARCHAR(75) DEFAULT NULL,
  last_name VARCHAR(75) NOT NULL,
  date_of_birth DATETIME NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(500) NOT NULL,
  cell_phone INT NOT NULL, 
  pan_number VARCHAR(75) NOT NULL,
  address1 VARCHAR(100) NOT NULL,
  address2 VARCHAR(100) DEFAULT NULL,
  city VARCHAR(75) NOT NULL,
  state VARCHAR(75) NOT NULL,
  zip_code INT(6) NOT NULL,
  risk_profile_calculated VARCHAR(75) DEFAULT NULL,
  creation_date DATETIME NOT NULL,
  last_updated_date DATETIME NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY email (email)
  
) auto_increment 1;

DROP TABLE IF EXISTS customer_role;

CREATE TABLE customer_role (
  id BIGINT(20) NOT NULL,
  rolename VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS CUSTOMER_ROLE;

CREATE TABLE CUSTOMER_ROLE (
   email VARCHAR(100) NOT NULL,
   rolename VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS risk_profile;

CREATE TABLE risk_profile (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  email varchar(100) NOT NULL,
  completed tinyint(1) NULL DEFAULT 0,
  total_score int NULL,
  PRIMARY KEY (id),
  UNIQUE KEY email (email)
);

DROP TABLE IF EXISTS dependents;

CREATE TABLE dependents (
   email varchar(100) NOT NULL,
   name VARCHAR(75) NOT NULL
   
);

DROP TABLE IF EXISTS customer_goals;

CREATE TABLE customer_goals (
   email varchar(100) NOT NULL
   
);
