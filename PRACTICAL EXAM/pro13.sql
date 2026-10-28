/*13. CREATE A STORED FUNCTION THAT ACCEPTS AN 
EMPLOYESS'S SALARY AND RETURNS THE BONUS AMAUNT.*/

SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION calculate_bonus
(
    p_salary IN NUMBER
)
RETURN NUMBER
IS
    v_bonus NUMBER;
BEGIN
    v_bonus := p_salary * 0.10;
    RETURN v_bonus;
END;
/

DECLARE
    v_result NUMBER;
BEGIN
    v_result := calculate_bonus(&salary);
    DBMS_OUTPUT.PUT_LINE('Bonus Amount = ' || v_result);
END;
/