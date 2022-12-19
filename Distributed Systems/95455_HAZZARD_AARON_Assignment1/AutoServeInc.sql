--drop sequence staff_ID;
CREATE SEQUENCE staff_ID
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

--drop sequence employee_ID;
CREATE SEQUENCE employee_ID
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;


--drop sequence client_ID;
CREATE SEQUENCE client_ID
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

--drop sequence mechanic_ID;
CREATE SEQUENCE mechanic_ID
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

--drop sequence regID;
CREATE SEQUENCE regID
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

select * from employee;
select * from mechanic;
select * from staff;
select * from clients;
select * from registrationq;

INSERT INTO employee values(employee_ID.nextval,'Winston', 'Fields', 'winston.fields@admin.autoserve.com', '623-4567', 'admin', 'Admin');
--INSERT INTO employee values(2,'Shannon', 'Hazzard', 'shannon.hazzard@staff.autoserve.com', '623-4567', 'shannonhazzard', 'Staff');
--INSERT INTO employee values(3,'Sharon', 'Manzon', 'sharon.manzano@mechanic.autoserve.com', '623-4567', 'sharonmanzano','Mechanic');
--INSERT INTO staff values(1,'Shannon', 'Hazzard', 'shannon.hazzard@staff.autoserve.com', '623-4567', 'shannonhazzard','Staff');
--INSERT INTO mechanic values(1,'Sharon', 'Manzon', 'sharon.manzano@mechanic.autoserve.com', '623-4567', 'sharonmanzano','Mechanic');

--drop table employee;
CREATE TABLE employee(
    ID NUMBER NOT NULL, 
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    email VARCHAR(50) PRIMARY KEY NOT NULL,
    phone VARCHAR(20) NOT NULL,
    password VARCHAR(20) NOT NULL,
    position VARCHAR(20) NOT NULL
);
--drop table staff;
CREATE TABLE staff(
    ID NUMBER NOT NULL, 
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    email VARCHAR(50) PRIMARY KEY NOT NULL,
    phone VARCHAR(20) NOT NULL,
    password VARCHAR(20) NOT NULL,
    position VARCHAR(20) NOT NULL,
    FOREIGN KEY(email) REFERENCES employee(email)
);
--drop table mechanic CASCADE CONSTRAINTS;
CREATE TABLE mechanic(
    ID NUMBER NOT NULL, 
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    email VARCHAR(50) PRIMARY KEY NOT NULL,
    phone VARCHAR(20) NOT NULL,
    password VARCHAR(20) NOT NULL,
    position VARCHAR(20) NOT NULL,
    FOREIGN KEY(email) REFERENCES employee(email)

);

drop table clients cascade constraints;
CREATE TABLE clients(
    ID NUMBER NOT NULL PRIMARY KEY, 
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    securityQuestion varchar(20) not null,
    answer varchar(20) not null,
    password VARCHAR(20) NOT NULL,
    position VARCHAR(20) NOT NULL
);


DROP TABLE registered_vehicles;
CREATE TABLE registered_vehicles(
    regID NUMBER NOT NULL PRIMARY KEY,
    clientID NUMBER NOT NULL,
    vehicleType VARCHAR(20) NOT NULL,
    plateNumber VARCHAR(10) NOT NULL,
    issues VARCHAR(150) NOT NULL,
    staffEmail VARCHAR(50) NOT NULL,
    mechanicEmail VARCHAR(50) NOT NULL,
    category VARCHAR(20) NOT NULL,
    status varchar(10) not null,
    FOREIGN KEY(clientID) REFERENCES clients(ID),
    FOREIGN KEY(staffEmail) REFERENCES staff(email),
    FOREIGN KEY(mechanicEmail) REFERENCES mechanic(email)
);
--drop table registrationQ;
CREATE TABLE registrationQ(
    clientID NUMBER NOT NULL,
    vehicleType VARCHAR(20) NOT NULL,
    plateNumber VARCHAR(10) NOT NULL,
    issues VARCHAR2(150) NOT NULL,
    category VARCHAR2(10) NOT NULL,
    status VARCHAR2(10) NOT NULL,
    FOREIGN KEY(clientID) REFERENCES clients(ID)
);

UPDATE clients SET password = 'testpassword' 
WHERE ID = 2 AND password = 'shannonhazzard123';

--drop table pendingClients;
CREATE TABLE pendingClients(
    clientID NUMBER NOT NULL,
    vehicleType VARCHAR(20) NOT NULL,
    plateNumber VARCHAR(10) NOT NULL,
    issues VARCHAR2(150) NOT NULL,
    category VARCHAR2(10) NOT NULL,
    status VARCHAR2(10) NOT NULL,
    FOREIGN KEY(clientID) REFERENCES clients(ID)
);


