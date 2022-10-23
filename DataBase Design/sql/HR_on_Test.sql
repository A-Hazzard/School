DECLARE
   l_width NUMBER(5):=5;
   l_length NUMBER(5):=10;
   
     BEGIN
    CASE l_length
        WHEN 10 THEN
            DBMS_OUTPUT.PUT_LINE('This length is ten.');
        WHEN 20 THEN
            DBMS_OUTPUT.PUT_LINE('The length is twenty.');
        WHEN 30 THEN
            DBMS_OUTPUT.PUT_LINE('The length is thirdy');
        ELSE
            DBMS_OUTPUT.PUT_LINE('The length is another value');
    END CASE;
END;