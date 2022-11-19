drop sequence employeeID;
drop table employee;

CREATE SEQUENCE clientID
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE SEQUENCE employeeID
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE TABLE clients(
ID NUMBER NOT NULL PRIMARY KEY,
firstName VARCHAR(20) NOT NULL,
lastName VARCHAR(20) NOT NULL,
email VARCHAR(50) NOT NULL,
phone VARCHAR(15) NOT NULL,
password VARCHAR(20) NOT NULL,
position VARCHAR(20) NOT NULL
);


CREATE TABLE employee(
    ID NUMBER NOT NULL PRIMARY KEY,
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    password VARCHAR(20) NOT NULL,
    position VARCHAR(20) NOT NULL
);

INSERT INTO employee values(employeeID.nextval, 'Winston', 'Fields', 'winston.fields@admin.autoserve.com', '+1 (868) 632-5987', 'winstonfields', 'admin');

select * from employee;
select * from clients;
drop table clients;
drop sequence clientID;