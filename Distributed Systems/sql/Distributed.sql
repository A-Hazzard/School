/*
01 Create Account
Create accounts for HR schema
Run this as either SYS or SYSTEM.
*/


/*
Set the pluggable database if you're running this on Oracle v12 or later.
*/
ALTER SESSION SET CONTAINER = XEPDB1;

/*
Drop the HR account and all objects to reset.
Then, create the user and give it the permissions.
*/
DROP USER  CASCADE;

CREATE USER prog2015 IDENTIFIED BY prog2015;

ALTER USER prog2015 DEFAULT TABLESPACE users QUOTA UNLIMITED ON users;

ALTER USER prog2015 TEMPORARY TABLESPACE TEMP;

GRANT CONNECT TO prog2015;

GRANT CREATE SESSION, CREATE VIEW, CREATE TABLE, ALTER SESSION, CREATE SEQUENCE TO prog2015;
GRANT CREATE SYNONYM, CREATE DATABASE LINK, RESOURCE, UNLIMITED TABLESPACE TO prog2015;