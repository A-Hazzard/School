CREATE TABLE AutoServeLogin(
    email VARCHAR(40) PRIMARY KEY,
    fName VARCHAR(20),
    lName VARCHAR(20),
    pwd VARCHAR(20),
    phone VARCHAR(16)
);

SELECT * FROM autoservelogin;
DROP TABLE autoservelogin;
INSERT INTO autoservelogin VALUES('aaronhazzard2018@gmail.com', 'Aaron','Hazzard','password123','+1(868)761-8373');