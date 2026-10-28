/* 2. CREATE A USER-DEFINED EXCEPTION lOW SALARY AND 
RAISE IT WHEN AN EMLYEES SALARY IS BELOW A SPECIFIED 
AMAUNT
*/

SET SERVEROUTPUT ON;
DECLARE 
V_sal EMP%TYPE
low_salary EXCEPTION
v_limit := 20000;

BEGIN
V_sal := emp&salary;

IF v_sal < v_limit THEN 
RAISE low_salary;

ELSE
DBMS_OUTPUT.PUT_LINE('salary is exceptable');
END IF;

EXCEPTION
WHEN low_salary THEN
DBMS_OUTPUT.PUT_LINE('Error: salary is below the specified amaunt);
END;
/

