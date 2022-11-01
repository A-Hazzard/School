ACCEPT number PROMPT 'Enter a number: ';
DECLARE
    userNumber NUMBER := &number;
    positive BOOLEAN;
    negative BOOLEAN;
BEGIN
    if userNumber >= 0 THEN
        positive := TRUE;
        DBMS_OUTPUT.PUT_LINE(userNumber || ' is a positive number');
    else
        DBMS_OUTPUT.PUT_LINE(userNumber || ' is a negative number');
    end if;
END;