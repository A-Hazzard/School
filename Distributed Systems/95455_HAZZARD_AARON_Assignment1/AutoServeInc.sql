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

--INSERT INTO employee values(1,'Winston', 'Fields', 'winston.fields@admin.autoserve.com', '623-4567', 'admin', 'Admin');
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
--drop table mechanic;
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

--drop table clients;
CREATE TABLE clients(
   ID NUMBER NOT NULL, 
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    email VARCHAR(50) PRIMARY KEY NOT NULL,
    phone VARCHAR(20) NOT NULL,
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
    jobCategory VARCHAR(20) NOT NULL,
    FOREIGN KEY(clientID) REFERENCES clients(ID),
    FOREIGN KEY(staffEmail) REFERENCES staff(email),
    FOREIGN KEY(mechanicEmail) REFERENCES mechanic(email)
);

drop table registrationQ;
CREATE TABLE registrationQ(
    clientID NUMBER NOT NULL,
    vehicleType VARCHAR(20) NOT NULL,
    plateNumber VARCHAR(10) NOT NULL,
    issues VARCHAR2(150) NOT NULL,
    FOREIGN KEY(clientID) REFERENCES clients(ID)
);


drop table job;
select * from job;
CREATE TABLE jobs (
    clientID NUMBER NOT NULL,
    mechanicEmail VARCHAR2(50) NOT NULL,
    staffEmail VARCHAR2(50) NOT NULL,
    vehicleType VARCHAR2(20) NOT NULL,
    plateNumber VARCHAR2(10) NOT NULL,
    issue VARCHAR2(150) NOT NULL,
    jobDescripton VARCHAR(30) NOT NULL,
    contactEmail VARCHAR(50) NOT NULL,
    contactPhone VARCHAR(20) NOT NULL,
    cuurentStatus VARCHAR(10) NOT NULL,
    FOREIGN KEY(clientID) REFERENCES clients(ID),
    FOREIGN KEY(staffEmail) REFERENCES staff(email),
    FOREIGN KEY(mechanicEmail) REFERENCES mechanic(email),
    FOREIGN KEY(plateNumber) REFERENCES vehicle(plateNumber)
);
--drop table vehicle;
CREATE TABLE VEHICLE(
    plateNumber VARCHAR(10) NOT NULL PRIMARY KEY,
    vehicleType VARCHAR(20) NOT NULL,
    clientID NUMBER NOT NULL,
    FOREIGN KEY(clientID) REFERENCES clients(ID)
);
