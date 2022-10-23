ACCEPT payment PROMPT 'Enter payment for incentive: ');
DECLARE
    userPayment NUMBER(7) := &payment;
    incentive NUMBER(6);
BEGIN
    IF userPayment >= 44000 THEN
     incentive := 1800;
     DBMS_OUTPUT.PUT_LINE('incentive = 1800');
        ELSIF userPayment >= 18000 THEN
                incentive := 900;
              DBMS_OUTPUT.PUT_LINE('incentive = 900');
                ELSIF userPayment >= 500 THEN
                    incentive := 300;
                    DBMS_OUTPUT.PUT_LINE('incentive = 300');                                            
    END IF;

END;