--drop table jobs;
CREATE TABLE jobs (
    clientID NUMBER NOT NULL,
    mechanicEmail VARCHAR2(50) NOT NULL,
    staffEmail VARCHAR2(50) NOT NULL,
    vehicleType VARCHAR2(20) NOT NULL,
    plateNumber VARCHAR2(10) NOT NULL,
    issue VARCHAR2(150) NOT NULL,
    category VARCHAR2(10) NOT NULL,
    currentStatus VARCHAR(10) NOT NULL,
    FOREIGN KEY(clientID) REFERENCES clients(ID),
    FOREIGN KEY(staffEmail) REFERENCES staff(email),
    FOREIGN KEY(mechanicEmail) REFERENCES mechanic(email)
);
drop table engineRepair;
CREATE TABLE engineRepair (
    clientID NUMBER NOT NULL,
    mechanicEmail VARCHAR2(50) NOT NULL,
    staffEmail VARCHAR2(50) NOT NULL,
    vehicleType VARCHAR2(20) NOT NULL,
    plateNumber VARCHAR2(10) NOT NULL,
    issue VARCHAR2(150) NOT NULL,
    category varchar2(10) not null,
    currentStatus VARCHAR(20) NOT NULL,
    FOREIGN KEY(clientID) REFERENCES clients(ID),
    FOREIGN KEY(staffEmail) REFERENCES staff(email),
    FOREIGN KEY(mechanicEmail) REFERENCES mechanic(email)
);
drop table breakRepair;
CREATE TABLE breakRepair (
    clientID NUMBER NOT NULL,
    mechanicEmail VARCHAR2(50) NOT NULL,
    staffEmail VARCHAR2(50) NOT NULL,
    vehicleType VARCHAR2(20) NOT NULL,
    plateNumber VARCHAR2(10) NOT NULL,
    issue VARCHAR2(150) NOT NULL,
    category varchar2(10) not null,
    currentStatus VARCHAR(20) NOT NULL,
    FOREIGN KEY(clientID) REFERENCES clients(ID),
    FOREIGN KEY(staffEmail) REFERENCES staff(email),
    FOREIGN KEY(mechanicEmail) REFERENCES mechanic(email)
);
drop table clutchRepair;
CREATE TABLE clutchRepair (
    clientID NUMBER NOT NULL,
    mechanicEmail VARCHAR2(50) NOT NULL,
    staffEmail VARCHAR2(50) NOT NULL,
    vehicleType VARCHAR2(20) NOT NULL,
    plateNumber VARCHAR2(10) NOT NULL,
    issue VARCHAR2(150) NOT NULL,
    currentStatus VARCHAR(20) NOT NULL,
        category varchar2(10) not null,
    FOREIGN KEY(clientID) REFERENCES clients(ID),
    FOREIGN KEY(staffEmail) REFERENCES staff(email),
    FOREIGN KEY(mechanicEmail) REFERENCES mechanic(email)
);
DROP TABLE completedJobs;
CREATE TABLE completedJobs(
    clientID NUMBER NOT NULL,
    mechanicEmail VARCHAR(50) NOT NULL,
    vehicleType VARCHAR(20) NOT NULL,
    plateNumber VARCHAR(20) NOT NULL,
    issue VARCHAR(150) NOT NULL,
    mechanicFeedback VARCHAR(200) NOT NULL,
    invoice VARCHAR(500) NOT NULL,--500 BYTES IN CASE OF A LONG INVOICE INK
    status VARCHAR(20) NOT NULL,
    category VARCHAR(10) NOT NULL,
    FEE NUMBER(30) NOT NULL,
    FOREIGN KEY(clientID) REFERENCES clients(ID),
    FOREIGN KEY(mechanicEmail) REFERENCES mechanic(email)
);
--drop table activejobs;
CREATE TABLE activeJobs(
    clientID NUMBER NOT NULL,
    mechanicEmail VARCHAR(50) NOT NULL,
    vehicleType VARCHAR(20) NOT NULL,
    plateNumber VARCHAR(20) NOT NULL,
    issue VARCHAR(150) NOT NULL,
    mechanicFeedback VARCHAR(200) NOT NULL,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY(clientID) REFERENCES clients(ID),
    FOREIGN KEY(mechanicEmail) REFERENCES mechanic(email)
);

create table hourly_schedule(
    work number(5) not null,
    lunch number(5) not null,
    meetings number(5) not null
    );