CREATE TABLE regions (
	region_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	region_name VARCHAR2 (25) DEFAULT NULL
);

CREATE TABLE countries (
	country_id CHAR (2) PRIMARY KEY,
	country_name VARCHAR2 (40) DEFAULT NULL,
	region_id NUMBER NOT NULL,
	FOREIGN KEY (region_id) REFERENCES regions (region_id) ON DELETE CASCADE
);

CREATE TABLE locations (
	location_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	street_address VARCHAR2 (40) DEFAULT NULL,
	postal_code VARCHAR2 (12) DEFAULT NULL,
	city VARCHAR2 (30) NOT NULL,
	state_province VARCHAR2 (25) DEFAULT NULL,
	country_id CHAR (2) NOT NULL,
	FOREIGN KEY (country_id) REFERENCES countries (country_id) ON DELETE CASCADE
);

CREATE TABLE jobs (
	job_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	job_title VARCHAR2 (35) NOT NULL,
	min_salary NUMBER (8, 2) DEFAULT NULL,
	max_salary NUMBER (8, 2) DEFAULT NULL
);

CREATE TABLE departments (
	department_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	department_name VARCHAR2 (30) NOT NULL,
	location_id NUMBER DEFAULT NULL,
	FOREIGN KEY (location_id) REFERENCES locations (location_id) ON DELETE CASCADE
);

CREATE TABLE employees (
	employee_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	first_name VARCHAR2 (20) DEFAULT NULL,
	last_name VARCHAR2 (25) NOT NULL,
	email VARCHAR2 (100) NOT NULL,
	phone_number VARCHAR2 (20) DEFAULT NULL,
	hire_date DATE NOT NULL,
	job_id NUMBER NOT NULL,
	salary NUMBER (8, 2) NOT NULL,
	manager_id NUMBER DEFAULT NULL,
	department_id NUMBER DEFAULT NULL,
	FOREIGN KEY (job_id) REFERENCES jobs (job_id) ON DELETE CASCADE,
	FOREIGN KEY (department_id) REFERENCES departments (department_id) ON DELETE CASCADE,
	FOREIGN KEY (manager_id) REFERENCES employees (employee_id)
);

CREATE TABLE dependents (
	dependent_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	first_name VARCHAR2 (50) NOT NULL,
	last_name VARCHAR2 (50) NOT NULL,
	relationship VARCHAR2 (25) NOT NULL,
	employee_id NUMBER NOT NULL,
	FOREIGN KEY (employee_id) REFERENCES employees (employee_id) ON DELETE CASCADE
);


DECLARE 
    CURSOR JOBSTART IS SELECT JOB_ID, JOB_TITLE FROM JOBS;
    D_NAME EMPLOYEES.FIRST_NAME%TYPE;
BEGIN
    FOR JOBRECORD IN JOBSTART
        LOOP
            SELECT FIRST_NAME INTO D_NAME
            FROM EMPLOYEES
            WHERE  HIRE_DATE = (SELECT MIN(HIRE_DATE) FROM EMPLOYEES WHERE JOB_ID = JOBRECORD.JOB_ID)
            AND JOB_ID = JOBRECORD.JOB_ID;
            DBMS_OUTPUT.PUT_LINE(JOBRECORD.JOB_TITLE || ' - ' ||  D_NAME);
        END LOOP;
END;

DECLARE
    CURSOR EMPCUR IS SELECT EMPLOYEE_ID, FIRST_NAME FROM EMPLOYEES;
BEGIN
    FOR EMPRECORD IN EMPCUR
        LOOP
            IF EMPCUR%ROWCOUNT > 4 THEN
                DBMS_OUTPUT.PUT_LINE(EMPRECORD.FIRST_NAME);
                EXIT WHEN EMPCUR%ROWCOUNT > 10;
            END IF;
        END LOOP;
END;
