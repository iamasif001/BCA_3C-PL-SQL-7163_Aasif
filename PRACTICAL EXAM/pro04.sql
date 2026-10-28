/*4. CREATE A FUNCTION THAT ACCEPTS MONTHLY SALARY AND 
RETURNS ANUAL SALARY.*/

SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION annual_salary
(p_monthly_salary IN NUMBER)
RETURN NUMBER
IS
    v_annual_salary NUMBER;
BEGIN
    v_annual_salary := p_monthly_salary * 12;
    RETURN v_annual_salary;
END;
/

DECLARE
    v_result NUMBER;
BEGIN
    v_result := annual_salary(&monthly_salary);
    DBMS_OUTPUT.PUT_LINE('Annual Salary = ' || v_result);
END;
/
