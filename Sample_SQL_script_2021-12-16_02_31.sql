-- This is an example SQL script. 
-- Currently, more complicated structures such as stored procedures are not supported.
CREATE TABLE user_account (
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    birthdate DATE,
    PRIMARY KEY (id)
);

INSERT INTO user_account (first_name, last_name, birthdate)
    VALUES ('Anthony', 'Arnulf', '1990-08-05');
INSERT INTO user_account (first_name, last_name, birthdate)
    VALUES ('Arnt', 'Orski', '1980-10-02');
INSERT INTO user_account (first_name, last_name, birthdate)
    VALUES ('Jana', 'Leia', '1980-10-02');

SELECT first_name, last_name, birthdate
  FROM user_account;

