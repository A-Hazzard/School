CREATE OR REPLACE PROCEDURE check_rectangle (l_width IN NUMBER, l_length IN NUMBER, l_message OUT VARCHAR2)
AS
BEGIN
    IF (l_width < 0 OR l_length < 0) THEN
       l_message := 'The width or length is negative.';
    ELSIF (l_width = l_length AND l_length > 5) THEN
        l_message := 'This is a big square.';
    ELSIF (l_width = l_length) THEN
        l_message := 'This is a square.';
    ELSE 
        l_message := 'This is a rectangle.';
    END IF;
END check_rectangle;

DECLARE
    l_output_message VARCHAR2(100);
BEGIN
    check_rectangle(10, 5, l_output_message);
    INSERT INTO message_output(message_val) VALUES (l_output_message);
END;


SELECT * 
FROM message_output;

CREATE OR REPLACE FUNCTION shape_area(l_width IN NUMBER, l_length IN NUMBER)
RETURN NUMBER
AS 
BEGIN
    RETURN l_width * l_length;
END;

BEGIN 
    DBMS_OUTPUT.PUT_LINE(shape_area(5,4));
END;



