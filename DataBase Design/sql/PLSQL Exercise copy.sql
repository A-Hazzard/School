/* 1) Write a PL/SQL program to check whether a number is even or odd. 

    DECLARE
    num number;
    BEGIN
        num :=&n;
        IF(mod(n,2)=0) THEN
        DBMS_OUTPUT.PUT_LINE(n||' is even number');
        ELSE
         DBMS_OUTPUT.PUT_LINE(n||' is odd number');
        END IF;
    END;
===============================================================

    2.  Write a PL/SQL procedure to calculate incentive achieved according to the   specific sale limit. For Example $44,000 pays an incentive of $1,800 
END;
        DECLARE
    sale NUMBER;
    incentive  NUMBER := 0;
  BEGIN 
    sale:=&sale;
    IF sale > 44000 THEN
      incentive := 1800;
    ELSIF sale > 32000 THEN
      incentive := 800;
    ELSE
      incentive := 500;
    END IF;
 DBMS_OUTPUT.NEW_LINE;
    DBMS_OUTPUT.PUT_LINE (
      'Sale: ' || sale || ' Incentive: ' || incentive || '.'
    );
  END;
  ========================================================================

  3. Write a PL/SQL program to check whether a given number is positive, negative or zero. 
  DECLARE
        num NUMBER := &get_num;
    BEGIN
        IF (num < 0) THEN
            DBMS_OUTPUT.PUT_LINE (num || ' is a negative integer');
        ELSIF (num = 0) THEN
            DBMS_OUTPUT.PUT_LINE (num || ' is equal to zero');
        ELSE
            DBMS_OUTPUT.PUT_LINE (num ||' is a positive number');
        END IF;
    END;
  ========================================================================

DECLARE
    temp1     NUMBER := &input_a_temp;
    t_scale   CHAR := '&input_temp_scale';
    new_temp  NUMBER;
    new_scale CHAR;
  BEGIN
    IF t_scale != 'C'
      AND
      t_scale != 'F' THEN
      dbms_output.Put_line ('The scale you input is not a valid scale');
      new_temp := 0;
      new_scale := 'C';
    ELSE
      IF t_scale = 'C' THEN
        new_temp := ( ( 9 * temp1 ) / 5 ) + 32;
        new_scale := 'F';
      ELSE
        new_temp := ( ( temp1 - 32 ) * 5 ) / 9;
        new_scale := 'C';
      END IF;
    END IF;
    dbms_output.Put_line ('The new temperature in scale '
    ||new_scale
    ||' is: '
    ||new_temp);
  END;
========================================================================

DECLARE
  emp_min_salary NUMBER(6,0);
  emp_max_salary NUMBER(6,0);
  emp_mid_salary NUMBER(6,2);
  tmp_salary     EMPLOYEES.SALARY%TYPE;
  tmp_emp_id     EMPLOYEES.EMPLOYEE_ID%TYPE := 167;
  tmp_emp_name	 EMPLOYEES.FIRST_NAME%TYPE;
BEGIN

  SELECT min_salary,
         max_salary
  INTO emp_min_salary,
       emp_max_salary
  FROM JOBS
  WHERE JOB_ID = (SELECT JOB_ID
                 FROM EMPLOYEES
                 WHERE EMPLOYEE_ID = tmp_emp_id);
 
  -- calculate mid-range
  emp_mid_salary := (emp_min_salary + emp_max_salary) / 2;
  -- get salary of the given employee
  SELECT salary,first_name
  INTO tmp_salary,tmp_emp_name
  FROM employees
  WHERE employee_id = tmp_emp_id;
 
  -- update salary 
  
  IF tmp_salary < emp_mid_salary THEN
    UPDATE employees
    SET salary = emp_mid_salary
    WHERE employee_id = tmp_emp_id;
  ELSE
    UPDATE employees
    SET salary = salary + salary * 8 /100
    WHERE employee_id = tmp_emp_id;
  END IF;
   --display message
  IF tmp_salary > emp_mid_salary THEN
    DBMS_OUTPUT.PUT_LINE('The employee '||tmp_emp_name||' ID ' || TO_CHAR(tmp_emp_id) ||
                         ' works in salary ' || TO_CHAR(tmp_salary) ||
                         ' which is higher than mid-range of salary ' || TO_CHAR(emp_mid_salary));
  ELSIF tmp_salary < emp_mid_salary THEN
    DBMS_OUTPUT.PUT_LINE('The employee '||tmp_emp_name||' ID ' || TO_CHAR(tmp_emp_id) ||
                         ' works in salary ' || TO_CHAR(tmp_salary) ||
                         ' which is lower than mid-range of salary ' || TO_CHAR(emp_mid_salary));
 
  ELSE
    DBMS_OUTPUT.PUT_LINE('The employee '||tmp_emp_name||' ID ' || TO_CHAR(tmp_emp_id) ||
                         ' works in salary ' || TO_CHAR(tmp_salary) ||
                         ' which is equal to the mid-range of salary ' || TO_CHAR(emp_mid_salary));
  END IF;
END;

*/


