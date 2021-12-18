-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-12-17 07:29:00.016

-- tables
-- Table: Accessories
CREATE TABLE Accessories (
    accessID integer  NOT NULL,
    accessName varchar(25)  NOT NULL,
    fixed varchar(25)  NOT NULL,
    detachable varchar(25)  NOT NULL,
    CONSTRAINT Accessories_pk PRIMARY KEY (accessID)
) ;

-- Table: Billing
CREATE TABLE Billing (
    billID integer  NOT NULL,
    billDate date  NOT NULL,
    billUnits integer  NOT NULL,
    ratePerUnit integer  NOT NULL,
    subTotal integer  NOT NULL,
    grandTotal integer  NOT NULL,
    Customers_custID integer  NOT NULL,
    CONSTRAINT Billing_pk PRIMARY KEY (billID)
) ;

-- Table: Customers
CREATE TABLE Customers (
    custID integer  NOT NULL,
    custName varchar(25)  NOT NULL,
    custContact integer  NOT NULL,
    mobileType varchar(25)  NOT NULL,
    mobileSerial varchar(25)  NOT NULL,
    MOBILES_mobileID integer  NOT NULL,
    CONSTRAINT Customers_pk PRIMARY KEY (custID)
) ;

-- Table: MOBILES
CREATE TABLE MOBILES (
    mobileID integer  NOT NULL,
    mobileName varchar(25)  NOT NULL,
    mobileType varchar(25)  NOT NULL,
    mobileVersion integer  NOT NULL,
    mobileSerial varchar(25)  NOT NULL,
    Accessories_accessID integer  NOT NULL,
    Suppliers_supplierID integer  NOT NULL,
    CONSTRAINT MOBILES_pk PRIMARY KEY (mobileID)
) ;

-- Table: Suppliers
CREATE TABLE Suppliers (
    supplierID integer  NOT NULL,
    supplierName varchar(25)  NOT NULL,
    supplierType varchar(25)  NOT NULL,
    supplierLocation varchar(25)  NOT NULL,
    Contract varchar(25)  NOT NULL,
    Regular varchar(25)  NOT NULL,
    CONSTRAINT Suppliers_pk PRIMARY KEY (supplierID)
) ;

-- foreign keys
-- Reference: Billing_Customers (table: Billing)
ALTER TABLE Billing ADD CONSTRAINT Billing_Customers
    FOREIGN KEY (Customers_custID)
    REFERENCES Customers (custID);

-- Reference: Customers_MOBILES (table: Customers)
ALTER TABLE Customers ADD CONSTRAINT Customers_MOBILES
    FOREIGN KEY (MOBILES_mobileID)
    REFERENCES MOBILES (mobileID);

-- Reference: MOBILES_Accessories (table: MOBILES)
ALTER TABLE MOBILES ADD CONSTRAINT MOBILES_Accessories
    FOREIGN KEY (Accessories_accessID)
    REFERENCES Accessories (accessID);

-- Reference: MOBILES_Suppliers (table: MOBILES)
ALTER TABLE MOBILES ADD CONSTRAINT MOBILES_Suppliers
    FOREIGN KEY (Suppliers_supplierID)
    REFERENCES Suppliers (supplierID);

-- sequences
-- Sequence: Accessories_seq
CREATE SEQUENCE Accessories_seq
      INCREMENT BY 1
      NOMINVALUE
      NOMAXVALUE
      START WITH 1
      NOCACHE
      NOCYCLE;

-- Sequence: Billing_seq
CREATE SEQUENCE Billing_seq
      INCREMENT BY 1
      NOMINVALUE
      NOMAXVALUE
      START WITH 1
      NOCACHE
      NOCYCLE;

-- Sequence: Customers_seq
CREATE SEQUENCE "Customers_seq
      INCREMENT BY 1
      NOMINVALUE
      NOMAXVALUE
      START WITH 1
      NOCACHE
      NOCYCLE;

-- Sequence: MOBILES_seq
CREATE SEQUENCE MOBILES_seq
      INCREMENT BY 1
      NOMINVALUE
      NOMAXVALUE
      START WITH 1
      NOCACHE
      NOCYCLE;

-- Sequence: Suppliers_seq
CREATE SEQUENCE Suppliers_seq
      INCREMENT BY 1
      NOMINVALUE
      NOMAXVALUE
      START WITH 1
      NOCACHE
      NOCYCLE;

-- End of file.

suppliers
SELECT * FROM `gklearning`.`suppliers` LIMIT 1000;

INSERT INTO `gklearning`.`suppliers` VALUES ('101', 'GreenTechSolutions', 'Regular', 'NY', '153', 'Yes');
INSERT INTO `gklearning`.`suppliers` VALUES ('102', 'ReadyPhones', 'Seasonal', 'Texas', '367', 'No');
INSERT INTO `gklearning`.`suppliers` VALUES ('104', 'ITechSolus', 'Regular', 'Washinton', '492', 'Yes');
INSERT INTO `gklearning`.`suppliers` VALUES ('103', 'magnaSol', 'regular', 'LosAngles', '875', 'yes');

accessories
SELECT * FROM `gklearning`.`accesories` LIMIT 1000;

INSERT INTO `gklearning`.`accessories` VALUES ('201', 'game card', 'yes', 'no');
INSERT INTO `gklearning`.`accessories` VALUES ('202', 'zoomer', 'yes', 'no');
INSERT INTO `gklearning`.`accessories` VALUES ('203', 'externpower', 'no', 'yes');

mobiles
SELECT * FROM `gklearning`.`mobiles` LIMIT 1000;

INSERT INTO `gklearning`.`mobiles` VALUES ('301', 'samsung', 'flipflap', '102', '235', '201', '101');
INSERT INTO `gklearning`.`mobiles` VALUES ('302', 'apple', 'seethru', '657', '348', '202', '101');
INSERT INTO `gklearning`.`mobiles` VALUES ('303', 'htc', 'camfit', '712', '456', '201', '102');

customers
SELECT * FROM `gklearning`.`customers` LIMIT 1000;

INSERT INTO `gklearning`.`customers` VALUES ('401', 'JessicaDoe', '678', 'Samsung', '459', '301');
INSERT INTO `gklearning`.`customers` VALUES ('402', 'Mathews', '321', 'apple', '879', '302');
INSERT INTO `gklearning`.`customers` VALUES ('403', 'Robertz', '465', 'htc', '298', '301');

Billing  
SELECT * FROM `gklearning`.`billing` LIMIT 1000;

INSERT INTO `gklearning`.`billing` VALUES ('501', '2021-12-17', '5', '100', '500', '500', '401');
INSERT INTO `gklearning`.`billing` VALUES ('502', '2021-12-17', '1', '35', '35', '535', '402');
INSERT INTO `gklearning`.`billing` VALUES ('503', '2021-12-17', '4', '60', '240', '775', '401');

