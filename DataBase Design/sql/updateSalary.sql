ACCEPT salary PROMPT 'Enter salary: ';
DECLARE
    empSalary NUMBER(7):= &salary;
    midRangeSalary NUMBER := 5000;
    updatedSalary NUMBER;   
    udpatedMidRangeSalary NUMBER;
BEGIN
    --DISPLAY UPDATED SALARY IF IT EXCEEDS MIDRANGE
    IF (empSalary > midRangeSalary) THEN
        updatedSalary := (empSalary * (8/100)) + empSalary;   
        DBMS_OUTPUT.PUT_LINE('We have udpated your salary to $' || updatedSalary);
    END IF;
    
    --DISPLAY UPDATED MID RANGE IF IT EXCEEDS MIDRANGE
    IF(empSalary < midRangeSalary) THEN
        udpatedMidRangeSalary := (midRangeSalary * (8 / 100)) + midRangeSalary;
        DBMS_OUTPUT.PUT_LINE('We have updated the Mid Range Salary to $' || udpatedMidRangeSalary || 
        ' since your salary is below mid ');
     ELSIF(empSalary = midRangeSalary) THEN
        udpatedMidRangeSalary := (midRangeSalary * (8 / 100)) + midRangeSalary;
         DBMS_OUTPUT.PUT_LINE('We have updated the Mid Range Salary to $' || udpatedMidRangeSalary || 
         ' since your salary is mid ');
    END IF;
    

END;