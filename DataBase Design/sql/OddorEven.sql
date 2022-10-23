ACCEPT number PROMPT 'Enter a number: ';
DECLARE
    userNumber NUMBER := &number;
BEGIN
    IF (mod(userNumber,2)) = 0 THEN
        DBMS_OUTPUT.PUT_LINE(userNumber || ' is an even number ');
    ELSE
        DBMS_OUTPUT.PUT_LINE(userNumber || ' is an odd number ');
    END IF;
END;