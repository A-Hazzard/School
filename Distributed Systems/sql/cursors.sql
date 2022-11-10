CREATE TABLE person(
fname VARCHAR2(5)
);

DECLARE
total_rows NUMBER(10);
BEGIN 
INSERT INTO person(fname)
VALUES('John');
total_rows:=sql%rowcount;
DBMS_OUTPUT.PUT_LINE('Total number of rows inpacted: ' || total_rows);
END;

BEGIN
UPDATE person
SET fname ='Susan'
WHERE fname = 'John';
DBMS_OUTPUT.PUT_LINE('Total number of rows impacted: ' || sql%rowcount);
END;

BEGIN
UPDATE person
SET fname ='Susan'
WHERE fname = 'John';
IF(sql%found) THEN
DBMS_OUTPUT.PUT_LINE('Total number of rows impacted: ' || sql%rowcount);
ELSE 
DBMS_OUTPUT.PUT_LINE('Rows not updated.');
END IF;
END;


BEGIN
UPDATE person
SET fname ='John'
WHERE fname = 'Susan';
DBMS_OUTPUT.PUT_LINE('Total number of rows impacted: ' || sql%rowcount);
END;

BEGIN
UPDATE person
SET fname ='Susan'
WHERE fname = 'John';
IF(sql%found) THEN
DBMS_OUTPUT.PUT_LINE('Total number of rows impacted: ' || sql%rowcount);
ELSE 
DBMS_OUTPUT.PUT_LINE('Rows not updated.');
END IF;

DECLARE 
fname VARCHAR2(50);
BEGIN
SELECT fname
INTO fname
FROM person;
DBMS_OUTPUT.PUT_LINE('The name is' || fname);
END;

DECLARE
    fname VARCHAR2(50);
    CURSOR c_person IS
    SELECT fname FROM person;
BEGIN
OPEN c_person;
FETCH c_person INTO fname;
dbms_output.put_line('Name is:' || fname);
CLOSE c_person;
END;

DECLARE
    fname VARCHAR2(50);
    CURSOR c_person IS 
    SELECT fname  FROM person;
BEGIN
OPEN c_person;
LOOP
FETCH c_person INTO fname;
EXIT WHEN c_person%notfound;
dbms_output.put_line('Name is:' || fname);
END LOOP;
CLOSE c_person;
END;


SELECT * FROM person;