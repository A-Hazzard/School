/*
01 Create Account
Create accounts for AutoServe schema
Run this as either SYS or SYSTEM.
*/


/*
Set the pluggable database if you're running this on Oracle v12 or later.
*/
ALTER SESSION SET CONTAINER = XEPDB1;

/*
Drop the AutoServe account and all objects to reset.
Then, create the user and give it the permissions.
*/
DROP USER AutoServe CASCADE;

CREATE USER AutoServe IDENTIFIED BY AutoServepass;

ALTER USER AutoServe DEFAULT TABLESPACE users QUOTA UNLIMITED ON users;

ALTER USER AutoServe TEMPORARY TABLESPACE TEMP;

GRANT CONNECT TO AutoServe;

GRANT CREATE SESSION, CREATE VIEW, CREATE TABLE, ALTER SESSION, CREATE SEQUENCE TO AutoServe;
GRANT CREATE SYNONYM, CREATE DATABASE LINK, RESOURCE, UNLIMITED TABLESPACE TO AutoServe;
