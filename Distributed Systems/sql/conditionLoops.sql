DECLARE
    loop_counter NUMBER(3) := 0;
    forloop_counter NUMBER(3);
    whileloop_counter NUMBER(3) := 0;
    limitLoop NUMBER(3):= 20;
BEGIN
--Regular loop
    LOOP

        DBMS_OUTPUT.PUT_LINE('Loops...' || loop_counter);
                loop_counter := loop_counter + 1;
        IF(loop_counter > 10) THEN
            EXIT;
        END IF;
    END LOOP;

--FOR LOOP
    FOR forloop_counter IN 0..5 LOOP
        DBMS_OUTPUT.PUT_LINE('For looping...'|| forloop_counter);
        END LOOP;
        
--WHILE LOOP
    WHILE (whileloop_counter != limitLoop) LOOP
        whileloop_counter := whileloop_counter + 1;
        DBMS_OUTPUT.PUT_LINE('While looping...' || whileloop_counter);
    END LOOP;
END;