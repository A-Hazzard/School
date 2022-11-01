/*FORMULA TO CONVERT FROM Fahrenheit to Celsius
C = ( (F - 32) * 5) / 9
*/
ACCEPT f PROMPT 'Enter Temperature in Fahrenheit: ';
DECLARE
    fahrenheit NUMBER := &f;
    celsius NUMBER := (fahrenheit - 32) * 5 / 9;
BEGIN
    DBMS_OUTPUT.PUT_LINE(fahrenheit || ' degrees fahrenheit to degrees celsius = ' || celsius || 'C');
END;